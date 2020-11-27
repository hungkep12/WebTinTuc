package com.nhom8.entities;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_admin")
public class Admin extends BaseEntity{

	@Column(name= "email",nullable = false)
	private String email;
	
	@Column(name = "image", nullable = true)
	private String image;
	
	@Column(name = "pass", nullable = false)
	private String pass;
	
	@Column(name = "fullname",nullable = false)
	private String fullName;
	
	@Column(name ="stt",nullable = false)
	private Boolean stt;
	
	@Column(name= "position",nullable = false)
	private String position;
	
	@Column(name= "descri",nullable = false)
	private String descri;
	
	@Column(name= "phone",nullable = false)
	private String phone;
	
	@Column(name= "dob",nullable = false)
	private Date dob;
	
	@Column(name= "address",nullable = false)
	private String address;
	
	@OneToMany(mappedBy = "admin", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	private List<Post> post = new ArrayList<Post>();

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

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public Boolean getStt() {
		return stt;
	}

	public void setStt(Boolean stt) {
		this.stt = stt;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getDescri() {
		return descri;
	}

	public void setDescri(String descri) {
		this.descri = descri;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public List<Post> getPost() {
		return post;
	}

	public void setPost(List<Post> post) {
		this.post = post;
	}

}
