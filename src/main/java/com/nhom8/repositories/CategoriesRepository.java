package com.nhom8.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.nhom8.entities.Categories;

public interface CategoriesRepository extends JpaRepository<Categories, Integer>{
	@Query("SELECT e FROM Categories e WHERE e.name =?1")
	List<Categories> findNameCategory(String name);
}
