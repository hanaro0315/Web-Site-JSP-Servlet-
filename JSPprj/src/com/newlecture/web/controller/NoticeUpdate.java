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


@WebServlet("/main/notice/update")
public class NoticeUpdate extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sessionId=(String) request.getSession().getAttribute("sessionId");
		response.setContentType("text/html; charset=UTF-8");
		// 		���� sessionID ���� ����� ���� ����� �̻��
		//		if(sessionId!=null) {
	
		String UPLOAD_DIRECTORY ="/t1faker/tomcat/webapps/ROOT/view2/img2";

            try
            {
        		NoticeService service = new NoticeService();
        		// diskfileitemfactory : ������ ũ��(setsizeThreshold)�� �ѱ� ������ 
        		// 						������ ������ repository�� ����(setRepository)
        		DiskFileItemFactory diskFactory = new DiskFileItemFactory();
        		diskFactory.setSizeThreshold(50*1024*1024);
//        		String contextRootPath = this.getServletContext().getRealPath("/");
        		diskFactory.setRepository(new File(UPLOAD_DIRECTORY));
            	

        		// ServletFileUpload : �ѹ��� ���ε� �� ũ�⸦ ����
        		ServletFileUpload upload = new ServletFileUpload(diskFactory);
        		upload.setSizeMax(30*1024*1024);
        		@SuppressWarnings("unchecked")
        		
        		List<FileItem> items = upload.parseRequest(request);
                ArrayList<String> list = new ArrayList<>();
                List<String> value=new ArrayList<>();
                String title=null;
                
                for (FileItem item: items)
                {
                	if(item.getSize()!=0) {
                		if (item.isFormField())
                        {
                        		title = item.getString("utf-8");
                        		value.add(title);
                        		System.out.print(" // " +title);	
                        }
                        else {
                        	System.out.println("���ϸ� : " +item.getName());
                        	 String name = item.getName();
                             list.add(name);
                             item.write(new File(UPLOAD_DIRECTORY+File.separator+ name));
                        }
                	}
                	else {
                		System.out.println("file not exists");
                	}
                }
                
               
                // �Խñ� ��� �� ������ ���� ���� Ȯ�� �� �����ε��� �Լ� ȣ��(updateNoticeList)
                if(list.size()!=0) {
                	for(int i=0; i<list.size();i++) {
                    	System.out.println("write active");
                    	service.updateNoticeList(value.get(0), list.get(i),value.get(2),value.get(3));		
                    }
                }
                else
                {
                	System.out.println("no file but write success?");
                	service.updateNoticeList(value.get(0), value.get(2), value.get(3));
                }
                
                }
            
            catch (Exception ex)
            {
                request.setAttribute("message", "File upload failed due to : " + ex);
             }

            response.sendRedirect("/main");
}
}
