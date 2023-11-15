package com.webPro03;

public class SignUpDTO {
	private String userId;
	private String password;
	private String phone;
	private String gender;
	
	public SignUpDTO() {
		
	}
	
	public SignUpDTO(String userId, String password, String phone, String gender) {
		super();
		this.userId = userId;
		this.password = password;
		this.phone = phone;
		this.gender = gender;
	}



	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
}
