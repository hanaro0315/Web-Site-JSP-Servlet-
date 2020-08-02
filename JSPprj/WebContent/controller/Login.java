package com.newlecture.web.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.cj.protocol.Resultset;

public class Login {

	public Login() {
	}
	
	
	private String id;
	private String password;
	private String studentId;
	private String name;
	private String email;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getStudentId() {
		return studentId;
	}

	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void SignUp(String studentNumber, String name, String id, String password, String email) {
		
		
		String url="jdbc:mysql://t1faker.cafe24.com/t1faker?serverTimezone=Asia/Seoul";
		String sql = "insert into signUp(studentId, name, id, password, email) values(?,?,?,?,?)";
		Connection conn= null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection(url,"t1faker","schcqre!");
			PreparedStatement st = conn.prepareStatement(sql);
			st.setString(1, studentNumber);
			st.setString(2, name);
			st.setString(3, id);
			st.setString(4, password);
			st.setString(5, email);
			st.executeUpdate();
			

		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public String sessionCheck(String userId) {
		String url="jdbc:mysql://t1faker.cafe24.com/t1faker?serverTimezone=Asia/Seoul";
		String sql = "select name from signUp where id=?";
		Connection conn= null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection(url,"t1faker","schcqre!");
			PreparedStatement st = conn.prepareStatement(sql);
			st.setString(1, userId);
			ResultSet rs = st.executeQuery();
			if(rs.next()) {
				String studentId = rs.getString("name");
				System.out.println("studentId : "+studentId);
				return studentId;
			}

		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
		
	}
	
	public int loginCheck(String userId, String userPw) {
		String url="jdbc:mysql://t1faker.cafe24.com/t1faker?serverTimezone=Asia/Seoul";
		String sql = "select password, studentId from signUp where id=?";
		Connection conn= null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection(url,"t1faker","schcqre!");
			PreparedStatement st = conn.prepareStatement(sql);
			st.setString(1, userId);
			ResultSet rs = st.executeQuery();
			
			if(rs.next()) {
				String userPassword = rs.getString("password");

				if(userPassword.equals(userPw)) {
					System.out.println("OK");
					
					return 1;
				}
				System.out.println(userPassword.equals(userPw));
				System.out.println(userPw);
				System.out.println(userPassword);
				System.out.println("pw가 틀림");
				return 0;
			}
			else {
				System.out.println(userId);
				System.out.println("Id가 존재하지 않습니다");
				return -1;
			}

		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return -2;
	

	}
	

	public String toString() {
		return "Login [id=" + id + ", password=" + password + ", studentId=" + studentId + ", name=" + name + ", email="
				+ email + "]";
	}

}
