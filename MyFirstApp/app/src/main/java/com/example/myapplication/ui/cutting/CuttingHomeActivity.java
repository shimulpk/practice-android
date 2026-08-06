package com.example.myapplication.ui.cutting;

import android.content.Intent;
import android.os.Bundle;
import android.widget.Toast;


import androidx.appcompat.app.AppCompatActivity;




import com.example.myapplication.Login;

import com.example.myapplication.databinding.ActivityCuttingHomeBinding;
import com.example.myapplication.model.response.CuttingDashboardResponse;
import com.example.myapplication.model.response.LoginResponse;
import com.example.myapplication.repository.CuttingRepository;
import com.example.myapplication.session.SessionManager;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class CuttingHomeActivity extends AppCompatActivity {

    private ActivityCuttingHomeBinding binding;
    private SessionManager sessionManager;

    private CuttingRepository cuttingRepository;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        binding = ActivityCuttingHomeBinding.inflate(getLayoutInflater());
        setContentView(binding.getRoot());

        sessionManager = new SessionManager(this);

        cuttingRepository = new CuttingRepository(this);

        loadUserInfo();
        loadCurrentDate();
        loadDashboard();

        binding.btnLogout.setOnClickListener(v -> logout());

        binding.btnDayWiseEntry.setOnClickListener(v -> {
            Intent intent = new Intent(
                    CuttingHomeActivity.this,
                    DayWiseCuttingEntryActivity.class
            );

            startActivity(intent);
        });


        binding.btnHistory.setOnClickListener(v -> {

            startActivity(
                    new Intent(
                            CuttingHomeActivity.this,
                            CuttingHistoryActivity.class
                    )
            );

        });

        binding.btnPlanList.setOnClickListener(v -> {
            Intent intent = new Intent(
                    CuttingHomeActivity.this,
                    CuttingPlanListActivity.class
            );

            startActivity(intent);
        });
    }

    @Override
    protected void onResume() {
        super.onResume();

        loadDashboard();
    }

    private void loadUserInfo() {

        LoginResponse user = sessionManager.getUser();

        if (user != null) {
            binding.tvWelcome.setText("Welcome, " + user.getName());
        } else {
            binding.tvWelcome.setText("Welcome");
        }
    }


    private void loadCurrentDate() {

        String today = new SimpleDateFormat(
                "dd MMMM yyyy",
                Locale.ENGLISH
        ).format(new Date());

        binding.tvDate.setText(today);
    }


    private void loadDashboard() {
        cuttingRepository.getDashboard(new Callback<CuttingDashboardResponse>() {


            @Override
            public void onResponse(Call<CuttingDashboardResponse> call, Response<CuttingDashboardResponse> response) {

                if (!response.isSuccessful() || response.body() == null) {

                    Toast.makeText(CuttingHomeActivity.this,
                            "Dashboard load failed",
                            Toast.LENGTH_SHORT).show();
                    return;
                }

                CuttingDashboardResponse dashboard = response.body();

                binding.tvTodayCutting.setText(
                        String.valueOf(dashboard.getTodayCutting()));

                binding.tvTodayReject.setText(
                        String.valueOf(dashboard.getTodayReject()));

                binding.tvPendingPlans.setText(
                        String.valueOf(dashboard.getPendingPlans()));

                binding.tvCompletedPlans.setText(
                        String.valueOf(dashboard.getCompletedPlans()));


            }

            @Override
            public void onFailure(Call<CuttingDashboardResponse> call, Throwable t) {

                Toast.makeText(CuttingHomeActivity.this,
                        t.getMessage(),
                        Toast.LENGTH_LONG).show();

            }

        });



    };


    private void logout() {

        sessionManager.logout();

        Intent intent = new Intent(
                CuttingHomeActivity.this,
                Login.class
        );

        intent.setFlags(
                Intent.FLAG_ACTIVITY_NEW_TASK |
                        Intent.FLAG_ACTIVITY_CLEAR_TASK
        );

        startActivity(intent);
        finish();
    }
}