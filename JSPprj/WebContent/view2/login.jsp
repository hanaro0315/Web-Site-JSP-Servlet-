<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name='author' content='03하나로'>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    <script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js"></script>
    
    <!--jquery-->
    <script src="<%=request.getContextPath()%>/view2/js/jquery-3.4.1.min.js"></script>
    <script src="<%=request.getContextPath()%>/view2/js/subpage_notice.js"></script>
    
    <!-- style --> 
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view2/css/login.css">
    
    <!-- fonts link--> 
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap" rel="stylesheet">
</head>
<body>
<div id="mobile">
        <div class="menu-toggle">
          <i class="fas fa-list" aria-hidden="true"></i>
          <a href="/main"><img src="<%=request.getContextPath()%>/view2/img/0614.png" alt=""></a>
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
                <a href="/main"><span>CQRE</span></a>
                <a href="/main/notice"><span>공지사항</span></a>
                <a href="/main/team"><span>팀 활동</span></a>
                <a href="/main/free"><span>전체세미나</span></a>
                <a href="/GalleryMain"><span>갤러리</span></a>
            </div>
    </div>
    <div id="wrap">
       <div class="contact">
            <div class="head">
                <h3>CQRE Sign in</h3>
            </div>
            <form action="/view2/loginAction.jsp" method="POST">
                <label>ID</label>
                <input class="id" type="text"  name="id" >
                <label>PW</label>
                <input class="password" type="password" name = "password">
                <input class="submit" type="submit" value="확인">
                <button type="button" onclick="location.href='/view2/signUp.jsp'">Sign Up</button>
            </form>
        </div>
    </div><!--wrap-->
    
    
    
    
    
</body>
    
    
    
    
</body>