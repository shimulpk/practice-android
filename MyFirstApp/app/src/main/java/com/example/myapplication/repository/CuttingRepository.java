package com.example.myapplication.repository;

import android.content.Context;

import com.example.myapplication.api.ApiClient;
import com.example.myapplication.api.ApiService;
import com.example.myapplication.model.response.CuttingDashboardResponse;
import com.example.myapplication.model.response.CuttingPlanResponse;

import java.util.List;

import retrofit2.Callback;


public class CuttingRepository {

    private final ApiService apiService;

    public CuttingRepository(Context context) {
        apiService = ApiClient.getClient(context);
    }

    /**
     * Cutting Dashboard
     */
    public void getDashboard(Callback<CuttingDashboardResponse> callback) {
        apiService.getCuttingDashboard().enqueue(callback);
    }



//    pending cutting plan
    public void getPendingCuttingPlans(
            Callback<List<CuttingPlanResponse>> callback){

        apiService
                .getPendingCuttingPlans()
                .enqueue(callback);

    }
}
