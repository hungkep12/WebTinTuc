package com.nhom8.entities;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_user")
public class User extends BaseEntity{
	
	@Column(name= "email",nullable = false)
	private String email;
	
	@Column(name = "image", nullable = true)
	private String image;
	
	@Column(name = "username", nullable = false)
	private String userName;
	
	@Column(name = "pass", nullable = false)
	private String pass;
	
	@Column(name ="status",nullable = true)
	private Boolean stt;
	
	@OneToMany(mappedBy = "user", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	private List<Comment> comment = new ArrayList<Comment>();

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public Boolean getStt() {
		return stt;
	}

	public void setStt(Boolean stt) {
		this.stt = stt;
	}

	public List<Comment> getComment() {
		return comment;
	}

	public void setComment(List<Comment> comment) {
		this.comment = comment;
	}


}
