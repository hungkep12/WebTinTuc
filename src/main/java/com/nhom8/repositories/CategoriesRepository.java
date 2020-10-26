package com.nhom8.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.nhom8.entities.Categories;
import com.nhom8.entities.Post;

public interface CategoriesRepository extends JpaRepository<Categories, Integer>{
	@Query("SELECT e FROM Categories e WHERE e.id = ?1")
	List<Categories> findByName(int id);
}
