package com.newlecture.web.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

@WebServlet("/GalleryDetail")
public class GalleryDetail extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("Gallery Detail Page");
		request.setCharacterEncoding("UTF-8");
		String title = request.getParameter("title");
		
		if(title!=null) {
			List<Gallery> last = new Gallery().getGalleryDetail(title);
			String json = new Gson().toJson(last);
			System.out.println("json : "+json);
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			response.getWriter().write(json);
		}
		
		
		
	}



}
