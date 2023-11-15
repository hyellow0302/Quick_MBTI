package com.webPro03;

import java.sql.SQLException;
import java.text.ParseException;
import java.util.ArrayList;

import com.webPro03.*;

public class PostBean {
	public PostBean() {

	}
	
	public ArrayList<PostDTO> getAllPost() throws SQLException {
		PostInfo postInfo = new PostInfo();
		
		return postInfo.getAllPost();
	}
	
	public PostDTO getPost(DetailDTO detailDTO) throws SQLException {
		PostInfo postInfo = new PostInfo();
		
		return postInfo.getPost(detailDTO);
	}
	
	public void writePost(PostDTO postDTO) throws ParseException {
		PostInfo postInfo = new PostInfo();
		
		postInfo.writePost(postDTO);
	}
	
	public void editPost(PostDTO postDTO) throws ParseException {
		PostInfo postInfo = new PostInfo();
		
		postInfo.editPost(postDTO);
	}
}
