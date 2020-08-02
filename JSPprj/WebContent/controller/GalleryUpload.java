package com.newlecture.web.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

@WebServlet("/GalleryUpload")
public class GalleryUpload extends HttpServlet {
//	private final String UPLOAD_DIRECTORY = "C:\\jsp\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\JSPprj\\upload";
//	
//	 String UPLOAD_DIRECTORY ="C:\\jsp\\JSPprj\\WebContent\\view2\\img2";
//	 String UPLOAD_DIRECTORY ="/webapps/upload/";
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		// TODO Auto-generated method stub

		String UPLOAD_DIRECTORY ="/t1faker/tomcat/webapps/ROOT/view2/img2";
//		if(sessionId!=null) {

	
            try
            {
            	Gallery gallery = new Gallery();
            	DiskFileItemFactory diskFactory = new DiskFileItemFactory();
        		diskFactory.setSizeThreshold(50*1024*1024);
//        		String contextRootPath = this.getServletContext().getRealPath("/");
        		diskFactory.setRepository(new File(UPLOAD_DIRECTORY));
            	
        		ServletFileUpload upload = new ServletFileUpload(diskFactory);
        		upload.setSizeMax(30*1024*1024);
        		@SuppressWarnings("unchecked")
        		
                List<FileItem> multiparts = upload.parseRequest(request);
                ArrayList<String> list = new ArrayList<>();
                String value=null;
                
                for (FileItem item: multiparts)
                {
                    if (item.isFormField())
                    {
                        value = item.getString("UTF-8");
                        System.out.println("value : "+value);
                        }
                    else {
                        String name = item.getName();
                        System.out.println("name : "+name);
                        list.add(name);
                        item.write(new File(UPLOAD_DIRECTORY+File.separator + name));
                       }
                   
                }
                for(int i=0; i<list.size();i++) {
                	gallery.setGallery(value, list.get(i));	
                }
                
                
                
            } catch (Exception ex)
            {
                request.setAttribute("message", "failed due to : " + ex);
            }
            
            response.sendRedirect("/GalleryMain");
        
//		}
//		
//		else {
//			  PrintWriter out = response.getWriter();
//			  out.println("<script>alert('access deny');</script>");
//			  response.sendRedirect("/GalleryMain");
//			  
//		}

	}
}
