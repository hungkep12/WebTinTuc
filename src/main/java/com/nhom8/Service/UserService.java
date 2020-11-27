package com.nhom8.Service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nhom8.entities.User;
import com.nhom8.repositories.UserRepository;

@Service
public class UserService {
	@PersistenceContext protected EntityManager entityManager;
	
	@Autowired
	UserRepository userRepository;
	
	@SuppressWarnings("unchecked")
	public List<User> findAll() {
		String sql="SELECT * from tbl_user";
		Query query = entityManager.createNativeQuery(sql, User.class);
		return query.getResultList();
	}
	public int findIdByEmail(String email, String pass) {
		String sql="SELECT id from tbl_user WHERE email like '%"+email+"%' and pass like '%"+pass+"%'";
		Query query = entityManager.createNativeQuery(sql, User.class);
		return query.getFirstResult();
	}
	public int findAllById(int id) {
		String sql="SELECT * from tbl_user WHERE id ="+id;
		Query query = entityManager.createNativeQuery(sql, User.class);
		return query.getFirstResult();
	}
	@Transactional
	@Modifying
	public int updateStatusForId(Boolean status, int id) {
		String sql="UPDATE tbl_user SET status = "+status+" WHERE id ="+id;
		Query query = entityManager.createNativeQuery(sql, User.class);
		return query.executeUpdate();
	}
	@Transactional
	@Modifying
	public boolean Insert(User user) {
		Query query = entityManager.createNativeQuery("SELECT *FROM tbl_user where email = ?", User.class).setParameter(1, user.getEmail());
		if(query.getResultList().size() > 0) {
			return false;
		}
		
		else {
			entityManager.createNativeQuery("Insert into tbl_user(email,image,pass,status,username) VALUES(?,?,?,?,?)")
			.setParameter(1, user.getEmail()).setParameter(2, user.getImage()).setParameter(3, user.getPass())
			.setParameter(4, user.getStt()).setParameter(5, user.getUserName()).executeUpdate();
			 return true;
		}
	}
	
	@Transactional
	@Modifying
	public void updateUser(String name,String email, String pass, Boolean status,String image, int id) {
		String sql ="UPDATE tbl_user SET username = "+name +", pass = "+pass+", status ="+status+",image="+ image+" WHERE id ="+id;
		Query query = entityManager.createNativeQuery(sql);
	}
	
}
