package com.nhom8.entities;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Lob;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_post")
public class Post extends BaseEntity{
	@Lob
	@Column(name = "title", length = 100, nullable = false) 
	private String title;
	
	@Lob//quy định cụ thể chú thích rằng cơ sở dữ liệu nên lưu trữ các tài sản như đối tượng lớn 
	@Column(name = "description", nullable = false, columnDefinition = "text")
	private String description;

	@Lob
	@Column(name = "details", nullable = false, columnDefinition = "text")
	private String details;
	
	@Column(name = "image")
	private String image;

	@Column(name = "status", nullable = true)
	private Boolean status;

	@Column(name = "create_date", nullable = false)
	private Date createdDate;

	@Column(name = "idCategory", length = 11, nullable = false)
	private int idCategory;

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getDetails() {
		return details;
	}

	public void setDetails(String details) {
		this.details = details;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Boolean getStatus() {
		return status;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}

	public Date getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}

	public int getIdCategory() {
		return idCategory;
	}

	public void setIdCategory(int idCategory) {
		this.idCategory = idCategory;
	}

	
	
}
