package com.a2z.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.a2z.domain.PhysicalDetails;

public interface UserProfileDetailsRepository extends JpaRepository<PhysicalDetails, Long> {
	
}
