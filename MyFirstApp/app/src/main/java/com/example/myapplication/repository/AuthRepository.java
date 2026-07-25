package com.example.myapplication.repository;

import android.content.Context;

import com.example.myapplication.api.ApiClient;
import com.example.myapplication.api.ApiService;
import com.example.myapplication.model.request.LoginRequest;
import com.example.myapplication.model.response.LoginResponse;

import retrofit2.Call;
import retrofit2.Callback;

public class AuthRepository {

    private final ApiService apiService;

    public AuthRepository(Context context) {
        apiService = ApiClient.getClient(context);
    }

    public void login(LoginRequest request,
                      Callback<LoginResponse> callback) {

        Call<LoginResponse> call = apiService.login(request);

        call.enqueue(callback);
    }
}
