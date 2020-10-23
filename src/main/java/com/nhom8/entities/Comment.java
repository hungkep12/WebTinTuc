package com.nhom8.entities;

import java.util.*;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name ="tbl_Comment")
public class Comment extends BaseEntity{

	@Column(name="content")
	private String name;
	
	@Column(name ="create_date")
	private Date dateTime;
	
	@Column(name="id_post")
	private Integer id;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getDateTime() {
		return dateTime;
	}

	public void setDateTime(Date dateTime) {
		this.dateTime = dateTime;
	}
	
}
