package com.a2z.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.a2z.domain.User;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);
}
