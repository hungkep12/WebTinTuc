package com.nhom8.entities;

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
	private String name;
	
	@Column(name ="create_date")
	private Date dateTime;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "idPost")
	private Post post;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Post getPost() {
		return post;
	}

	public void setPost(Post post) {
		this.post = post;
	}

	public Date getDateTime() {
		return dateTime;
	}

	public void setDateTime(Date dateTime) {
		this.dateTime = dateTime;
	}
	
	
}
