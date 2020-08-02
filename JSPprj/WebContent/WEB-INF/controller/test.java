package com.newlecture.web.controller;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;

public class test {

	
	  Connection conn=null;;
	   public test() {
	      // TODO Auto-generated constructor stub
	   }
	   
	   public String aa(){
	    
	          
	         try {
	        	 Class.forName("com.mysql.jdbc.Driver");
	            conn=DriverManager.getConnection("jdbc:mysql://t1faker.cafe24.com/t1faker?serverTimezone=Asia/Seoul","t1faker","schcqre!");//자신의 id와 database암호
	         } 
	         catch (SQLException|ClassNotFoundException e) {
	            return "JDBC Connection : Failure" + e.getMessage() +"schcqre!";
	             
	         }
	         return "JDBC Connection :Success";
	         
	      
	   }

	
	
	
	
}
