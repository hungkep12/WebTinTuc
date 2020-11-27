package com.nhom8.Service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nhom8.entities.Post;
import com.nhom8.repositories.PostRepository;

@Service
public class PostService {
	@PersistenceContext protected EntityManager entityManager;
	
	@Autowired
	PostRepository postRepository;
	
	@Autowired
	CategoriesService categoriesService;
	
	@SuppressWarnings("unchecked")
	public List<Post> findAll(Boolean status, int limit, int offset){
		String sql = "SELECT * FROM tbl_post WHERE status = "+status+" ORDER BY id DESC LIMIT "+limit+" offset "+ offset+";";
		Query query = entityManager.createNativeQuery(sql, Post.class);
		return query.getResultList();
	}
		
	public List<Post> findPostByNameCategory(String name) {
		String idCategory = "SELECT id FROM tbl_categories WHERE name_categories like '%"+name+"%'";
		String sql = "SELECT * FROM tbl_post where idCategory = ( "+idCategory+")";
		Query query = entityManager.createNativeQuery(sql, Post.class);
		return query.getResultList();
	}
	
	public List<Post> findAllByView(){
		String sql="SELECT * FROM tbl_post ORDER BY view DESC";
		Query query = entityManager.createNativeQuery(sql, Post.class);
		return query.getResultList();
	}
		
	public List<Post> findAllById(int id){
		String sql="SELECT * FROM tbl_post WHERE id = " +id;
		Query query = entityManager.createNativeQuery(sql, Post.class);
		return query.getResultList();
	}
	
	@Transactional
	@Modifying
	public int updateView(int view, int id) {
		String sql="UPDATE tbl_post e SET e.view = "+view +" WHERE e.id = "+id;
		Query query = entityManager.createNativeQuery(sql, Post.class);
		return query.executeUpdate();
	}
	
} 
