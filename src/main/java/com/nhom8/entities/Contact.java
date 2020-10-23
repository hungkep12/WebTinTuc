package com.nhom8.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Lob;
import javax.persistence.Table;

@Entity
@Table(name ="tbl_contact")
public class Contact extends BaseEntity{
	@Column(name ="fullname")
	private String fullName;
	
	@Column(name ="email")
	private String email;
	
	@Lob
	@Column(name ="Content", nullable = false, columnDefinition = "text" )
	private String content;

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
	
}
