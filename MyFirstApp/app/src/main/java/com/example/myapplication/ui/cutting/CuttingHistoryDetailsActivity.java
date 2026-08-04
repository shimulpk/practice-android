package com.example.myapplication.ui.cutting;

import android.os.Bundle;

import androidx.activity.EdgeToEdge;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.recyclerview.widget.LinearLayoutManager;

import com.example.myapplication.R;
import com.example.myapplication.databinding.ActivityCuttingHistoryDetailsBinding;
import com.example.myapplication.model.response.DayWiseCuttingHistoryDetailsResponse;
import com.example.myapplication.repository.CuttingRepository;
import com.example.myapplication.ui.cutting.adapter.CuttingHistoryDetailsAdapter;

import java.util.List;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class CuttingHistoryDetailsActivity extends AppCompatActivity {


    private ActivityCuttingHistoryDetailsBinding binding;

    private CuttingRepository repository;

    private CuttingHistoryDetailsAdapter adapter;

    private Long cuttingPlanId;

    private String date;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        binding = ActivityCuttingHistoryDetailsBinding.inflate(getLayoutInflater());

        setContentView(binding.getRoot());

        setSupportActionBar(binding.toolbar);

        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        }

        binding.toolbar.setNavigationOnClickListener(v -> finish());

        cuttingPlanId = getIntent().getLongExtra("cuttingPlanId", 0);

        date = getIntent().getStringExtra("date");


        repository = new CuttingRepository(this);

        adapter = new CuttingHistoryDetailsAdapter();

        binding.rvDetails.setLayoutManager(
                new LinearLayoutManager(this));

        binding.rvDetails.setAdapter(adapter);

        loadDetails();
    }



    private void loadDetails() {

        repository.getDayWiseCuttingHistoryDetails(

                cuttingPlanId,

                date,

                new Callback<List<DayWiseCuttingHistoryDetailsResponse>>() {


                    @Override
                    public void onResponse(Call<List<DayWiseCuttingHistoryDetailsResponse>> call, Response<List<DayWiseCuttingHistoryDetailsResponse>> response) {
                        if (response.isSuccessful() && response.body() != null) {

                            adapter.setData(response.body());
                        }


                    }

                    @Override
                    public void onFailure(Call<List<DayWiseCuttingHistoryDetailsResponse>> call, Throwable t) {

                    }
                });

                }


}