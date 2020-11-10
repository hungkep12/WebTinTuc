package com.nhom8.entities;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_user")
public class User extends BaseEntity{
	
	@Column(name = "username", nullable = false)
	private String userName;
	
	@Column(name = "password", nullable = false)
	private String passWord;
	
	@Column(name = "fullname",nullable = false)
	private String fullName;
	
	@Column(name ="status",nullable = false)
	private Boolean status;
	
	@Column(name= "email",nullable = false)
	private String email;
	
	@OneToMany(mappedBy = "user", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	private List<Comment> Comment = new ArrayList<Comment>();

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassWord() {
		return passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public Boolean getStatus() {
		return status;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public List<Comment> getComment() {
		return Comment;
	}

	public void setComment(List<Comment> comment) {
		Comment = comment;
	}

	
}
