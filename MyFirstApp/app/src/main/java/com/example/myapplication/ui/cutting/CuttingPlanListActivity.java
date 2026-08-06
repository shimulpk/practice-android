package com.example.myapplication.ui.cutting;

import android.os.Bundle;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;

import com.example.myapplication.databinding.ActivityCuttingPlanListBinding;
import com.example.myapplication.model.response.CuttingPlanResponse;
import com.example.myapplication.repository.CuttingRepository;
import com.example.myapplication.ui.cutting.adapter.CuttingPlanAdapter;

import java.util.List;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class CuttingPlanListActivity extends AppCompatActivity {

    private ActivityCuttingPlanListBinding binding;

    private CuttingRepository repository;

    private CuttingPlanAdapter adapter;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        binding = ActivityCuttingPlanListBinding.inflate(getLayoutInflater());
        setContentView(binding.getRoot());

        setSupportActionBar(binding.toolbar);

        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        }

        binding.toolbar.setNavigationOnClickListener(v -> finish());

        repository = new CuttingRepository(this);

        adapter = new CuttingPlanAdapter();

        binding.rvCuttingPlans.setLayoutManager(
                new LinearLayoutManager(this));

        binding.rvCuttingPlans.setAdapter(adapter);

        loadPlans();
    }

    private void loadPlans() {

        repository.getAllCuttingPlans(

                new Callback<List<CuttingPlanResponse>>() {

                    @Override
                    public void onResponse(
                            Call<List<CuttingPlanResponse>> call,
                            Response<List<CuttingPlanResponse>> response) {

                        if (!response.isSuccessful() || response.body() == null) {

                            Toast.makeText(
                                    CuttingPlanListActivity.this,
                                    "Failed to load plans",
                                    Toast.LENGTH_SHORT
                            ).show();

                            return;
                        }

                        adapter.setData(response.body());

                    }

                    @Override
                    public void onFailure(
                            Call<List<CuttingPlanResponse>> call,
                            Throwable t) {

                        Toast.makeText(
                                CuttingPlanListActivity.this,
                                t.getMessage(),
                                Toast.LENGTH_SHORT
                        ).show();

                    }
                });

    }
}