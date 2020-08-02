package com.newlecture.web.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.newlecture.web.controller.MainListController;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/main/free/income")
public class FreeIncome extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws NullPointerException, ServletException, IOException {
		String sessionId=(String) request.getSession().getAttribute("sessionId");
		response.setContentType("text/html; charset=UTF-8");
//		if(sessionId!=null) {
			String getId = request.getParameter("id");
			String getId_="";
			System.out.println("id : "+getId);
			if(getId!=null && !getId.equals("")) {
				 getId_=getId;
				 System.out.println("getId_ : "+getId_);
			}
			
			FreeService service=new FreeService();
			List<Notice> getNotice =service.getFree(getId_);
//			for(int i=0; i<getNotice.size(); i++) {
//				System.out.println("file : "+getNotice.get(i).getFile());
//			}
			request.setAttribute("getNotice", getNotice);
			request.getRequestDispatcher("/view2/FreeUpdate.jsp").forward(request,response);
//
//		}
//		else {
//			  PrintWriter out = response.getWriter();
//			  out.println("<script>alert('access deny');</script>");
//				
//			  response.sendRedirect("/main/notice");
//			  }

	}	
}


		

			

	
		
		
		
	

