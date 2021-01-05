package com.nhom8.entities;

import java.util.Date;

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
	@Column(name ="content", nullable = false, columnDefinition = "text" )
	private String content;
	
	@Column(name ="stt")
	private Boolean stt;
	
	@Column(name = "create_date")
	private Date createdDate;
	
	@Column(name = "feedback",columnDefinition = "text" )
	private String feedback;
	
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

	public Date getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}

	public Boolean getStt() {
		return stt;
	}

	public void setStt(Boolean stt) {
		this.stt = stt;
	}

	public String getFeedback() {
		return feedback;
	}

	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}
	
}
