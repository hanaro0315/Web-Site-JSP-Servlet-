<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>gallery page</title>
    <meta name='author' content='03하나로'>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name='description' content="연습용 사이트">
    <meta name='keywords' content='cqre, CQRE, cqre embedded'>
    <meta name='' content='all'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    
    <!-- fontawesome-->
  
   <script src="<%=request.getContextPath()%>/view2/js/jquery-3.4.1.min.js"></script>
   <script src="<%=request.getContextPath()%>/view2/js/gallery.js"></script>  
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view2/css/gallery.css" type="text/css">
    
    <script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.13.0/css/all.css">
    
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
        
        <div id="galleryContentBox">
          <i class="fa fa-times" aria-hidden="true"></i>
          <div class="picBox">
          <img alt="" id="picTitle">
              <div>
                  <span ></span>
              </div>
          </div>
          <div class="remainderContentBox">
          </div><!--remainderContentBox-->
          
      </div><!--galleryContentBox-->
       
        <div id="content">
          <div class="boxContainer">
          <c:forEach var="n" items="${list}" begin="0" end="5" varStatus="status">
              <a>
                <div>
                    <img src="<%=request.getContextPath()%>/view2/img2/${n.galleryPic}" alt="">
                    <div>
                     	<span id="title">${n.galleryTitle}</span>
                        <span>2020.05.15</span>
                    </div>
                    <form action=""><i class="fa fa-times" aria-hidden="true"></i></form>
 				</div>
              </a>
            </c:forEach>
             </div>
             
            <div class="page">
            	
                <a class="bt"href="/GalleryMain?page=1"><i class="fas fa-angle-double-left"></i></a>
              
                <a class="bt" href="/GalleryMain?page=${prev}">
                   <i class="fas fa-angle-left"></i>   
                </a>
                <c:forEach var="i" begin="0" end="${count}" varStatus="status">
                <div class="pageNum">
                    <a class="num" href="GalleryMain?page=${status.count}">${status.count}</a>
                </div>
                </c:forEach>                
                <a class="bt" href="/GalleryMain?page=${next}"><i class="fas fa-angle-right"></i></a>
                <a class="bt" href="/GalleryMain?page=${next}"><i class="fas fa-angle-double-right"></i></a>
                
               <a class="write" href="/view2/galleryWrite.jsp">글쓰기</a>
                <form id="search" action="">
                    <input type="text" class="searchTerm">
                    <button type="submit" class="searchButton" form="search">
                        <i class="fa fa-search"></i>
                    </button>
                </form>
               
                
            </div>
      </div>
    </div><!--wrap-->
    
    
</body>
</html>