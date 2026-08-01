package com.example.myapplication.ui.cutting;

import android.os.Bundle;
import android.widget.ArrayAdapter;
import android.widget.Toast;


import androidx.appcompat.app.AppCompatActivity;

import com.example.myapplication.databinding.ActivityDayWiseCuttingEntryBinding;
import com.example.myapplication.model.response.CuttingPlanResponse;
import com.example.myapplication.repository.CuttingRepository;

import java.util.List;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class DayWiseCuttingEntryActivity extends AppCompatActivity {



    private ActivityDayWiseCuttingEntryBinding binding;
    private CuttingRepository cuttingRepository;

    private List<CuttingPlanResponse> cuttingPlans;
    private ArrayAdapter<CuttingPlanResponse> adapter;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        binding = ActivityDayWiseCuttingEntryBinding.inflate(getLayoutInflater());
        setContentView(binding.getRoot());

        cuttingRepository = new CuttingRepository(this);

        loadPendingPlans();
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


}