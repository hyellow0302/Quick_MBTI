package com.webPro03;

public class DetailDTO {
	private int seq;
	private String userId;
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public DetailDTO(int seq, String userId) {
		super();
		this.seq = seq;
		this.userId = userId;
	}
	public DetailDTO() {}
}
