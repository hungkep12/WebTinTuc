package com.nhom8.Service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nhom8.entities.Comment;
import com.nhom8.repositories.CommentRepository;
@Service
public class CommentService {
	@PersistenceContext protected EntityManager entityManager;
	
	@Autowired
	CommentRepository commentRepository;
	
	@SuppressWarnings("unchecked")
	public List<Comment> findCommentById(int id){
		
		String sql = "SELECT * FROM tbl_comment WHERE idPost = "+ id;
		Query query = entityManager.createNativeQuery(sql, Comment.class);
		return query.getResultList();
	}
	public List<Comment> findAll() {
		String sql = "SELECT *FROM tbl_comment ";
		Query query = entityManager.createNativeQuery(sql, Comment.class);
		return query.getResultList();
	}
}
