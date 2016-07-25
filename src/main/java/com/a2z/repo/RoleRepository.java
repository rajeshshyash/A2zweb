package com.a2z.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.a2z.domain.Role;

public interface RoleRepository extends JpaRepository<Role, Long>{
}
