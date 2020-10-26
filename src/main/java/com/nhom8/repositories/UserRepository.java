package com.nhom8.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.nhom8.entities.User;

public interface UserRepository extends JpaRepository<User, Integer>{
	@Query("select u.id from User u where u.userName = ?1")
	int selectIdByUserName(String username);
	
	@Modifying	
	@Query("update User u set u.status = ?1 where u.id =?2")
	void updateStatusForId(Boolean status, Integer id);
}
