package com.nhom8.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.nhom8.entities.Post;
@Transactional
@Repository
public interface PostRepository extends JpaRepository<Post, Integer>{
	@Query("SELECT e.category FROM Post e where e.id =?1")
	Integer findCategoryName(int idPost);
	
	@Query("SELECT e FROM Post e ORDER BY e.id DESC ")
	List<Post> findAll();
	
	@Query("SELECT e FROM Post e ORDER BY e.view DESC ")
	List<Post> findAllByView();
	
	@Query("SELECT e FROM Post e WHERE e.id =?1 ")
	List<Post> findAllById(int id);
	
	/*@Query("SELECT e FROM Post e ORDER BY RAND() ")
	List<Post> findPostRandom();
*/
	@Query("SELECT e FROM Post e WHERE e.category.name = ?1 ")
	List<Post> findPostByNameCateogry(String nameCategory);
	
	@Query("SELECT e.id FROM Post e WHERE e.title Like %?1% ")
	int findIdByTitle(String title);
	
	/*
	 * đánh dấu nó là @Transactional cũng như @Modify, điều này chỉ dẫn Spring rằng nó có thể sửa đổi các bản ghi hiện có.
	 * */
	
	@Modifying
	@Query("UPDATE Post e SET e.view = :view WHERE e.id = :id")
	int updateView(@Param("view") int view, @Param("id") int id);
	
	@Query("SELECT e.view FROM Post e WHERE e.id = ?1")
	int findViewById(int id);
	
	List<Post> findByTitleLike(String title);
}
