<%@ page contentType="text/html; charset=utf-8" language="java" import="com.newlecture.web.controller.test" errorPage="" %>
 
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>JDBC테스트</title>
</head>

<body>
<p>테스트입니다.</p>
<%
 out.println(new test().aa());
%>
</body>