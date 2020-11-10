package com.nhom8.dto;

import java.io.Serializable;

public class AjaxResponse implements Serializable{
	private static final long serialVersionUID = 425776080671021969L;
	
	private String message;
	private int statusCode;
	
	public AjaxResponse(String message, int statusCode) {
		super();
		this.message = message;
		this.statusCode = statusCode;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public int getStatusCode() {
		return statusCode;
	}
	public void setStatusCode(int statusCode) {
		this.statusCode = statusCode;
	}
	
}
