package com.webPro03;

import com.webPro03.*;
import java.sql.*;
import java.util.*;

public class UserBean {
	
	private String userId;
	private String password;
	private String phone;
	private String mbti;
	private int gender;
	
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getMbti() {
		return mbti;
	}
	public void setMbti(String mbti) {
		this.mbti = mbti;
	}
	public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}
	public UserBean() {
		super();
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String id) {
		this.userId = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public void clear() {
		setUserId(null);
		setPassword(null);
	}
	
	public UserDTO signIn() throws SQLException {
		UserInfo userInfo = new UserInfo();
		
		Map<String,String> signInData = new HashMap<>();
		signInData.put("id", this.userId);
		signInData.put("password", this.password);
		
		return userInfo.signIn(signInData);
	}
	
	public UserDTO signInWithId() throws SQLException {
		UserInfo userInfo = new UserInfo();
		
		Map<String,String> signInData = new HashMap<>();
		signInData.put("id", this.userId);
		
		return userInfo.signInWithId(signInData);
	}
	
	public void signUp(Map<String, Object> map) throws SQLException {
		UserInfo userInfo = new UserInfo();
		
		userInfo.signUp(map);
	}
	

	public void setMBTI(Map<String, String> map) { 
		UserInfo userInfo = new UserInfo();
		
		userInfo.setMBTI(map);
    }
	
	public String userMBTI(String userId) throws SQLException {
		UserInfo userInfo = new UserInfo();
		
		return userInfo.getMBTI(userId);
	}
	
}
