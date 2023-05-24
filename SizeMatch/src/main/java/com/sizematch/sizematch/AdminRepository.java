package com.sizematch.sizematch.models;

import com.sizematch.sizematch.models.data.Admin;

import org.springframework.data.jpa.repository.JpaRepository;

public interface AdminRepository extends JpaRepository<Admin, Integer> {
    Admin findByUsername(String username);    
}
