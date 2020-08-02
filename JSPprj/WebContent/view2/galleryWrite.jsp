<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>GalleryWritePage</title>
<meta charset="UTF-8">
    <meta name='author' content='03하나로'>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    <script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js"></script>
    
    <!--jquery-->
    <script src="<%=request.getContextPath()%>/view2/js/jquery-3.4.1.min.js"></script>
    <script src="<%=request.getContextPath()%>/view2/js/subpage_notice.js"></script>
    
    <!-- style --> 
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view2/css/gallery_write.css">
    
    <!-- fonts link--> 
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap" rel="stylesheet">
</head>
<body>
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
        </div> <!-- header -->
        
        <div id="fullbox">
            <div class="contentbox">
                <div class="head">
                    <span>갤러리 업로드</span>
                </div>
                <form action="/GalleryUpload" method="POST" enctype="multipart/form-data">
                    <input class="title_put" type="text"name="title" placeholder="제목을 입력해 주세요.">
                    <input type="file" multiple="multiple" name="file" >
                    <input class="ok" type="submit" value="확인">
                    <input class="cancle" type="submit" value="취소">
                </form>
                
            </div>
       </div><!-- fullbox -->
    </div> <!-- wrap -->

</body>
</html>