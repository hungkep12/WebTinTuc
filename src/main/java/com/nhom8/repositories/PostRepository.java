package com.nhom8.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.nhom8.entities.Post;

public interface PostRepository extends JpaRepository<Post, Integer>{

}
