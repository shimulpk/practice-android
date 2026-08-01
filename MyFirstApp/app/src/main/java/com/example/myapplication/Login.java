package com.example.myapplication;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.Toast;

import androidx.activity.EdgeToEdge;
import androidx.appcompat.app.AppCompatActivity;

import com.example.myapplication.databinding.ActivityLoginBinding;
import com.example.myapplication.model.request.LoginRequest;
import com.example.myapplication.model.response.LoginResponse;
import com.example.myapplication.repository.AuthRepository;
import com.example.myapplication.session.SessionManager;
import com.example.myapplication.ui.cutting.CuttingHomeActivity;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class Login extends AppCompatActivity {

    private ActivityLoginBinding binding;

    private AuthRepository authRepository;

    private SessionManager sessionManager;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        EdgeToEdge.enable(this);
        binding = ActivityLoginBinding.inflate(getLayoutInflater());

        setContentView(binding.getRoot());

        init();

        binding.btnLogin.setOnClickListener(v -> login());

    }

    private void init() {



        authRepository = new AuthRepository(this);
        sessionManager = new SessionManager(this);

    }


    private void login() {

        String email = binding.email.getText().toString().trim();
        String password = binding.password.getText().toString().trim();

        if (TextUtils.isEmpty(email)) {
            binding.email.setError("Email Required");
            return;
        }

        if (TextUtils.isEmpty(password)) {
            binding.password.setError("Password Required");
            return;
        }

        binding.progressBar.setVisibility(View.VISIBLE);
        binding.btnLogin.setEnabled(false);

        LoginRequest request = new LoginRequest();

        request.setEmail(email);
        request.setPassword(password);

        authRepository.login(request, new Callback<LoginResponse>() {

            @Override
            public void onResponse(Call<LoginResponse> call,
                                   Response<LoginResponse> response) {

                binding.progressBar.setVisibility(View.GONE);
                binding.btnLogin.setEnabled(true);

                if (!response.isSuccessful()) {

                    Toast.makeText(Login.this,
                            "Invalid Email or Password",
                            Toast.LENGTH_SHORT).show();
                    return;
                }

                LoginResponse login = response.body();

                System.out.println(login);

                if (login == null) {
                    Toast.makeText(Login.this,
                            "Login Failed",
                            Toast.LENGTH_SHORT).show();
                    return;
                }

                // Save Token
                sessionManager.saveToken(login.getToken());

                // Save User
                sessionManager.saveUser(login);

                Intent intent = new Intent(Login.this, CuttingHomeActivity.class);
                intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TASK);
                startActivity(intent);



            }




            @Override
            public void onFailure(Call<LoginResponse> call,
                                  Throwable t) {

                binding.progressBar.setVisibility(View.GONE);
                binding.btnLogin.setEnabled(true);

                Toast.makeText(Login.this,
                        t.getMessage(),
                        Toast.LENGTH_LONG).show();

            }
        });

    }



    }