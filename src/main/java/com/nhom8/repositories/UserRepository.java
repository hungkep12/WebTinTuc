package com.nhom8.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.nhom8.entities.User;

public interface UserRepository extends JpaRepository<User, Integer>{

}
