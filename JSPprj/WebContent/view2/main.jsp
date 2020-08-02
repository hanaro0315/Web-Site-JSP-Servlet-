<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%session.setMaxInactiveInterval(10); %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>main page</title>
    <meta name='author' content='03하나로'>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name='description' content="연습용 사이트">
    <meta name='keywords' content='cqre, CQRE, cqre embedded'>
    <meta name='' content='all'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Cache-Control" content="no-cache"/>
	<meta http-equiv="Expires" content="0"/>
	<meta http-equiv="Pragma" content="no-cache"/>
    
    <!-- fontawesome-->
    <script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.13.0/css/all.css">
	<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css"> 
  
    <!--[if lt IE 9]> 
        <script src="assets/html5shiv.js"></script>
    <![endif]-->
    
    <!--jquery-->
    <script src="<%=request.getContextPath()%>/view2/js/jquery-3.4.1.min.js"></script>
    <script src="<%=request.getContextPath()%>/view2/js/mainpage.js"></script>
    
    <!-- style --> 
   	
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view2/css/style.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view2/css/banner_notice_free.css">
    
    <!-- fonts link--> 
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap" rel="stylesheet">
<!-- 

 -->    
 
    
</head>
<body>
<script>

$(document).ready(function(){
	var si='${sessionId}';
	sessionStorage.setItem("sessionId", si);
	
	if(!sessionStorage.getItem("sessionId")){
		$("#header button.login").show(); 
		$("#header button.signUp").show();
	}
	else{
   	$("#header button.login").hide(); 
	$("#header button.signUp").hide(); 
	 }	
});


</script>

  <div id="mobile">
     
        <div class="menu-toggle">
          <i class="fas fa-list" aria-hidden="true"></i>
          <a href="/main"><img src="<%=request.getContextPath()%>/view2/img/logo_page.jpg" alt=""></a>
           <a href="#"><button class="login">Login</button></a>
          <a href="#"><button class="signUp">Sign Up</button></a>
           </div><!--------------- menu-toggle ---------------> 
      
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
        </div><!--------------- main-menu --------------->
        
      <div class="moblie_notice">
        <a href="/main/notice"><span>공지사항</span></a>
        <div class=moblie_notice_textbox>
                <i class="fab fa-stumbleupon-circle"></i>
                <a class = "topic" href="/main/notice/detail?id=${list[0].title}">${list[0].title}</a>
                <span class = "date">2020-03-20</span>
        </div>
        <div class=moblie_notice_textbox>
                <i class="fab fa-stumbleupon-circle"></i>
                <a class = "topic" href="/main/notice/detail?id=${list[1].title}">${list[1].title}</a>
                <span class = "date">2020-03-20</span>
        </div>
        <div class=moblie_notice_textbox>
                <i class="fab fa-stumbleupon-circle"></i>
                <a class = "topic" href="/main/notice/detail?id=${list[2].title}">${list[2].title}</a>
                <span class = "date">2020-03-20</span>
        </div>
      </div><!--------------- 공지사항 ---------------> 
      
      <div class="moblie_team">
        <a href="/main/team"><span>팀활동</span></a>
        <div class=moblie_team_textbox>
                <i class="fab fa-stumbleupon-circle"></i>
                <a class = "topic" href="/main/team/detail?id=${least[0].title}">${least[0].title}</a>
                <span class = "date">2020-03-20</span>
        </div>
        <div class=moblie_team_textbox>
                <i class="fab fa-stumbleupon-circle"></i>
                <a class = "topic" href="/main/team/detail?id=${least[0].title}">${least[1].title}</a>
                <span class = "date">2020-03-20</span>
        </div>
        <div class=moblie_team_textbox>
                <i class="fab fa-stumbleupon-circle"></i>
                <a class = "topic" href="/main/team/detail?id=${least[0].title}">${least[2].title}</a>
                <span class = "date">2020-03-20</span>
        </div>  <!--------------- 팀활동 ---------------> 
        
      </div>
      <div class="moblie_free">
        <a href="/main/free"><span>자유게시판</span></a>
        <div class=moblie_free_textbox>
                <i class="fab fa-stumbleupon-circle"></i>
                <a class = "topic" href="/main/free/detail/id=${last[0].title}">${last[0].title}</a>
                <span class = "date">2020-03-20</span>
        </div>
        <div class=moblie_free_textbox>
                <i class="fab fa-stumbleupon-circle"></i>
                <a class = "topic" href="/main/free/detail/id=${last[1].title}">${last[1].title}</a>
                <span class = "date">2020-03-20</span>
        </div>
        <div class=moblie_free_textbox>
                <i class="fab fa-stumbleupon-circle"></i>
                <a class = "topic" href="/main/free/detail/id=${last[2].title}">${last[2].title}</a>
                <span class = "date">2020-03-20</span>
        </div>  
      </div><!--------------- 자유게시판 ---------------> 
  </div><!--------------- mobile---------------> 
  
  
  <div id="wrap">
      <div id="header">
      	<div class="header_container">
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
        		<button class="login" onclick="location.href='/view2/login.jsp'">Login</button>
          	    <button class="signUp" onclick="location.href='/view2/signUp.jsp'">Sign Up</button>
               
      </div><!--------------- header --------------->  
      
      <div id="banner">
          <div class="slideshow">
           
            <div class="slideshow_slides">
                <a href=""><img src="<%=request.getContextPath()%>/view2/img/banner1.png" alt="slide-1"></a>
                <a href=""><img src="<%=request.getContextPath()%>/view2/img/banner2.png" alt="slide-2"></a>
                <a href=""><img src="<%=request.getContextPath()%>/view2/img/banner3.png" alt="slide-3"></a>
            </div><!-- //slideshow_slides -->
            
            <div class="slideshow_nav">
                <a href="" class="prev">prev</a>
                <a href="" class="next">next</a>
            </div><!-- //slideshow_nav -->
            
            <div class="indicator">
            </div><!-- //indicator -->
            
        </div><!-- //slideshow -->
      </div><!--------------- banner --------------->  
      
      <div id="content1">
           
            <div class="text_container">
                <a class="text_container_notice" href=""><span>공지사항</span></a>
                <a class="text_container_team" href="#"><span>팀 활동</span></a>
                <img src="<%=request.getContextPath()%>/view2/img/CQRElogo2.png" alt="CQRElogo2">
            </div> 
            <!--------------- text_container --------------->        
                   
            <div class=notice_container>
               <div class="notice_container1">
                    <a class="notice_a1" href="/main/notice/detail?id=${list[0].title}"><img src="<%=request.getContextPath()%>/view2/img/plus.png" alt=""><span>${list[0].title}</span></a>
                    <a class="notice_a2" href="/main/notice/detail?id=${list[1].title}"><img src="<%=request.getContextPath()%>/view2/img/plus.png" alt=""><span>${list[1].title}</span></a>
                    <a class="notice_a3" href="/main/notice/detail?id=${list[2].title}"><img src="<%=request.getContextPath()%>/view2/img/plus.png" alt=""><span>${list[2].title}</span></a>
                </div>
            
                <div class="notice_container2">
                    <a class="notice_a4" href="/main/notice/detail?id=${list[3].title}"><img src="<%=request.getContextPath()%>/view2/img/plus.png" alt=""><span>${list[3].title}</span></a>
                    <a class="notice_a5" href="/main/notice/detail?id=${list[4].title}"><img src="<%=request.getContextPath()%>/view2/img/plus.png" alt=""><span>${list[4].title}</span></a>
                    <a class="notice_a6" href="/main/notice/detail?id=${list[5].title}"><img src="<%=request.getContextPath()%>/view2/img/plus.png" alt=""><span>${list[5].title}</span></a>
                </div>
            </div>
            
            <div class=team_container>
                <div class="team_container1">
                    <a class="team_a1" href="/main/team/detail?id=${least[0].title}"><img src="<%=request.getContextPath()%>/view2/img/plus.png" alt=""><span>${least[0].title}</span></a>
                    <a class="team_a2" href="/main/team/detail?id=${least[1].title}"><img src="<%=request.getContextPath()%>/view2/img/plus.png" alt=""><span>${least[1].title}</span></a>
                    <a class="team_a3" href="/main/team/detail?id=${least[2].title}"><img src="<%=request.getContextPath()%>/view2/img/plus.png" alt=""><span>${least[2].title}</span></a>
                </div>
            
                <div class="team_container2">
                    <a class="team_a4" href="/main/team/detail?id=${least[3].title}"><img src="<%=request.getContextPath()%>/view2/img/plus.png" alt=""><span>${least[3].title}</span></a>
                    <a class="team_a5" href="/main/team/detail?id=${least[4].title}"><img src="<%=request.getContextPath()%>/view2/img/plus.png" alt=""><span>${least[4].title}</span></a>
                    <a class="team_a6" href="/main/team/detail?id=${least[5].title}"><img src="<%=request.getContextPath()%>/view2/img/plus.png" alt=""><span>${least[5].title}</span></a>
                </div>
          </div>
      </div><!--------------- //content1 --------------->     
               
        <div id="content2">
           <div class="free_container1">
                <a href="/main/free"><img class = "free_logo" src="<%=request.getContextPath()%>/view2/img/KakaoTalk_20200614_135141883.png" alt="자게로고" ></a>
           </div> 
           <!--------------- free_container1 --------------->       
        <a href="/main/free/detail/id=${last[0].title}">
           <div class="free_container2">
               <div class="free_container2_textbox">
                   <i class="fab fa-stumbleupon-circle"></i>
                   <span class = "topic">${last[0].title}</span>
                   <img class = "qimg2" src="<%=request.getContextPath()%>/view2/img/i.png" alt="">
                   <span class = "date">${last[0].dateTime}</span>
               </div>
           </div>
          </a> 
          
          <a href="/main/free/detail/id=${last[1].title}"> 
           <div class="free_container2">
               <div class="free_container2_textbox">
                   <i class="fab fa-stumbleupon-circle"></i>
                   <span class = "topic" >${last[1].title}</span>
                   <img class = "qimg2" src="<%=request.getContextPath()%>/view2/img/i.png" alt="">
                   <span class = "date">${last[1].dateTime}</span>
               </div>
           </div>
          </a>
            
           <a href="/main/free/detail/id=${last[2].title}"> 
            <div class="free_container2">
               <div class="free_container2_textbox">
                   <i class="fab fa-stumbleupon-circle"></i>
                   <span class = "topic" >${last[2].title}</span>
                   <img class = "qimg2" src="<%=request.getContextPath()%>/view2/img/i.png" alt="">
                   <span class = "date">${last[2].dateTime}</span>
               </div>
            </div>
           </a>
           
           <a href="/main/free/detail/id=${last[3].title}">               
            <div class="free_container2">
               <div class="free_container2_textbox">
                   <i class="fab fa-stumbleupon-circle"></i> 
                   <span class = "topic" >${last[3].title}</span>
                   <img class = "qimg2" src="<%=request.getContextPath()%>/view2/img/i.png" alt="">
                   <span class = "date">${last[3].dateTime}</span>
               </div>
            </div>
           </a>   
                                    
         
                                         
      </div> <!--------------- //content2 --------------->
      
      <div id="content3">
         <div class="gallery">
              <a href="/GalleryMain">
                <img src="<%=request.getContextPath()%>/view2/img/Instagram_Frame.png" alt="">
                <img src="<%=request.getContextPath()%>/view2/img2/${pic[0].galleryPic}" alt="">
              </a>
              <a href="/GalleryMain">
                <img src="<%=request.getContextPath()%>/view2/img/Instagram_Frame.png" alt="">
                <img src="<%=request.getContextPath()%>/view2/img2/${pic[1].galleryPic}" alt="">
              </a>
              <a href="/GalleryMain">
                <img src="<%=request.getContextPath()%>/view2/img/Instagram_Frame.png" alt="">
                <img src="<%=request.getContextPath()%>/view2/img2/${pic[2].galleryPic}" alt="">
              </a>
         </div>
      </div><!--------------- //content3 --------------->
      
      
    <div id="footer">
    	<img src="<%=request.getContextPath()%>/view2/img/KakaoTalk_20200614_143650243.jpg">
          <div class="footer_box1"><span>COPYRIGHT 03하나로 ALL RIGHTS RESERVED</span><br><span>순천향대학교 정보보호학과 학술동아리 <strong>CQRE embedded</strong></span>
          </div>
          
          
      </div><!--------------- footer --------------->
  </div>
            
</body>
</html>