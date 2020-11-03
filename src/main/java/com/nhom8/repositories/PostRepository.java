package com.nhom8.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.nhom8.entities.Post;

public interface PostRepository extends JpaRepository<Post, Integer>{
	@Query("SELECT e.category FROM Post e where e.id =?1")
	Integer findCategoryName(int idPost);
	
	@Query("SELECT e FROM Post e ORDER BY e.id DESC ")
	List<Post> findAll();
	
	@Query("SELECT e FROM Post e ORDER BY e.view DESC ")
	List<Post> findAllByView();
	
	/*@Query("SELECT e FROM Post e ORDER BY RAND() ")
	List<Post> findPostRandom();
*/
	@Query("SELECT e FROM Post e WHERE e.category.name = ?1 ")
	List<Post> findPostByNameCateogry(String nameCategory);
	
	List<Post> findByTitleLike(String title);
}
