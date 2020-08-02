package com.newlecture.web.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 * Servlet implementation class NoticeWriteController
 */
@WebServlet("/main/notice/write")
public class NoticeWriteController extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		String sessionId=(String) request.getSession().getAttribute("sessionId");
		response.setContentType("text/html; charset=UTF-8");
//		if(sessionId!=null) {
	
		String UPLOAD_DIRECTORY ="/t1faker/tomcat/webapps/ROOT/view2/img2";

            try
            {
        		NoticeService service = new NoticeService();
        		
        		DiskFileItemFactory diskFactory = new DiskFileItemFactory();
        		diskFactory.setSizeThreshold(50*1024*1024);
//        		String contextRootPath = this.getServletContext().getRealPath("/");
        		diskFactory.setRepository(new File(UPLOAD_DIRECTORY));
            	
        		ServletFileUpload upload = new ServletFileUpload(diskFactory);
        		upload.setSizeMax(30*1024*1024);
        		@SuppressWarnings("unchecked")
        		
        		List<FileItem> items = upload.parseRequest(request);
                ArrayList<String> list = new ArrayList<>();
                List<String> value=new ArrayList<>();
                String title=null;
                System.out.println("size  : "+items.size());
                for (FileItem item: items)
                {
                	System.out.println("hi : "+item.getString("UTF-8"));
                		if (item.isFormField())
                        {	
                        		title = item.getString("UTF-8");
                        		value.add(title);
                        }
                        else {
                        	if(item.getSize()>0) {
                        		String name = item.getName();
                           	 	System.out.println("name : "+name);
                                list.add(name);
                                item.write(new File(UPLOAD_DIRECTORY+File.separator+ name));	
                        	}
                        }
                
                }
               if(list.size()>0) {
            	   for(int i=0; i<list.size();i++) {
               		System.out.println("sibal");	
                   	service.insertNoticeList(value.get(0), list.get(i), value.get(1),value.get(2));
                   }
               }
               else {
            	   System.out.println("sibal2");	
            	   service.insertNoticeList(value.get(0), null, value.get(1),value.get(2));
               }
                	
                
                
                }
            
            catch (Exception ex)
            {
                request.setAttribute("message", "File upload failed due to : " + ex);
             }
            

           response.sendRedirect("/main/notice");
    
           
//		}
//		
//		else {
//			  PrintWriter out = response.getWriter();
//			  out.println("<script>alert('access deny');</script>");	
//			  response.sendRedirect("/main/notice");
//		}
	}
	
}
