package com.nhom8.entities;

import java.time.LocalDate;
import java.util.*;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.nhom8.entities.Post;

@Entity
@Table(name ="tbl_Comment")
public class Comment extends BaseEntity{

	@Column(name="content")
	private String content;
	
	@Column(name ="create_date")
	private LocalDate dateTime;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "idPost")
	private Post post;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "idUser")
	private User user;	

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public LocalDate getDateTime() {
		return dateTime;
	}

	public void setDateTime(LocalDate dateTime) {
		this.dateTime = dateTime;
	}

	public Post getPost() {
		return post;
	}

	public void setPost(Post post) {
		this.post = post;
	}



	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	
}
