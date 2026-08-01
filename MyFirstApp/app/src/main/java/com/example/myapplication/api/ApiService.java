package com.example.myapplication.api;

import com.example.myapplication.model.request.LoginRequest;
import com.example.myapplication.model.response.CuttingDashboardResponse;
import com.example.myapplication.model.response.CuttingPlanResponse;
import com.example.myapplication.model.response.LoginResponse;

import java.util.List;

import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;

public interface ApiService {

    @POST("api/auth/login")
    Call<LoginResponse> login(@Body LoginRequest request);

    @GET("api/dashboard/cutting")
    Call<CuttingDashboardResponse> getCuttingDashboard();


    @GET("api/cutting-plans/pending")
    Call<List<CuttingPlanResponse>> getPendingCuttingPlans();



}
