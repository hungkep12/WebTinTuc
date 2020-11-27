package com.nhom8.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.nhom8.entities.Admin;
@Repository
public interface AdminRepository extends JpaRepository<Admin, Integer>{
	@Query("select u.id from Admin u where u.email = ?1 ")
	Integer selectIdByUserName(String email);
	
	@Query("select u.id from Admin u where u.id = ?1 ")
	int selectByID(int id); 
	
	@Query("select COUNT(u.id) from Post u where u.admin.id = ?1")
	int CountById(int id); 
	
	@Query("select COUNT(u.id) from Admin u ")
	int CountAdminById(); 
	
	@Modifying	
	@Query("update Admin u set u.stt = ?1 where u.id =?2")
	void updateSttForId(Boolean stt, Integer id);
}
