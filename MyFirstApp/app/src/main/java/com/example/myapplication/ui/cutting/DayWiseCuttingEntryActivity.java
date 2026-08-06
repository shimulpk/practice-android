package com.example.myapplication.ui.cutting;

import android.app.DatePickerDialog;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Toast;


import androidx.appcompat.app.AppCompatActivity;

import com.example.myapplication.databinding.ActivityDayWiseCuttingEntryBinding;
import com.example.myapplication.model.request.DayWiseCuttingProductionRequest;
import com.example.myapplication.model.request.DayWiseCuttingProductionUpdateRequest;
import com.example.myapplication.model.response.CuttingPlanProgressResponse;
import com.example.myapplication.model.response.CuttingPlanResponse;
import com.example.myapplication.model.response.DayWiseCuttingProductionResponse;
import com.example.myapplication.repository.CuttingRepository;

import java.text.SimpleDateFormat;

import java.util.Calendar;
import java.util.List;
import java.util.Locale;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class DayWiseCuttingEntryActivity extends AppCompatActivity {



    private ActivityDayWiseCuttingEntryBinding binding;
    private CuttingRepository cuttingRepository;

    private List<CuttingPlanResponse> cuttingPlans;
    private ArrayAdapter<CuttingPlanResponse> adapter;

    private final Calendar calendar = Calendar.getInstance();

    private boolean isEdit = false;

    private Long productionId = null;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        binding = ActivityDayWiseCuttingEntryBinding.inflate(getLayoutInflater());
        setContentView(binding.getRoot());

        cuttingRepository = new CuttingRepository(this);

        isEdit = getIntent().getBooleanExtra(
                "isEdit",
                false
        );

        productionId = getIntent().getLongExtra(
                "productionId",
                0
        );

        loadPendingPlans();

        if (isEdit) {

            binding.spinnerCuttingPlan.setEnabled(false);

            binding.etProductionDate.setEnabled(false);

        } else {

            setCurrentDate();

        }

        setupDatePicker();

        if (isEdit) {

            binding.btnSave.setText("Update Entry");

        }

        binding.btnSave.setOnClickListener(v -> saveEntry());
    }


    private void loadPendingPlans() {
        cuttingRepository.getPendingCuttingPlans(

                new Callback<List<CuttingPlanResponse>>() {


                    @Override
                    public void onResponse(Call<List<CuttingPlanResponse>> call, Response<List<CuttingPlanResponse>> response) {

                        if (!response.isSuccessful() || response.body() == null) {

                            Toast.makeText(
                                    DayWiseCuttingEntryActivity.this,
                                    "No Pending Plan Found",
                                    Toast.LENGTH_SHORT
                            ).show();

                            return;
                        }

                        cuttingPlans = response.body();



                        adapter = new ArrayAdapter<>(
                                DayWiseCuttingEntryActivity.this,
                                android.R.layout.simple_spinner_dropdown_item,
                                cuttingPlans
                        );

                        binding.spinnerCuttingPlan.setAdapter(adapter);

                        binding.spinnerCuttingPlan.setOnItemSelectedListener(
                                new AdapterView.OnItemSelectedListener() {

                                    @Override
                                    public void onItemSelected(AdapterView<?> parent,
                                                               View view,
                                                               int position,
                                                               long id) {

                                        CuttingPlanResponse selectedPlan = cuttingPlans.get(position);

                                        loadProgress(selectedPlan.getId());

                                    }

                                    @Override
                                    public void onNothingSelected(AdapterView<?> parent) {

                                    }
                                });

                        if (isEdit) {

                            loadProductionDetails();

                        }

                    }

                    @Override
                    public void onFailure(Call<List<CuttingPlanResponse>> call, Throwable t) {

                        Toast.makeText(
                                DayWiseCuttingEntryActivity.this,
                                t.getMessage(),
                                Toast.LENGTH_LONG
                        ).show();

                    }
                });
    };



    private void loadProgress(Long cuttingPlanId) {

        cuttingRepository.getCuttingProgress(
                cuttingPlanId,
                new Callback<CuttingPlanProgressResponse>() {

                    @Override
                    public void onResponse(Call<CuttingPlanProgressResponse> call,
                                           Response<CuttingPlanProgressResponse> response) {

                        if (!response.isSuccessful() || response.body() == null) {

                            Toast.makeText(
                                    DayWiseCuttingEntryActivity.this,
                                    "Progress not found",
                                    Toast.LENGTH_SHORT
                            ).show();

                            return;
                        }

                        CuttingPlanProgressResponse progress = response.body();

                        binding.tvTarget.setText(
                                String.valueOf(progress.getTarget()));

                        binding.tvCutSoFar.setText(
                                String.valueOf(progress.getCutSoFar()));

                        binding.tvRemaining.setText(
                                String.valueOf(progress.getRemaining()));

                        binding.tvProgress.setText(
                                String.format("%.0f%%", progress.getProgress())
                        );

                        binding.progressBar.setProgress(
                                progress.getProgress().intValue()
                        );

                    }

                    @Override
                    public void onFailure(Call<CuttingPlanProgressResponse> call,
                                          Throwable t) {

                        Toast.makeText(
                                DayWiseCuttingEntryActivity.this,
                                t.getMessage(),
                                Toast.LENGTH_LONG
                        ).show();

                    }
                });

    }


    private void setCurrentDate() {

        SimpleDateFormat sdf =
                new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault());

        binding.etProductionDate.setText(
                sdf.format(calendar.getTime())
        );
    }

    private void setupDatePicker() {

        binding.etProductionDate.setOnClickListener(v -> {

            DatePickerDialog dialog =
                    new DatePickerDialog(
                            DayWiseCuttingEntryActivity.this,

                            (view, year, month, dayOfMonth) -> {

                                calendar.set(year, month, dayOfMonth);

                                SimpleDateFormat sdf =
                                        new SimpleDateFormat(
                                                "yyyy-MM-dd",
                                                Locale.getDefault());

                                binding.etProductionDate.setText(
                                        sdf.format(calendar.getTime())
                                );

                            },

                            calendar.get(Calendar.YEAR),
                            calendar.get(Calendar.MONTH),
                            calendar.get(Calendar.DAY_OF_MONTH)

                    );

            dialog.show();

        });

    }


    private void saveEntry() {

        if (cuttingPlans == null || cuttingPlans.isEmpty()) {

            Toast.makeText(
                    this,
                    "No Cutting Plan Found",
                    Toast.LENGTH_SHORT
            ).show();

            return;
        }

        String cutQtyText =
                binding.etTodayCutQty.getText().toString().trim();

        if (cutQtyText.isEmpty()) {

            binding.etTodayCutQty.setError(
                    "Enter Today's Cut Quantity"
            );

            return;
        }

        String rejectQtyText =
                binding.etRejectQty.getText().toString().trim();

        int rejectQty = rejectQtyText.isEmpty()
                ? 0
                : Integer.parseInt(rejectQtyText);

        CuttingPlanResponse selectedPlan =
                (CuttingPlanResponse)
                        binding.spinnerCuttingPlan.getSelectedItem();

        if (isEdit) {

            DayWiseCuttingProductionUpdateRequest request =
                    new DayWiseCuttingProductionUpdateRequest();

            request.setActualCutPieces(
                    Integer.parseInt(cutQtyText)
            );

            request.setRejectPieces(
                    rejectQty
            );

            cuttingRepository.updateDayWiseCuttingProduction(

                    productionId,

                    request,

                    new Callback<DayWiseCuttingProductionResponse>() {

                        @Override
                        public void onResponse(
                                Call<DayWiseCuttingProductionResponse> call,
                                Response<DayWiseCuttingProductionResponse> response) {

                            if (!response.isSuccessful()) {

                                Toast.makeText(
                                        DayWiseCuttingEntryActivity.this,
                                        "Update Failed",
                                        Toast.LENGTH_SHORT
                                ).show();

                                return;
                            }

                            Toast.makeText(
                                    DayWiseCuttingEntryActivity.this,
                                    "Entry Updated Successfully",
                                    Toast.LENGTH_SHORT
                            ).show();

                            finish();

                        }

                        @Override
                        public void onFailure(
                                Call<DayWiseCuttingProductionResponse> call,
                                Throwable t) {

                            Toast.makeText(
                                    DayWiseCuttingEntryActivity.this,
                                    t.getMessage(),
                                    Toast.LENGTH_LONG
                            ).show();

                        }
                    });

        } else {

            DayWiseCuttingProductionRequest request =
                    new DayWiseCuttingProductionRequest();

            request.setCuttingPlanId(
                    selectedPlan.getId()
            );

            request.setDate(
                    binding.etProductionDate
                            .getText()
                            .toString()
            );

            request.setActualCutPieces(
                    Integer.parseInt(cutQtyText)
            );

            request.setRejectPieces(
                    rejectQty
            );

            cuttingRepository.saveDayWiseCuttingProduction(

                    request,

                    new Callback<DayWiseCuttingProductionResponse>() {

                        @Override
                        public void onResponse(
                                Call<DayWiseCuttingProductionResponse> call,
                                Response<DayWiseCuttingProductionResponse> response) {

                            if (!response.isSuccessful()) {

                                if (response.code() == 409) {

                                    Toast.makeText(
                                            DayWiseCuttingEntryActivity.this,
                                            "Today's entry already exists for this cutting plan.",
                                            Toast.LENGTH_LONG
                                    ).show();

                                } else {

                                    Toast.makeText(
                                            DayWiseCuttingEntryActivity.this,
                                            "Error : " + response.code(),
                                            Toast.LENGTH_LONG
                                    ).show();

                                }

                                return;
                            }

                            Toast.makeText(
                                    DayWiseCuttingEntryActivity.this,
                                    "Entry Saved Successfully",
                                    Toast.LENGTH_SHORT
                            ).show();

                            binding.etTodayCutQty.setText("");

                            binding.etRejectQty.setText("");

                            loadProgress(
                                    selectedPlan.getId()
                            );

                            loadPendingPlans();

                        }

                        @Override
                        public void onFailure(
                                Call<DayWiseCuttingProductionResponse> call,
                                Throwable t) {

                            Toast.makeText(
                                    DayWiseCuttingEntryActivity.this,
                                    t.getMessage(),
                                    Toast.LENGTH_LONG
                            ).show();

                        }
                    });

        }

    }


    private void loadProductionDetails() {

        if (!isEdit) {
            return;
        }

        cuttingRepository.getDayWiseCuttingProductionById(

                productionId,

                new Callback<DayWiseCuttingProductionResponse>() {

                    @Override
                    public void onResponse(
                            Call<DayWiseCuttingProductionResponse> call,
                            Response<DayWiseCuttingProductionResponse> response) {

                        if (!response.isSuccessful() || response.body() == null) {

                            Toast.makeText(
                                    DayWiseCuttingEntryActivity.this,
                                    "Failed to load production data",
                                    Toast.LENGTH_SHORT
                            ).show();

                            finish();
                            return;
                        }

                        DayWiseCuttingProductionResponse data = response.body();

                        binding.etProductionDate.setText(
                                data.getDate()
                        );

                        binding.etTodayCutQty.setText(
                                String.valueOf(data.getActualCutPieces())
                        );

                        binding.etRejectQty.setText(
                                String.valueOf(data.getRejectPieces())
                        );

                        // Spinner-এ সঠিক Cutting Plan Select
                        if (cuttingPlans != null && !cuttingPlans.isEmpty()) {

                            for (int i = 0; i < cuttingPlans.size(); i++) {

                                if (cuttingPlans.get(i).getId()
                                        .equals(data.getCuttingPlanId())) {

                                    binding.spinnerCuttingPlan.setSelection(i);

                                    break;
                                }
                            }
                        }

                        // Progress Reload
                        loadProgress(
                                data.getCuttingPlanId()
                        );

                    }

                    @Override
                    public void onFailure(
                            Call<DayWiseCuttingProductionResponse> call,
                            Throwable t) {

                        Toast.makeText(
                                DayWiseCuttingEntryActivity.this,
                                t.getMessage(),
                                Toast.LENGTH_SHORT
                        ).show();

                    }
                });

    }





}