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

@WebServlet("/main/free")
public class FreeListController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws NullPointerException, ServletException, IOException {
			request.setCharacterEncoding("UTF-8");
//			String sessionId = (String)request.getSession().getAttribute("sessionId");

//		if(sessionId!=null) {
			int count=1;
			FreeService service = new FreeService();
			int getFreeCount = service.getFreeCount();
			if(getFreeCount>10) {
				count=getFreeCount/10;
				request.setAttribute("count", count);
			}
			else {
				request.setAttribute("count", count);
			}
			
			String getTitle = request.getParameter("t");
			String getQuery = request.getParameter("q");
			String getPage = request.getParameter("p");
			
			// Parameter 초기화
			String getTitle_="title";
			String getQuery_="";
			int getPage_=1;
			int prevPage=1;
			int nextPage=2;
			
			//인덱스의 개수 초기화
			
			
			if(getTitle!=null && !getTitle.equals("")) {
				 getTitle_=getTitle;
			}
			if(getQuery!=null && !getQuery.equals("")) {
				 getQuery_=getQuery;
			}
			if(getPage!=null && !getPage.equals("")) {
				 getPage_=Integer.parseInt(getPage);
				 if(getPage_>=count) {
					 getPage_=count;
					 prevPage=getPage_-1;
					 nextPage=count;
				 }
				 else if(getPage_<2)
				 {
					 getPage_=1;
					 prevPage=1;
					 nextPage=2;
				 }
				 else if(2<=getPage_ && getPage_<count) {
					 prevPage=getPage_-1;
					 nextPage=getPage_+1;	 
				 }
			}

			 request.setAttribute("prev", prevPage);
			 request.setAttribute("next", nextPage);
			 List<Notice> list = service.getFreeList(getTitle_, getQuery_, getPage_);
		
				request.setAttribute("list", list);
				
				request.getRequestDispatcher("/view2/FreeNotice.jsp").forward(request,response);
		}	
	
}


		

			

	
		
		
		
	

