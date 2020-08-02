package com.newlecture.web.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/NoticeDownload")
public class NoticeDownload extends HttpServlet {	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id=request.getParameter("id");
		System.out.println(id);
		
//		
//		String UPLOAD_DIRECTORY ="/t1faker/tomcat/webapps/upload/"+id;
		String UPLOAD_DIRECTORY="/t1faker/tomcat/webapps/ROOT/view2/img2"+id;
		System.out.println(UPLOAD_DIRECTORY);
		File downfile = new File(UPLOAD_DIRECTORY);
		
		ServletOutputStream outStream = null;
		FileInputStream inputStream=null;
		
		try {
			outStream = response.getOutputStream();
			System.out.println("1");
			inputStream = new FileInputStream(downfile);
			System.out.println("2");
			System.out.println("filename : "+downfile.getName());
			request.setCharacterEncoding("UTF-8");
			response.setContentType("application/octet-stream");
			response.setHeader("Content-Disposition", "attachment;filename="+downfile.getName()+"");
			
			byte[] outByte = new byte[40960];
			while(inputStream.read(outByte, 0, 40960) !=-1) {
				outStream.write(outByte, 0, 40960);
			}
			
			inputStream.close();
			outStream.flush();
			outStream.close();
			
		}
		catch(Exception e){
			throw new IOException();
		}
		inputStream.close();
		outStream.close();
		
	}

}
