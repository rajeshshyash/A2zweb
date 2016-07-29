package com.a2z.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.a2z.domain.UserProfile;

public interface UserProfileRepository extends JpaRepository<UserProfile, Long> {

}
