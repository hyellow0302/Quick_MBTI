package com.webPro03;

import java.sql.*;
import java.util.*;
import com.webPro03.*;

public class UserInfo {
	
	private Connection con;
	
	private static final String username = "root";
	private static final String password = "web1234";
	private static final String url = "jdbc:mysql://localhost:3306/web?characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false";
	
	public UserInfo() {
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
	
	public UserDTO signIn(Map<String, String> map) throws SQLException { 
        
		String sql = "select * from userInfo where id = ? and password = ?;";
        PreparedStatement pstmt = null;
        UserDTO re = new UserDTO();
        try {
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, map.get("id"));
            pstmt.setString(2, map.get("password"));
            ResultSet rs = pstmt.executeQuery();
 
            if (rs.next()) {
            	System.out.println(rs.toString());
            	re.setId(rs.getString("id"));
            	re.setPassword(rs.getString("password"));
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
        return re;
    }
	
	public UserDTO signInWithId(Map<String, String> map) throws SQLException { 
        
		String sql = "select * from userInfo where id = ?;";
        PreparedStatement pstmt = null;
        UserDTO re = new UserDTO();
        try {
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, map.get("id"));
            ResultSet rs = pstmt.executeQuery();
 
            if (rs.next()) {
            	System.out.println(rs.toString());
            	re.setId(rs.getString("id"));
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
        return re;
    }
	
	public void setMBTI(Map<String, String> map) { 
		String sql = "update userInfo set mbti=? where id=?";
        PreparedStatement pstmt = null;
        try {
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, (String) map.get("MBTI"));
            pstmt.setString(2, (String) map.get("userId"));
            pstmt.executeUpdate();
            System.out.println(map.get("userId")+"\n");
            System.out.println(map.get("MBTI")+"\n");
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

	public void signUp(Map<String, Object> map) {
		String sql = "insert into userInfo(id,password,gender,phone) values(?,?,?,?);";
        PreparedStatement pstmt = null;
        try {
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, (String) map.get("userId"));
            pstmt.setString(2, (String) map.get("password"));
            pstmt.setInt(3, (int)map.get("gender"));
            pstmt.setString(4, (String) map.get("phone"));
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

	public String getMBTI(String userId) {
		String sql = "select mbti from userInfo where id = ?;";
        PreparedStatement pstmt = null;
        String mbti = null;
        try {
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, userId);
            ResultSet rs = pstmt.executeQuery();
 
            if (rs.next()) {
            	System.out.println("mbti="+rs.getString("mbti"));
            	mbti = rs.getString("mbti");
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
        return mbti;
	}
}
