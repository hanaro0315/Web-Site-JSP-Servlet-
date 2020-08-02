<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="com.newlecture.web.controller.Login" %>

<jsp:useBean id="user" class="com.newlecture.web.controller.Login" scope="page"/>
<jsp:setProperty name="user" property="id"/>
<jsp:setProperty name="user" property="password" />
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>loginAction</title>
</head>
<body>
<%
		Login login = new Login();
		int result= login.loginCheck(request.getParameter("id"), request.getParameter("password"));
		
		if(result==1){
			session.setAttribute("sessionId", (String)login.sessionCheck(request.getParameter("id")));
			System.out.println(session.getAttribute("sessionId") );
			System.out.println(session.getAttribute("sessionId").getClass().getName());
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("location.href = '/main';");
			script.println("</script>");
		}
		else if(result ==0||user.getPassword()==""){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('비밀번호가 틀립니다');");
			script.println("history.back();");
			script.println("</script>");
		}
		else if(result==-1 || user.getId()==""){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('아이디가 틀립니다');");
			script.println("history.back();");
			script.println("</script>");	
		}
		else{
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('데이터베이스 오류입니다');");
			script.println("history.back();");
			script.println("</script>");
		}

%>


</body>
</html>