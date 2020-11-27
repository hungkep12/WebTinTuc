package com.nhom8.repositories;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.nhom8.entities.User;
@Repository
@Transactional
public interface UserRepository extends JpaRepository<User, Integer>{
	@Query("select u.id from User u where u.userName = ?1 ")
	int selectIdByUserName(String username);
	
	@Modifying	
	@Query("update User u set u.stt = ?1 where u.id =?2")
	void updateSttForId(Boolean stt, Integer id);
	
	@Query("select COUNT(u.id) from User u ")
	int CountUserById(); 	
	
	@Query("select u.id from User u where u.email = ?1 and u.pass =?2")
	Integer selectIdByEmailAndPass(String email, String pass);
}
