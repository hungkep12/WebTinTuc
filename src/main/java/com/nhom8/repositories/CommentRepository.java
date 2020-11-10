package com.nhom8.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.nhom8.entities.Comment;

@Repository
public interface CommentRepository extends JpaRepository<Comment, Integer>{
	@Query("SELECT e FROM Comment e WHERE e.post.id =?1")
	List<Comment> findCommentById(int id);
}
