package com.nhom8.Service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nhom8.entities.Post;
import com.nhom8.repositories.PostRepository;

@Service
public class searchService {

@PersistenceContext protected EntityManager entityManager;
	
	@Autowired
	PostRepository postRepository;
	
	@SuppressWarnings("unchecked")
	public List<Post> findByTitleLike(String title){
		String sql="SELECT * FROM tbl_post WHERE LOWER(title) like '%"+title+"%'";
		Query query = entityManager.createNativeQuery(sql, Post.class);
		return query.getResultList();
	}
}
