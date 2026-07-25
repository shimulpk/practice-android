package com.example.myapplication.model.response;

public class LoginResponse {

    private String  token;
    private String  tokenType = "Bearer";

    private Long    userId;
    private String  name;
    private String  email;
    private String  phone;
    private String  role;
}
