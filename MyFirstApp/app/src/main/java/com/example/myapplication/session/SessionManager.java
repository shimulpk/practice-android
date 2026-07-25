package com.example.myapplication.session;

import android.content.Context;
import android.content.SharedPreferences;

import com.example.myapplication.model.response.LoginResponse;
import com.google.gson.Gson;

public class SessionManager {

    private static final String PREF_NAME = "garment_pref";

    private static final String TOKEN = "token";
    private static final String USER = "user";


    private SharedPreferences preferences;

    private Gson gson = new Gson();

    public SessionManager(Context context){

        preferences =
                context.getSharedPreferences(PREF_NAME,Context.MODE_PRIVATE);

    }

    //=========================
    // TOKEN
    //=========================

    public void saveToken(String token){

        preferences.edit().putString(TOKEN,token).apply();

    }

    public String getToken(){

        return preferences.getString(TOKEN,null);

    }

    //=========================
    // USER
    //=========================

    public void saveUser(LoginResponse user){

        preferences.edit()
                .putString(USER,gson.toJson(user))
                .apply();

    }

    public LoginResponse getUser(){

        String json=preferences.getString(USER,null);

        if(json==null)
            return null;

        return gson.fromJson(json,LoginResponse.class);

    }





    public boolean isLoggedIn(){

        return getToken()!=null;

    }

    public void logout(){

        preferences.edit().clear().apply();

    }

}
