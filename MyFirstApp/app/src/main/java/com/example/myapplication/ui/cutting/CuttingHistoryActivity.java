package com.example.myapplication.ui.cutting;

import android.app.DatePickerDialog;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Toast;


import androidx.appcompat.app.AppCompatActivity;


import androidx.recyclerview.widget.LinearLayoutManager;


import com.example.myapplication.databinding.ActivityCuttingHistoryBinding;
import com.example.myapplication.model.response.DayWiseCuttingHistoryResponse;
import com.example.myapplication.repository.CuttingRepository;
import com.example.myapplication.ui.cutting.adapter.CuttingHistoryAdapter;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class CuttingHistoryActivity extends AppCompatActivity {

    private ActivityCuttingHistoryBinding binding;

    private CuttingRepository repository;

    private CuttingHistoryAdapter adapter;

    private String selectedDate = null;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        binding = ActivityCuttingHistoryBinding.inflate(getLayoutInflater());
        setContentView(binding.getRoot());

        setSupportActionBar(binding.toolbar);

        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        }

        binding.toolbar.setNavigationOnClickListener(v -> finish());

        repository = new CuttingRepository(this);

        adapter = new CuttingHistoryAdapter();

        binding.rvHistory.setLayoutManager(
                new LinearLayoutManager(this));

        binding.rvHistory.setAdapter(adapter);

        binding.tvFilterDate.setOnClickListener(v -> showDatePicker());

        binding.ivClearFilter.setOnClickListener(v -> {

            selectedDate = null;

            binding.tvFilterDate.setText("All Dates");

            binding.ivClearFilter.setVisibility(View.GONE);

            loadHistory();

        });


        loadHistory();


    }

    private void loadHistory() {

        repository.getDayWiseCuttingHistory(

                selectedDate,

                new Callback<List<DayWiseCuttingHistoryResponse>>() {

                    @Override
                    public void onResponse(
                            Call<List<DayWiseCuttingHistoryResponse>> call,
                            Response<List<DayWiseCuttingHistoryResponse>> response) {

                        if (!response.isSuccessful() || response.body() == null) {

                            String errorMsg = "HTTP " + response.code();

                            try {
                                if (response.errorBody() != null) {
                                    errorMsg += " - " + response.errorBody().string();
                                }
                            } catch (Exception e) {
                                Log.e("CuttingHistory", "Could not read errorBody", e);
                            }

                            Log.e("CuttingHistory", "History load failed: " + errorMsg
                                    + " | date=" + selectedDate);

                            Toast.makeText(
                                    CuttingHistoryActivity.this,
                                    "History load failed: " + errorMsg,
                                    Toast.LENGTH_LONG
                            ).show();

                            binding.tvEmpty.setText(
                                    response.code() == 401 || response.code() == 403
                                            ? "Session/Permission error (" + response.code() + ")"
                                            : "Failed to load history (HTTP " + response.code() + ")"
                            );

                            binding.tvEmpty.setVisibility(View.VISIBLE);
                            binding.rvHistory.setVisibility(View.GONE);

                            return;
                        }

                        List<DayWiseCuttingHistoryResponse> list = response.body();

                        if (list.isEmpty()) {

                            binding.tvEmpty.setText("No History Found");

                            binding.tvEmpty.setVisibility(View.VISIBLE);
                            binding.rvHistory.setVisibility(View.GONE);

                            return;
                        }

                        binding.tvEmpty.setVisibility(View.GONE);
                        binding.rvHistory.setVisibility(View.VISIBLE);

                        adapter.setData(list);
                    }

                    @Override
                    public void onFailure(
                            Call<List<DayWiseCuttingHistoryResponse>> call,
                            Throwable t) {

                        Log.e("CuttingHistory", "Network failure loading history", t);

                        Toast.makeText(
                                CuttingHistoryActivity.this,
                                t.getMessage(),
                                Toast.LENGTH_SHORT
                        ).show();
                    }
                });
    }

    private void showDatePicker() {

        Calendar calendar = Calendar.getInstance();

        DatePickerDialog dialog =
                new DatePickerDialog(

                        this,

                        (view, year, month, dayOfMonth) -> {



                            selectedDate = String.format(
                                    Locale.getDefault(),
                                    "%04d-%02d-%02d",
                                    year,
                                    month + 1,
                                    dayOfMonth
                            );

                            SimpleDateFormat inputFormat =
                                    new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);

                            SimpleDateFormat outputFormat =
                                    new SimpleDateFormat("dd MMM yyyy", Locale.ENGLISH);

                            try {

                                Date date = inputFormat.parse(selectedDate);

                                binding.tvFilterDate.setText(
                                        outputFormat.format(date)
                                );

                            } catch (Exception e) {

                                binding.tvFilterDate.setText(selectedDate);

                            }

                            binding.ivClearFilter.setVisibility(View.VISIBLE);

                            loadHistory();

                        },

                        calendar.get(Calendar.YEAR),
                        calendar.get(Calendar.MONTH),
                        calendar.get(Calendar.DAY_OF_MONTH)

                );

        dialog.show();

    }

}