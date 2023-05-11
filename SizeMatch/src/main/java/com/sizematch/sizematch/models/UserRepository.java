package com.sizematch.sizematch.models;

import org.springframework.data.jpa.repository.JpaRepository;
import com.sizematch.sizematch.models.data.User;

public interface UserRepository extends JpaRepository<User, Integer> {
    User findByUsername(String username);
}
