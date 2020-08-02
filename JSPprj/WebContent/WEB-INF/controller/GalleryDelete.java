package com.newlecture.web.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GalleryDelete
 */
@WebServlet("/GalleryDelete")
public class GalleryDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String sessionId=(String) request.getSession().getAttribute("sessionId");
		response.setContentType("text/html; charset=UTF-8");
		if(sessionId!=null) {
			
			
		}
		else {
			  PrintWriter out = response.getWriter();
			  out.println("<script>alert('access deny');</script>");
			  response.sendRedirect("/GalleryMain");
			  
			
		}
	}

}
