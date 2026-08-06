package com.example.myapplication.ui.cutting;

import android.content.Intent;
import android.os.Bundle;
import android.widget.Toast;

import androidx.activity.EdgeToEdge;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.recyclerview.widget.LinearLayoutManager;

import com.example.myapplication.R;
import com.example.myapplication.databinding.ActivityCuttingHistoryDetailsBinding;
import com.example.myapplication.model.response.DayWiseCuttingHistoryDetailsResponse;
import com.example.myapplication.model.response.DayWiseCuttingHistorySummaryResponse;
import com.example.myapplication.repository.CuttingRepository;
import com.example.myapplication.ui.cutting.adapter.CuttingHistoryDetailsAdapter;

import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Locale;

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

        String styleNo = getIntent().getStringExtra("styleNo");

        String planNo = getIntent().getStringExtra("planNo");

        long totalCut = getIntent().getLongExtra("totalCut", 0);

        long totalReject = getIntent().getLongExtra("totalReject", 0);

        long totalEntries = getIntent().getLongExtra("totalEntries", 0);

        repository = new CuttingRepository(this);

        adapter = new CuttingHistoryDetailsAdapter();

        adapter.setOnEditClickListener(item -> {

            Intent intent = new Intent(
                    CuttingHistoryDetailsActivity.this,
                    DayWiseCuttingEntryActivity.class
            );

            intent.putExtra("isEdit", true);
            intent.putExtra("productionId", item.getId());

            startActivity(intent);

        });

        binding.rvDetails.setLayoutManager(new LinearLayoutManager(this));
        binding.rvDetails.setAdapter(adapter);

        binding.tvStyleNo.setText("Style : " + styleNo);

        binding.tvPlanNo.setText("Plan : " + planNo);

        binding.tvDate.setText("Date : " + date);

        binding.tvTotalCut.setText("🎯 Total Cut : " + totalCut + " pcs");

        binding.tvTotalReject.setText("❌ Total Reject : " + totalReject + " pcs");

        binding.tvTotalEntries.setText("📋 Total Entries : " + totalEntries);

        loadSummary();

        loadDetails();
    }

    @Override
    protected void onResume() {
        super.onResume();

        loadSummary();

        loadDetails();
    }


    private void loadSummary() {

        repository.getHistorySummary(

                cuttingPlanId,

                date,

                new Callback<DayWiseCuttingHistorySummaryResponse>() {

                    @Override
                    public void onResponse(
                            Call<DayWiseCuttingHistorySummaryResponse> call,
                            Response<DayWiseCuttingHistorySummaryResponse> response) {

                        if (!response.isSuccessful() || response.body() == null) {
                            return;
                        }

                        DayWiseCuttingHistorySummaryResponse summary = response.body();

                        binding.tvTotalCut.setText(
                                "🎯 Total Cut : " +
                                        summary.getTotalCutPieces() +
                                        " pcs"
                        );

                        binding.tvTotalReject.setText(
                                "❌ Total Reject : " +
                                        summary.getTotalRejectPieces() +
                                        " pcs"
                        );

                        binding.tvTotalEntries.setText(
                                "📋 Total Entries : " +
                                        summary.getTotalEntries()
                        );

                        String lastUpdated = summary.getLastUpdated();

                        if (lastUpdated == null || lastUpdated.isEmpty()) {

                            binding.tvLastUpdated.setText(
                                    "🕒 Last Updated : -"
                            );

                        } else {

                            try {

                                SimpleDateFormat input =
                                        new SimpleDateFormat(
                                                "yyyy-MM-dd'T'HH:mm:ss",
                                                Locale.getDefault()
                                        );

                                SimpleDateFormat output =
                                        new SimpleDateFormat(
                                                "dd MMM yyyy hh:mm a",
                                                Locale.getDefault()
                                        );

                                binding.tvLastUpdated.setText(
                                        "🕒 Last Updated : " +
                                                output.format(input.parse(lastUpdated))
                                );

                            } catch (Exception e) {

                                binding.tvLastUpdated.setText(
                                        "🕒 Last Updated : " + lastUpdated
                                );

                            }

                        }

                    }

                    @Override
                    public void onFailure(
                            Call<DayWiseCuttingHistorySummaryResponse> call,
                            Throwable t) {

                    }
                });

    }



    private void loadDetails() {

        repository.getDayWiseCuttingHistoryDetails(

                cuttingPlanId,

                date,

                new Callback<List<DayWiseCuttingHistoryDetailsResponse>>() {

                    @Override
                    public void onResponse(
                            Call<List<DayWiseCuttingHistoryDetailsResponse>> call,
                            Response<List<DayWiseCuttingHistoryDetailsResponse>> response) {

                        if (!response.isSuccessful() || response.body() == null) {

                            Toast.makeText(
                                    CuttingHistoryDetailsActivity.this,
                                    "Failed to load details",
                                    Toast.LENGTH_SHORT
                            ).show();

                            return;
                        }

                        adapter.setData(response.body());

                        if (!response.body().isEmpty()) {

                            binding.tvLastUpdated.setText(
                                    "🕒 Last Updated : " +
                                            response.body().get(0).getCreatedAt()
                            );
                        }

                    }

                    @Override
                    public void onFailure(
                            Call<List<DayWiseCuttingHistoryDetailsResponse>> call,
                            Throwable t) {

                        Toast.makeText(
                                CuttingHistoryDetailsActivity.this,
                                t.getMessage(),
                                Toast.LENGTH_SHORT
                        ).show();

                    }
                });

    }



}