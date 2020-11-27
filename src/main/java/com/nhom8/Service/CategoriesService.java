package com.nhom8.Service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nhom8.entities.Categories;
import com.nhom8.repositories.CategoriesRepository;

@Service
public class CategoriesService {
	@PersistenceContext protected EntityManager entityManager;
	
	@Autowired
	CategoriesRepository categoriesRepository;
	
	@SuppressWarnings("unchecked")
	public List<Categories> findByStatus(Boolean status) {
		String sql = "SELECT * FROM tbl_categories e WHERE e.status = "+ status;
		Query query = entityManager.createNativeQuery(sql, Categories.class);
		return query.getResultList();
	}
	
	public List<Categories> findNameCategory(String name){
		String sql = "SELECT * FROM tbl_categories WHERE name_categories LIKE '%"+ name+"%'";
		Query query = entityManager.createNativeQuery(sql, Categories.class);
		return query.getResultList();
	}
}
