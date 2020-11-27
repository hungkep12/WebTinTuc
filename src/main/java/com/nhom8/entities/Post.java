package com.nhom8.entities;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_post")
public class Post extends BaseEntity {
	@Lob
	@Column(name = "title", columnDefinition = "text", nullable = false)
	private String title;

	@Lob // quy định cụ thể chú thích rằng cơ sở dữ liệu nên lưu trữ các tài sản như đối tượng lớn
	@Column(name = "description", nullable = false, columnDefinition = "text")
	private String description;

	@Lob
	@Column(name = "details", nullable = false, columnDefinition = "text")
	private String details;

	@Column(name = "image")
	private String image;

	@Column(name = "status", nullable = true)
	private Boolean status;

	@Column(name = "create_date")
	private Date createdDate;
	
	@Column(name = "view")
	private int view;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "idCategory")
	private Categories category;
	
	@OneToMany(mappedBy = "post", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	private List<Comment> comment = new ArrayList<Comment>();
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "author")
	private Admin admin;

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

	public int getView() {
		return view;
	}

	public void setView(int view) {
		this.view = view;
	}

	public Categories getCategory() {
		return category;
	}

	public void setCategory(Categories category) {
		this.category = category;
	}

	public List<Comment> getComment() {
		return comment;
	}

	public void setComment(List<Comment> comment) {
		this.comment = comment;
	}

	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

}
