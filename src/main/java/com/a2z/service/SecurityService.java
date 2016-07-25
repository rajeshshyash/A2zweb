package com.a2z.service;

public interface SecurityService {
    String findLoggedInUsername();

    void autologin(String username, String password);
}
