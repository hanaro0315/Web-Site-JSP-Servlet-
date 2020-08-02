package com.newlecture.web.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

@WebServlet("/GalleryMain")
public class GalleryMain extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String page= request.getParameter("page");
		String getTitle = request.getParameter("t");
		String getQuery = request.getParameter("q");
		
		String getTitle_="title";
		String getQuery_="";
		int page_=1;

		int prevPage=1;
		int nextPage=2;
//		String title = request.getParameter("title");
//		String title_=null;
	
		Gallery gallery = new Gallery();
		int getNoticeCount = gallery.galleryCount();
		
		if(getTitle!=null && !getTitle.equals("")) {
			 getTitle_=getTitle;
		}
		if(getQuery!=null && !getQuery.equals("")) {
			 getQuery_=getQuery;
		}
		
		if(page!=null) {
		
			int count=getNoticeCount/10;
			request.setAttribute("count", count);
			
			page_=Integer.parseInt(page);
			List<Gallery> list=gallery.getGalleryList(page_);
			request.setAttribute("list",list);
		
				if(count>1)
				{
					if(page_>1) {
						nextPage=(page_)+1;
						prevPage=(page_)-1;
					}
					else {
						nextPage=2;
						prevPage=1;	
					}
						
				}
				else {
					nextPage=2;
					prevPage=1;	
				}
				request.setAttribute("prev", prevPage);
				request.setAttribute("next", nextPage);
				
				
		}
		else {
			int count=getNoticeCount/10;
			request.setAttribute("count", count);
			
			System.out.println("prev : "+prevPage+" next : "+nextPage);
			request.setAttribute("prev", prevPage);
			request.setAttribute("next", nextPage);
			
			List<Gallery> list=gallery.getGalleryList(1);
			request.setAttribute("list",list);
		}
		
		request.getRequestDispatcher("/view2/galleryMain.jsp").forward(request, response);
	

}
}
