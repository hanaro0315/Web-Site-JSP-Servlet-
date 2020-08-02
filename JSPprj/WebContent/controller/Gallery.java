package com.newlecture.web.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class Gallery {
	private int idx;
	private String galleryTitle;
	private String galleryPic;
	
	public Gallery(){
	}
	
	public Gallery(int a, String b, String c) {
		this.idx=a;
		this.galleryTitle=b;
		this.galleryPic=c;
	}
	
	public String getGalleryTitle() {
		return galleryTitle;
	}
	public void setGalleryTitle(String galleryTitle) {
		this.galleryTitle = galleryTitle;
	}
	public String getGalleryPic() {
		return galleryPic;
	}
	public void setGalleryPic(String galleryPic) {
		this.galleryPic = galleryPic;
	}
	
	public int galleryCount(){
		int count = 0;
		String url="jdbc:mysql://t1faker.cafe24.com/t1faker?serverTimezone=Asia/Seoul";
		String sql="select count(*) as count from (select distinct * from gallery) tmps";
		
		Connection conn=null;
		List<Gallery> list = new ArrayList();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection(url,"t1faker","schcqre!");
			Statement st =conn.createStatement();
			ResultSet rs= st.executeQuery(sql); 
			
			if(rs.next()) {
				count=rs.getInt("count");
			}
			rs.close();
			st.close();
			conn.close();
		} 
		catch(SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		return count;
		
	}
	
//	public List<Gallery> getGallery(){
//		return getGallery("title", "");
//	}
	public List<Gallery> getGalleryList(){
	

		return getGalleryList(1);
		
	} 
	
	
	
	public List<Gallery> getGalleryList(int i){
		String url="jdbc:mysql://t1faker.cafe24.com/t1faker?serverTimezone=Asia/Seoul";
		String sql="select x.* "
				+ "from (select @rownum:=@rownum+1 as rownum,g.* from (select gallerytitle, galleryPic from gallery group by gallerytitle order by idx desc) g, (select @rownum:=0) tmp)x "
				+ "where rownum between ? and ?";
		
		Connection conn=null;
		List<Gallery> list = new ArrayList();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection(url,"t1faker","schcqre!");
			PreparedStatement st =conn.prepareStatement(sql);
			st.setInt(1,(i-1)*5+1);
			st.setInt(2,(i-1)*5+6);
			ResultSet rs= st.executeQuery(); 
			
			while(rs.next()) {
				int idx = rs.getInt("rownum");
				String galleryTitle=rs.getString("galleryTitle");
				String galleryPic= rs.getString("galleryPic");
				Gallery gallery = new Gallery(
						idx,
						galleryTitle,
						galleryPic
						);
				list.add(gallery);
			}
			rs.close();
			st.close();
			conn.close();
		} 
		catch(SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		return list;
		
	}
	
	public List<Gallery> getGalleryDetail(String id) {
		String url="jdbc:mysql://t1faker.cafe24.com/t1faker?serverTimezone=Asia/Seoul";
		String sql = "select * from gallery where galleryTitle=? order by idx desc";
		System.out.println("GalleryDetail----------------");
		Connection conn=null;
		List<Gallery> list = new ArrayList();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection(url,"t1faker","schcqre!");
			PreparedStatement st =conn.prepareStatement(sql);
			st.setString(1,id);
			ResultSet rs= st.executeQuery(); 
		
			while(rs.next()) {
				int idx = rs.getInt("idx");
				
				String galleryTitle=rs.getString("galleryTitle");
				String galleryPic= rs.getString("galleryPic");
				System.out.println("Title : "+galleryTitle+" Pic : "+galleryPic);
				Gallery gallery = new Gallery(
						idx,
						galleryTitle,
						galleryPic
						);
				list.add(gallery);
			}
			rs.close();
			st.close();
			conn.close();
		} 
		catch(SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		return list;
		
	};
	
	public void deleteGallery(String title){
		String url="jdbc:mysql://t1faker.cafe24.com/t1faker?serverTimezone=Asia/Seoul";
		String sql="delete * from gallery where title=?";
				
		Connection conn = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection(url,"t1faker","schcqre!");
			PreparedStatement st =conn.prepareStatement(sql);
			st.setString(1, title);
			
		} catch (SQLException | ClassNotFoundException e) {

			e.printStackTrace();
		}
		
		
		
	}
	
	public int setGallery(String title, String pic) {
		String url="jdbc:mysql://t1faker.cafe24.com/t1faker?serverTimezone=Asia/Seoul";
		String sql="insert into gallery (galleryTitle, galleryPic) values(?,?)";
		Connection conn=null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection(url,"t1faker","schcqre!");
			PreparedStatement st =conn.prepareStatement(sql);
			st.setString(1, title);
			st.setString(2, pic);
			return st.executeUpdate();
			
		} 
		catch(SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		return -1;
		
	}


	
	

}
