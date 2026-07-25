package com.example.myapplication.api;

import com.example.myapplication.model.request.LoginRequest;
import com.example.myapplication.model.response.LoginResponse;

import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.POST;

public interface ApiService {

    @POST("api/auth/login")
    Call<LoginResponse> login(@Body LoginRequest request);



}
