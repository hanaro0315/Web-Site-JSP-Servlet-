package com.newlecture.web.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/main/team/detail")
public class TeamDetailController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
		
		TeamService service=new TeamService();
		List<Notice> getTeam =service.getTeam(getId_);
		for(int i=0; i<getTeam.size(); i++) {
			System.out.println("file : "+getTeam.get(i).getFile());
		}
		request.setAttribute("getNotice", getTeam);
		request.getRequestDispatcher("/view2/TeamContent.jsp").forward(request,response);
	
//		}
//		else {
//			
//			PrintWriter out = response.getWriter();
//			  out.println("<script>alert('access deny');</script>");
//				
//			  response.sendRedirect("/main/team");
//		
//		}
}
}
