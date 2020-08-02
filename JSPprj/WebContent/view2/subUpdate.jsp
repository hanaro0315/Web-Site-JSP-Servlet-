<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
 	String id = (String)session.getAttribute("sessionId");
 	%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name='author' content='03하나로'>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name='description' content="연습용 사이트">
    <meta name='keywords' content='cqre, CQRE, cqre embedded'>
    <meta name='' content='all'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Content Page</title>
    
    <!--jquery-->
    <script src="<%=request.getContextPath()%>/view2/js/jquery-3.4.1.min.js"></script>
    
    <!-- style --> 
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view2/css/subUpdate.css">
    
    <!-- fonts link--> 
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap" rel="stylesheet">
</head>


<body>
    <div id="wrap">
        <div id="header">
            <div class="logo">
               <img src="<%=request.getContextPath()%>/view2/img/logo_page.jpg" alt="">
            </div>
            <div class="logo_container">
                <a href="/main"><span>CQRE</span></a>
                <a href="/main/notice"><span>공지사항</span></a>
                <a href="/main/notice"><span>팀 활동</span></a>
      			<a href="/main/free"><span>전체세미나</span></a>
                <a href="/GalleryMain"><span>갤러리</span></a>
            </div>
        </div>
        
        <div id="fullbox">
            <div class="contentbox">
                    <form action="/main/notice/update" method="POST" enctype="multipart/form-data">  
                  	<textarea class="title_put" name="title" >${getNotice[0].title}</textarea>
                    <input type="hidden" name="userName" value="${getNotice[0].name}">
                    <input type="file" name="file" multiple="multiple">
                    <textarea class="content_put" name="text" >${getNotice[0].textArea}</textarea>
                    <input type="hidden" name="lastName" value="${getNotice[0].title}">
                    <input class="ok" type="submit" value="확인">
                </form>
                
                
                
            </div>
        </div>
    </div>
   
</body>