package com.newlecture.web.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class signUp
 */
@WebServlet("/signUp")
public class signUp extends HttpServlet {
       
 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 	
	    request.setCharacterEncoding("UTF-8");
	 	String getStudentNumber = request.getParameter("studentNumber");
	 	String getId= request.getParameter("id");
	 	String getName=request.getParameter("name");
	 	String getPassword=request.getParameter("password");
	 	String getEmail = request.getParameter("email");
	 	
	 	Login signup = new Login();
	 	signup.SignUp(getStudentNumber, getName,getId, getPassword, getEmail);
	 	request.getSession().setAttribute("sessionId", getName);
	 	response.sendRedirect("/main");
	}

}
