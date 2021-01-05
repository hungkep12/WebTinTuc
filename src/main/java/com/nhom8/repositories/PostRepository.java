package com.nhom8.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.nhom8.entities.Categories;
import com.nhom8.entities.Post;

@Transactional
@Repository
public interface PostRepository extends JpaRepository<Post, Integer> {

	@Modifying(clearAutomatically = true)
	@Query("Update Post set description=?1, details=?2, image=?3, title=?4, category=?5 where id=?6")
	void updatePost(String description, String details, String image, String title, Categories category, int id);

	@Query("SELECT e.id FROM Post e WHERE e.title Like %?1% ")
	int findIdByTitle(String title);

	@Query("SELECT e.view FROM Post e WHERE e.id = ?1")
	int findViewById(int id);

	List<Post> findByTitleIgnoreCase(String title);

	@Query("SELECT e.category FROM Post e where e.id =?1")
	Integer findCategoryName(int idPost);

	@Query("SELECT e FROM Post e ORDER BY e.id DESC")
	List<Post> findAll();

	@Query("select COUNT(u.id) from Post u ")
	int CountPostById();

	@Modifying(clearAutomatically = true)
	@Query("Update Post set description=?1, details=?2, image=?3, title=?4, category=?5, status =?6 where id=?7")
	void updatePost(String description, String details, String image, String title, Categories category, Boolean status,
			int id);

}
