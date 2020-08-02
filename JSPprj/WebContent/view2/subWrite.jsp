<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	String id = (String)session.getAttribute("sessionId");
    %>
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
    <script src="<%=request.getContextPath()%>/view2/js/subpage_write.js"></script>
    
    <!-- style --> 
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view2/css/subpage_write.css">
    
    <!-- fonts link--> 
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap" rel="stylesheet">
    <script>
   
    </script>
</head>

<body>
    <div id="mobile">
        <div class="menu-toggle">
          <i class="fas fa-list" aria-hidden="true"></i>
          <img src="<%=request.getContextPath()%>/view2/img/logo_page.jpg" alt="">
        </div><!--------------- header --------------->
        
        <div class="main-menu">
            <div class="top-close-menu"><i class="fa fa-times" aria-hidden="true"></i>
            </div>
            <ul>
                <li><a href="/main">CQRE</a></li>
                <li><a href="/main/notice">공지사항</a></li>
                <li><a href="/main/team">팀활동</a></li>
                <li><a href="/main/free">전체세미나</a></li>
                <li><a href="/GalleryMain">갤러리</a></li>
            </ul>
        </div><!--------------- sidemenu --------------->    
    </div><!--------------- mobile --------------->
    
    <div id="wrap">
        <div id="header">
            <div class="logo">
               <img src="<%=request.getContextPath()%>/view2/img/logo_page.jpg" alt="">
            </div>
            <div class="logo_container">
                <a href="/main"><span>CQRE</span></a>
                <a href="/main/notice"><span>공지사항</span></a>
                <a href="/main/team"><span>팀 활동</span></a>
                <a href="/main/free"><span>전체세미나</span></a>
                <a href="/GalleryMain"><span>갤러리</span> </a>
            </div>
        </div> <!-- header -->
        
        <div id="fullbox">
            <div class="contentbox">
                <div class="head">
                    <span>공지사항 글쓰기</span>
                </div>
                <form action="/main/notice/write" method="POST" id="file_form" enctype="multipart/form-data">
                    <input class="title_put" type="text" placeholder="제목을 입력해 주세요." name="text1">
                    <label for="fileupload">업로드</label>
                    <input type="file" multiple="multiple" id="fileupload" name="file1">
                    <textarea class="content_put" type="text" placeholder="내용을 입력해 주세요." name="text2"></textarea>
                    <input type="hidden" name="userName" value="<%=session.getAttribute("sessionId")%>" type="text">
                    <input class="ok" type="submit" value="확인">
                    <input type="button" class="cancel" value="취소">
                </form>
            </div>
        </div><!-- fullbox -->
    </div> <!-- wrap -->
</body>
</html>