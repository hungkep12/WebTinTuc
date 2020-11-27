package com.nhom8.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.nhom8.entities.Contact;
@Repository
public interface ContactRepository extends JpaRepository<Contact, Integer> {
	@Query("select u.id from Contact u where u.email = ?1 ")
	int selectIdByUserName(String email);
	
	@Modifying	
	@Query("delete Contact u where u.id =?1")
	void deleteById(Integer id);
	
	@Modifying	
	@Query("delete from Contact ")
	void deleteAll(Integer id);
	
	
	@Modifying	
	@Query("update Contact u set u.stt = ?1 where u.id =?2")
	void updateSttForId(Boolean stt, Integer id);
	
}
