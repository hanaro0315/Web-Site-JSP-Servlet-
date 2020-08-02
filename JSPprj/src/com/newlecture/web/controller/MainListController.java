package com.newlecture.web.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/main")
public class MainListController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		request.setCharacterEncoding("UTF-8");
		
		NoticeService service = new NoticeService();
		List<Notice> list = service.getMainNoticeList();
		TeamService team = new TeamService();
		List<Notice> least = team.getMainTeamList();
		FreeService free = new FreeService();
		List<Notice> last= free.getMainFreeList();
		
		Gallery gallery = new Gallery();
		List<Gallery> pic=gallery.getGalleryList(1);
		request.setAttribute("pic",pic);
		
		request.setAttribute("list", list);
		request.setAttribute("last", last);
		request.setAttribute("least", least);
		request.getRequestDispatcher("/view2/main.jsp").forward(request,response);
		
	}
}
		

