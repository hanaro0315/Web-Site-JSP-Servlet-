package com.newlecture.web.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class NoticeService {
	
	
	//main page 6개 공지사항출력
	public List<Notice> getMainNoticeList(){
		String sql2= "select * from(select @rownum:=@rownum+1 as rownum,n.* from (\r\n" + 
				"select * from notice group by title) n, (select @rownum:=0) tmp order by idx desc) b where rownum limit 6;";
		
		String url="jdbc:mysql://t1faker.cafe24.com/t1faker?serverTimezone=Asia/Seoul";
		Connection conn=null;
		List<Notice> list = new ArrayList<>();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection(url,"t1faker","schcqre!");
			Statement st = conn.createStatement();
			ResultSet rs= st.executeQuery(sql2); 
			
			while(rs.next()) {
				int idx = rs.getInt("rownum");
				String title=rs.getString("title");
				String name= rs.getString("name");
				String file=rs.getString("file");
				String dateTime = rs.getString("askTime").substring(0,10);
				
				String textArea=rs.getString("textArea");
				Notice notice = new Notice(
						idx,
						title,
						name,
						dateTime,
						file,
						textArea
						);
				
				list.add(notice);
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
	
	
	// 기본적인 리스트의 나열
	public List<Notice> getNoticeList() {
		return getNoticeList("title","",1);
		
	}
	
	// 페이지 클릭할때의 리스트의 나열
	public List<Notice> getNoticeList(int page) {
		return getNoticeList("title","",page);
		
	}
	
	
	
	// 내용 추가
	public void insertNoticeList(String title,String file,String text, String name) {
		String sql="insert into notice(title,file,textArea,name) values(?,?,?,?)";
		String url="jdbc:mysql://t1faker.cafe24.com/t1faker?serverTimezone=Asia/Seoul";
		Connection conn=null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection(url,"t1faker","schcqre!");
			PreparedStatement st = conn.prepareStatement(sql);
			st.setString(1, title);
			st.setString(2, file);
			st.setString(3, text);
			st.setString(4,  name);
			st.executeUpdate();

		}
		catch(SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
	
	}
	
	//내용 업데이트
	public void updateNoticeList(String title,String file,String text, String lastTitle) {
		System.out.println("세개짜리");
		String sql="update notice set title=?, file=?, textArea=? where title=?";
		String url="jdbc:mysql://t1faker.cafe24.com/t1faker?serverTimezone=Asia/Seoul";
		System.out.println("last : "+lastTitle+"now : "+title);
		Connection conn=null;
		System.out.println("query start");

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection(url,"t1faker","schcqre!");
			
			PreparedStatement st = conn.prepareStatement(sql);
			st.setString(1, title);
			st.setString(2, file);
			st.setString(3, text);
			st.setString(4, lastTitle);
			st.executeUpdate();
		
			System.out.println("query active");
		 
		}
		catch(SQLException | ClassNotFoundException e) {
		

			e.printStackTrace();
		}

	
	}
	
	public void updateNoticeList(String title,String text, String lastTitle) 
	{
		System.out.println("세개짜리");
		updateNoticeList(title,"", text, lastTitle);
	}
	
	
	// 내용 삭제 
	public void deleteNoticeList(String id) {
		String sql="delete from notice where title=?";
		String url="jdbc:mysql://t1faker.cafe24.com/t1faker?serverTimezone=Asia/Seoul";
		Connection conn=null;
		Notice notice = new Notice();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection(url,"t1faker","schcqre!");
			PreparedStatement st = conn.prepareStatement(sql);
			st.setString(1, id);
			st.executeUpdate();
		}
		catch(SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	
	// 검색된 후에 리스트의 나열
	public List<Notice> getNoticeList(String field, String query, int page) {
//		String sql="select @rownum:=@rownum+1 as rownum,n.* from notice n, "
//				+ "(select @rownum:=?) tmp where "+field+" like ? order by idx desc limit 10";
//		
		String sql1= "select * from(select @rownum:=@rownum+1 as rownum,n.* from notice n, (select @rownum:=0) tmp where "+field+" like ? order by idx desc) b "
				+ "where rownum between ? and ?";
		String sql2="select * from(select @rownum:=@rownum+1 as rownum,n.* from (select * from notice group by title) n, "
				+ "(select @rownum:=0) tmp where "+field+" like ? order by idx desc) b where rownum between ? and ?";
		
		String url="jdbc:mysql://t1faker.cafe24.com/t1faker?serverTimezone=Asia/Seoul";
		Connection conn=null;
		List<Notice> list = new ArrayList<>();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection(url,"t1faker","schcqre!");
			PreparedStatement st = conn.prepareStatement(sql2);
			st.setString(1,"%"+query+"%");
			st.setInt(2,(page-1)*10+1);
			st.setInt(3,(page-1)*10+10);
			ResultSet rs= st.executeQuery(); 
			
			while(rs.next()) {
				int idx = rs.getInt("rownum");
				String title=rs.getString("title");
				String name= rs.getString("name");

				String dateTime= rs.getString("askTime").substring(0,10);
				String file=rs.getString("file");
				String textArea=rs.getString("textArea");
				Notice notice = new Notice(
						idx,
						title,
						name,
						dateTime,
						file,
						textArea
						);
				
				list.add(notice);
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
	
	// 기본적인 레코드
	public int getNoticeCount() {
		
		
		return getNoticeCount("title","");
		
	}
	
	// 검색결과 레코드의 수 
	public int getNoticeCount(String field, String query) {

		int count=0;
		String sql="select count(*) count from notice where "+field+" like ? ";
		String url="jdbc:mysql://t1faker.cafe24.com/t1faker?serverTimezone=Asia/Seoul";
		Connection conn=null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection(url,"t1faker","schcqre!");
			PreparedStatement st = conn.prepareStatement(sql);
			st.setString(1,"%"+query+"%");
			ResultSet rs= st.executeQuery(); 
			if(rs.next()) {
				count = rs.getInt("count");
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
	
	//Detail 화면의 내용출력
	public List<Notice> getNotice(String id){
		String sql="SELECT * FROM notice WHERE title=? order by idx desc";
		System.out.println(sql);
//		String sql2 = "select * from(select @rownum:=@rownum+1 as rownum,n.* from (select * from notice group by title) n, (select @rownum:=0) tmp order by idx desc) b where rownum=?";
		String url="jdbc:mysql://t1faker.cafe24.com/t1faker?serverTimezone=Asia/Seoul";
		Notice notice = null;
		Connection conn=null;
		String rename=id;

		List<Notice> list = new ArrayList<>();


		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection(url,"t1faker","schcqre!");
			PreparedStatement st = conn.prepareStatement(sql);
			System.out.println("rename :"+rename);
			st.setString(1, rename);
			ResultSet rs= st.executeQuery(); 
						
			while(rs.next()) {
				int idx = rs.getInt("idx");
				String title=rs.getString("title");
				String name= rs.getString("name");
				String dateTime= rs.getString("askTime").substring(0,10);
				String file=rs.getString("file");
				String textArea=rs.getString("textArea");
				
				notice = new Notice(
						idx,
						title,
						name,
						dateTime,
						file,
						textArea
						);
				
				list.add(notice);
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
	
	//Detail 화면의 이전 목록 제목
	public Notice getPrevNotice(int id) {
		String sql="SELECT * FROM notice WHERE idx=?";
		String url="jdbc:mysql://t1faker.cafe24.com/t1faker?serverTimezone=Asia/Seoul";
		Notice notice = null;
		Connection conn=null;
		

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection(url,"t1faker","schcqre!");
			PreparedStatement st = conn.prepareStatement(sql);
			st.setInt(1,id-1);
			ResultSet rs= st.executeQuery(); 
			
			if(rs.next()) {
				int idx = rs.getInt("idx");
				String title=rs.getString("title");
				String name= rs.getString("name");
				String dateTime= rs.getString("askTime").substring(0,10);
				String file=rs.getString("file");
				String textArea=rs.getString("textArea");
				
				notice = new Notice(
						idx,
						title,
						name,
						dateTime,
						file,
						textArea
						);
				
				
			}
			rs.close();
			st.close();
			conn.close();
		} 
		catch(SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		return notice;
		
	}
	
	//Detail 화면의 다음 목록 제목
	public Notice getNextNotice(int id) {
		String sql="SELECT * FROM notice WHERE idx= ?";
		String url="jdbc:mysql://t1faker.cafe24.com/t1faker?serverTimezone=Asia/Seoul";
		Notice notice = null;
		Connection conn=null;
		

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection(url,"t1faker","schcqre!");
			PreparedStatement st = conn.prepareStatement(sql);
			st.setInt(1,id+1);
			ResultSet rs= st.executeQuery(); 
			
			if(rs.next()) {
				int idx = rs.getInt("idx");
				String title=rs.getString("title");
				String name= rs.getString("name");
				String dateTime= rs.getString("askTime").substring(0,10);
				String file=rs.getString("file");
				String textArea=rs.getString("textArea");
				
				notice = new Notice(
						idx,
						title,
						name,
						dateTime,
						file,
						textArea
						);		
				
			}
			rs.close();
			st.close();
			conn.close();
		} 
		catch(SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		return notice;
	}

}
