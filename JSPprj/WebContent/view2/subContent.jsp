<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
    
    <!-- fontawesome-->
    <script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.13.0/css/all.css">
    
    <!--jquery-->
    <script src="<%=request.getContextPath()%>/view2/js/jquery-3.4.1.min.js"></script>
    <script src="<%=request.getContextPath()%>/view2/js/signup.js"></script>
   
    
    <!-- style --> 
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view2/css/subpage_content.css">
    
    <!-- fonts link--> 
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap" rel="stylesheet">
</head>


<body>
    <div id="mobile">
        <div class="menu-toggle">
          <i class="fas fa-list" aria-hidden="true"></i>
          <a href="/main"><img src="<%=request.getContextPath()%>/view2/img/logo_page.jpg" alt=""></a>
        </div><!--------------- header --------------->
        
        <div class="main-menu">
            <div class="top-close-menu"><i class="fa fa-times" aria-hidden="true"></i>
            </div>
            <ul>
                <li><a href="/main/history">CQRE</a></li>
                <li><a href="/main/notice">공지사항</a></li>
                <li><a href="/main/team">팀 활동</a></li>
                <li><a href="/main/free">전체세미나</a></li>
                <li><a href="/GalleryMain">갤러리</a></li>
             </ul>
        </div><!--------------- sidemenu --------------->
        
    </div><!--------------- mobile --------------->
   
    <div id="wrap">
        <div id="header">
            <div class="logo">
               <a href="/main"><img src="<%=request.getContextPath()%>/view2/img/logo_page.jpg" alt=""></a>
            </div>
            <div class="logo_container">
                <a href="/main/history"><span>CQRE</span></a>
                <a href="/main/notice"><span>공지사항</span></a>
                <a href="/main/team"><span>팀 활동</span></a>
                <a href="/main/free"><span>전체세미나</span></a>
                <a href="/GalleryMain"><span>갤러리</span></a>
            </div>
        </div>
        
        <div id="fullbox">
            <div class="contentbox">
                <div class="title">
                    ${getNotice[0].title}
                </div>
               <button type="button" onclick="location.href='/main/notice/delete?title=${getNotice[0].title}'">삭제</button> 
               <button type="button" onclick="location.href='/main/notice/income?id=${getNotice[0].title}'">수정</button>
                <div class="writer">
                    <c:forEach var="n" items="${getNotice}" varStatus="varStatus">
                	<a href="/NoticeDownload?id=${n.file}">${n.file}</a>
                	</c:forEach>   
                </div>
                <div class="text">
                    <span>${getNotice[0].textArea}</span>
                </div>
             
             <!-- 
             <div class="comment_Box">
                  <p class="comentTxt">Comment</p>
                  <textarea class="commentline"></textarea>
                  <button type="button" class="btn">Submit</button>
                  <div class="clear"></div>
                  <div class="wraper"></div>
                </div>
              -->   
            </div>
        </div>
        
        
        
    </div>
    
    
    
    
    
</body>