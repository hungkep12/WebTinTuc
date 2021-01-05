package com.nhom8.Service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nhom8.entities.Admin;
import com.nhom8.entities.Contact;
import com.nhom8.repositories.AdminRepository;

@Service
public class AdminService {
	@PersistenceContext
	protected EntityManager entityManager;

	@Autowired
	AdminRepository adminRepository;

	@Transactional
	@Modifying
	@SuppressWarnings("unchecked")
	public void Update(Admin admin, int id, String sql) {
		/*
		 * Query query =
		 * entityManager.createNativeQuery("SELECT *FROM tbl_user where email = ?",
		 * User.class).setParameter(1, user.getEmail()); if(query.getResultList().size()
		 * > 0) { return false; }
		 */

		entityManager.createNativeQuery(
				"Update tbl_admin set address=?, descri=?, dob=?, email=?, fullname=?, image=?, pass=?, phone=?, position=?,stt=? where id=? ")
				.setParameter(1, admin.getAddress()).setParameter(2, admin.getDescri()).setParameter(3, admin.getDob())
				.setParameter(4, admin.getEmail()).setParameter(5, admin.getFullName())
				.setParameter(6, admin.getImage()).setParameter(7, admin.getPass()).setParameter(8, admin.getPhone())
				.setParameter(9, admin.getPosition()).setParameter(10, admin.getStt()).setParameter(11, admin.getId())
				.executeUpdate();

	}

	@Transactional
	@Modifying
	@SuppressWarnings("unchecked")
	public int Count(Admin admin, int id) {
		int cout = 0;
		Query query = entityManager
				.createNativeQuery("SELECT COUNT(id) as Tong FROM tbl_post where author = ?", Admin.class)
				.setParameter(1, id);

		/* cout = (int) query.getSingleResult().hashCode(); */
		return cout;
	}

	@SuppressWarnings("unchecked")
	public boolean countContact() {
		Query query = entityManager.createNativeQuery("SELECT * FROM tbl_contact where stt = false", Contact.class);
		if (query.getResultList().size() > 0) {
			return true;
		}
		return false;
	}
	
	@SuppressWarnings("unchecked")
	public List<Contact> findAll() {
		Query query = entityManager.createNativeQuery("SELECT * FROM tbl_contact where stt = false", Contact.class);
		return query.getResultList();
	}

}
