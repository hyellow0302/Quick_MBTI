package com.webPro03;

import java.sql.Date;

public class PostDTO {
	private int seq;
	private String title;
	private String content;
	private String userId;
	private Date date;
	
	
	public PostDTO() {
		
	}
	public PostDTO(int seq, String title, String userId, String content, Date date) {
		super();
		this.seq = seq;
		this.title = title;
		this.userId = userId;
		this.content = content;
		this.date = date;
	}
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
}
