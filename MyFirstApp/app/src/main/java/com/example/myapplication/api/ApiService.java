package com.example.myapplication.api;

import com.example.myapplication.model.request.DayWiseCuttingProductionRequest;
import com.example.myapplication.model.request.DayWiseCuttingProductionUpdateRequest;
import com.example.myapplication.model.request.LoginRequest;
import com.example.myapplication.model.response.CuttingDashboardResponse;
import com.example.myapplication.model.response.CuttingPlanProgressResponse;
import com.example.myapplication.model.response.CuttingPlanResponse;
import com.example.myapplication.model.response.DayWiseCuttingHistoryDetailsResponse;
import com.example.myapplication.model.response.DayWiseCuttingHistoryResponse;
import com.example.myapplication.model.response.DayWiseCuttingHistorySummaryResponse;
import com.example.myapplication.model.response.DayWiseCuttingProductionResponse;
import com.example.myapplication.model.response.LoginResponse;

import java.util.List;

import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.PUT;
import retrofit2.http.Path;
import retrofit2.http.Query;

public interface ApiService {

    @POST("api/auth/login")
    Call<LoginResponse> login(@Body LoginRequest request);

    @GET("api/dashboard/cutting")
    Call<CuttingDashboardResponse> getCuttingDashboard();


    @GET("api/cutting-plans/pending")
    Call<List<CuttingPlanResponse>> getPendingCuttingPlans();


    @GET("api/day-wise-cutting-production/progress/{cuttingPlanId}")
    Call<CuttingPlanProgressResponse> getCuttingProgress(
            @Path("cuttingPlanId") Long cuttingPlanId);



    @POST("api/day-wise-cutting-production")
    Call<DayWiseCuttingProductionResponse> saveDayWiseCuttingProduction(
            @Body DayWiseCuttingProductionRequest request
    );


    @GET("api/day-wise-cutting-production/history")
    Call<List<DayWiseCuttingHistoryResponse>> getDayWiseCuttingHistory(
            @Query("date") String date
    );


    @GET("api/day-wise-cutting-production/history/details")
    Call<List<DayWiseCuttingHistoryDetailsResponse>> getDayWiseCuttingHistoryDetails(

            @Query("cuttingPlanId") Long cuttingPlanId,

            @Query("date") String date

    );

    @PUT("api/day-wise-cutting-production/{id}")
    Call<DayWiseCuttingProductionResponse> updateDayWiseCuttingProduction(

            @Path("id") Long id,

            @Body DayWiseCuttingProductionUpdateRequest request

    );


    @GET("api/day-wise-cutting-production/{id}")
    Call<DayWiseCuttingProductionResponse> getDayWiseCuttingProductionById(
            @Path("id") Long id
    );


    @GET("api/day-wise-cutting-production/history-details-summary")
    Call<DayWiseCuttingHistorySummaryResponse> getHistorySummary(

            @Query("cuttingPlanId") Long cuttingPlanId,

            @Query("date") String date

    );


    @GET("api/cutting-plans")
    Call<List<CuttingPlanResponse>> getAllCuttingPlans();


}
