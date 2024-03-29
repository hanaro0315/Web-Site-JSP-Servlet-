<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <meta http-equiv="Cache-Control" content="no-cache"/>
	<meta http-equiv="Expires" content="0"/>
	<meta http-equiv="Pragma" content="no-cache"/>
    
    <!-- fontawesome-->
    <script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.13.0/css/all.css">
    
    <!--jquery-->
    <script src="<%=request.getContextPath()%>/view2/js/jquery-3.4.1.min.js"></script>
    <script src="<%=request.getContextPath()%>/view2/js/history.js"></script>

    <!-- style --> 
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view2/css/history.css">
    
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
                <li><a href="/main/free">자유게시판</a></li>
                <li><a href="/main/notice">전체세미나</a></li>
             </ul>
        </div><!--------------- sidemenu --------------->
        
    </div><!--------------- mobile --------------->
    
    <div id="wrap">
        <div id="header">
           <div class="logo">
               <a href="/main"><img src="<%=request.getContextPath()%>/view2/img/KakaoTalk_20200613_211537219.png" alt=""></a>
            </div>
            <div class="logo_container">
                <a href="/main/history"><span>CQRE</span></a>
                <a href="/main/notice"><span>공지사항</span></a>
                <a href="/main/team"><span>팀 활동</span></a>
                <a href="/main/free"><span>전체세미나</span></a>
                <a href="/GalleryMain"><span>갤러리</span></a>
            </div>
        </div>
    </div>
    
<div class="container">
  <div class="Terminal">
    <div class="Terminal__Toolbar">
      <div class="Toolbar__buttons">
        <button class="Toolbar__button Toolbar__button--exit">&#10005;</button>
        <button class="Toolbar__button">&#9472;</button>
        <button class="Toolbar__button">&#9723;</button>
      </div>
      <p class="Toolbar__user">CQRE@ubuntu:~</p>
    </div>
    <div class="Terminal__body">
      <div class="Terminal__text">Welcome to Ubuntu!</div>
      <div class="Terminal__Prompt">
        <span class="Prompt__user">CQRE@ubuntu:</span>
        <span class="Prompt__location">~</span>
        <span class="Prompt__dollar">$</span>
        <span class="text">
           cd CQRE<br><span class="Prompt__user">CQRE@ubuntu:</span>
        <span class="Prompt__location">~</span>
        <span class="Prompt__dollar">$</span>&nbsp;pwd<br>/home/CQRE<br><span class="Prompt__user">CQRE@ubuntu:</span>
        <span class="Prompt__location">~</span>
        <span class="Prompt__dollar">$</span>&nbsp;ls<br>Creater.txt&nbsp;&nbsp;CqreHistory.txt<br><span class="Prompt__user">CQRE@ubuntu:</span>
        <span class="Prompt__location">~</span>
        <span class="Prompt__dollar">$</span>&nbsp;cat Creater.txt<br>
          <span>****************************************<br>*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Create by sanghoon && jihoon&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*<br>*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Create by sanghoon && jihoon&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*<br>*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Create by sanghoon && jihoon&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*<br>****************************************<br></span>
            <span class="Prompt__user">CQRE@ubuntu:</span>
        <span class="Prompt__location">~</span>
        <span class="Prompt__dollar">$</span>&nbsp;cat CqreHistory.txt<br>안녕하세요?<br>
순천향대학교 정보보호학과 동아리 CQRE 입니다.<br>
순천향대학교 정보보호학과 학술 동아리 CQRE(Secure Embedded)는 2004년도에 만들어졌으며, 연구분야는<br> 임베디드 시스템보안, 운영체제보안, 홈네트워크시스템 등입니다.<br><br>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;*************동아리 소개*************<br>CQRE(cqrembedded)는 2004년 임강빈 교수님 지도로 만들어진 동아리이며
보안에 필요한 기초적인 이론과<br> 실무적인 부분을 함께 공부하고 있습니다.
CQRE에서는 토론, 투표 등을 통해 모두가 자유롭게 의견을 제시할 수 있어
구성원 전부가 본 동아리의 방향성을 정하는 자유로운 분위기의 동아리입니다.

 매년 교내 융합형 정보보호 설계 경진대회에 출전하여 좋은 결과를 얻고 있으며,
업체 간의 공통 과제를 통해 다양한 경험과 지식을 쌓고 있습니다.
또한 현재는 임베디드 보안을 위한 취약점 분석과 블록체인 기반 플랫폼 개발 등
다양한 분야에 대해 연구를 진행하고 있습니다.<br><br>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;*************연구 분야*************<br>CQRE 동아리원은 네트워크, 시스템, 리버싱, 개발(서버, 앱) 등
다양한 주제에 대해 공부하고 있고
주로 IoT 개발 및 임베디드 보안 중심의 연구를 하고 있습니다.<br><br>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;*************활동 내역*************<br>- 2018년 대학 정보보호 동아리 선정<br>
- 2018 ITRC 미래인재 포럼 참여<br>
- 2018 CQRE 전공재능 나눔<br>
- 2018 제 24회 정보통신망 정보보호 컨퍼런스 참여<br>
- 2019년 CQRE 전공재능 나눔<br>
- 차세대 보안리더 양성 프로그램(BoB) 참여<br>
- CISIS 2018/ IMIS 2018 참여<br>
- 2018 제 6회 IoT 보안 워크샵 참여<br>
- 2018 제 16회 순천향대 청소년 정보보호 페스티벌 참여<br>
- 2019년 대학 정보보호 동아리 선정<br><br>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;*************수상 경력*************<br>- 2018년도 한국정보보호학회 동계학술대회 - 우수논문상<br>
- 2018학년도 비교과활동 ASP 우수 동아리 경진대회 - 동상<br>
- 제 27회 순천향대학교 공과대학 학술제 - 최우수상, 동상<br>
- 제 2회 전국 캡스톤디자인 전시회 - 은상<br>
- 제 28회 순천향대학교 공과대학 학술제 - 금상, 동상<br>
- 2019학년도 비교과활동 ASP 우수 동아리 경진대회 - 은상
       <br>
       <br>
        </span>
        <span class="Prompt__user">CQRE@ubuntu:</span>
        <span class="Prompt__location">~</span>
        <span class="Prompt__dollar">$</span>
        <span class="Prompt__cursor"><br></span>
       <br>
        <br>
      </div>
    </div>
  </div>
</div>

</body>
</html>