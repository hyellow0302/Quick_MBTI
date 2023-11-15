package com.webPro03;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.Instant;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.Map;

public class PostInfo {
private Connection con;
	
	private static final String username = "root";
	private static final String password = "web1234";
	private static final String url = "jdbc:mysql://localhost:3306/web?characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false";
	
	public PostInfo() {
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
			con=DriverManager.getConnection(url, username, password);
			
		}catch(SQLException ex) {
			System.out.println("SQLException"+ex);
		}catch(Exception e) {
			System.out.println("Fail");
			System.out.println("Exception"+e);
		}
    }
	
	public ArrayList<PostDTO> getAllPost() throws SQLException { 
        
		String sql = "select * from postInfo";
        PreparedStatement pstmt = null;
        ArrayList<PostDTO> list = new ArrayList<>();
        try {
            pstmt = con.prepareStatement(sql);
            ResultSet rs = pstmt.executeQuery();
 
            while (rs.next()) {
            	PostDTO post = new PostDTO();
            	post.setUserId(rs.getString("id"));
            	post.setTitle(rs.getString("title"));
            	post.setContent(rs.getString("content"));
            	post.setDate(rs.getDate("date"));

                list.add(post);
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } finally {
            try {
                if (pstmt != null && !pstmt.isClosed())
                    pstmt.close();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        return list;
    }


	public void writePost(PostDTO postDTO) throws ParseException {
		String sql = "insert into postInfo(title, content, id, date) values(?,?,?,?);";
        PreparedStatement pstmt = null;
        try {
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, postDTO.getTitle());
            pstmt.setString(2, postDTO.getContent());
            pstmt.setString(3, postDTO.getUserId());
            
            LocalDateTime now = LocalDateTime.now();
            Date date = java.sql.Date.valueOf(now.toLocalDate());
            
            pstmt.setDate(4, date);
            
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (pstmt != null && !pstmt.isClosed())
                    pstmt.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
	}

	public PostDTO getPost(DetailDTO detailDTO) {
		String sql = "select * from postInfo where seq = ?";
        PreparedStatement pstmt = null;
        PostDTO post = new PostDTO();
        try {
            pstmt = con.prepareStatement(sql);
            pstmt.setInt(1, detailDTO.getSeq());
            ResultSet rs = pstmt.executeQuery();
 
            if (rs.next()) {
            	post.setUserId(rs.getString("id"));
            	post.setTitle(rs.getString("title"));
            	post.setContent(rs.getString("content"));
            	post.setDate(rs.getDate("date"));
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } finally {
            try {
                if (pstmt != null && !pstmt.isClosed())
                    pstmt.close();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        return post;
	}

	public void editPost(PostDTO postDTO) {
		String sql = "update postInfo set title=?, content=? where seq=?";
        PreparedStatement pstmt = null;
        try {
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, postDTO.getTitle());
            pstmt.setString(2, postDTO.getContent());
            pstmt.setInt(3, postDTO.getSeq());
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (pstmt != null && !pstmt.isClosed())
                    pstmt.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
	}

}
