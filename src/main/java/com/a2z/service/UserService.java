package com.a2z.service;

import com.a2z.domain.User;

public interface UserService {
    void save(User user);

    User findByUsername(String username);
}
