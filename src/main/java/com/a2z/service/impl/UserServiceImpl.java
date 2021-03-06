package com.a2z.service.impl;

import java.util.HashSet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.a2z.domain.Role;
import com.a2z.domain.User;
import com.a2z.repo.RoleRepository;
import com.a2z.repo.UserRepository;
import com.a2z.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	
	/*
     *  UserRepository for Users Declared all function */
    @Autowired
    private UserRepository userRepository;
    
    
    /*
     *  RoleRepository for define user Role */
    @Autowired
    private RoleRepository roleRepository;
    
    /*
     * BCryptPasswordEncoder for Password Crypt */
    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;
    

    public void save(User user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        user.setRoles(new HashSet<Role>(roleRepository.findAll()));
        userRepository.save(user);
    }

    public User findByUsername(String username) {
        return userRepository.findByUsername(username);
    }
    public User findById(Long id) {
    	return userRepository.findById(id);
    }
    
}
