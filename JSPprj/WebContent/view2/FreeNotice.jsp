<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>free page notice</title>
    <meta name='author' content='03하나로'>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name='description' content="연습용 사이트">
    <meta name='keywords' content='cqre, CQRE, cqre embedded'>
    <meta name='' content='all'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    <script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js"></script>
    
    <!--jquery-->
    <script src="<%=request.getContextPath()%>/view2/js/jquery-3.4.1.min.js"></script>
    <script src="<%=request.getContextPath()%>/view2/js/signup.js"></script>
    
    <!-- style -->
  
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view2/css/subpage_free.css">
    
    <!-- fonts link--> 
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap" rel="stylesheet">
</head>


<body>
 
  <div id="mobile">
        <div class="menu-toggle">
            <i class="fas fa-list" aria-hidden="true"></i>
            <a href="/main"><img src="<%=request.getContextPath()%>/view2/img/logo_page.jpg" alt=""></a>
        </div>
        
        <div class="main-menu">
            <div class="top-close-menu"><i class="fa fa-times"></i>
            </div>
            <ul>
                <li><a href="/main/history">CQRE</a></li>
                <li><a href="/main/notice">공지사항</a></li>
                <li><a href="/main/team">팀 활동</a></li>
                <li><a href="/main/free">전체세미나</a></li>
                <li><a href="/GalleryMain">갤러리</a></li>
             </ul>
        </div>
        
        <table>
            <caption>전체세미나</caption>
            <thead>
                <tr>
                    <th>제목</th>
                    <th>등록일</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><a href="/main/free/detail?id=${list[0].title}">${list[0].title}</a></td>
                    <td>${list[0].dateTime}</td>
                </tr>
                <tr>
                    <td><a href="/main/free/detail?id=${list[1].title}">${list[1].title}</a></td>
                    <td>${list[1].dateTime}</td>
                </tr>
                <tr>
                    <td><a href="/main/free/detail?id=${list[2].title}">${list[2].title}</a></td>
                    <td>${list[2].dateTime}</td>
                </tr>
                <tr>
                    <td><a href="/main/free/detail?id=${list[3].title}">${list[3].title}</a></td>
                    <td>${list[3].dateTime}</td>
                </tr>
                <tr>
                    <td><a href="/main/free/detail?id=${list[4].title}">${list[4].title}</a></td>
                    <td>${list[4].dateTime}</td>
                </tr>
                <tr>
                    <td><a href="/main/free/detail?id=${list[5].title}">${list[5].title}</a></td>
                    <td>${list[5].dateTime}</td>
                </tr>
                <tr>
                    <td><a href="/main/free/detail?id=${list[6].title}">${list[6].title}</a></td>
                    <td>${list[6].dateTime}</td>
                </tr>
                <tr>
                    <td><a href="/main/free/detail?id=${list[7].title}">${list[7].title}</a></td>
                    <td>${list[7].dateTime}</td>
                </tr>
                <tr>
                    <td><a href="/main/free/detail?id=${list[8].title}">${list[8].title}</a></td>
                    <td>${list[8].dateTime}</td>
                </tr>
                <tr>
                    <td><a href="/main/free/detail?id=${list[9].title}">${list[9].title}</a></td>
                    <td>${list[9].dateTime}</td>
                </tr>
               
            </tbody>
        </table>
        
        <div class="page">
          <a class="bt"href="/main/notice?p=1"><i class="fas fa-angle-double-left"></i></a>
               
               <a class="bt" href="/main/notice?p=${prev}"> <i class="fas fa-angle-left"></i></a> 
              
       			<c:forEach var="i" begin="1" end="${count}" varStatus="status">    
               		<div class="pageNum">
                   		<a class="num" href="/main/notice?p=${status.count}">${status.count}</a>
                   </div>
                </c:forEach>
           
               <a class="bt" href="/main/notice?p=${next}"><i class="fas fa-angle-right"></i></a>
               
               <a class="bt" href="/main/notice?p=${count}"><i class="fas fa-angle-double-right"></i></a>
        </div>  
    </div><!--mobile-->
     
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
    
    <div id="fullBox">
        <table class="notice_table">
            <caption>전체세미나</caption>
                <thead>
                   <tr>
                       <th>No.</th>
                       <th>제목</th>
                       <th>작성자</th>
                       <th>등록일</th>
                   </tr>
               </thead>
               <tbody class="contents">
                   <c:forEach var="n" items="${list}" begin="0" end="9" >
                   <tr>
                       <td><a href="">${n.idx}</a></td>
                       <td class="title"><a href="/main/free/detail?id=${n.title}">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp ${n.title}</a></td>
                       <td>${n.title}</td>
                       <td>${n.dateTime}</td>
                    </tr>
                 </c:forEach>
               </tbody>
           </table>

           <div class="page">
           <div>
              <a class="bt"href="/main/free?p=1"><i class="fas fa-angle-double-left"></i></a>
               
               <a class="bt" href="/main/free?p=${prev}"> <i class="fas fa-angle-left"></i></a> 
              
       			<c:forEach var="i" begin="1" end="${count}" varStatus="status">    
               		<div class="pageNum">
                   		<a class="num" href="/main/free?p=${status.count}">${status.count}</a>
                   </div>
                </c:forEach>
           
               <a class="bt" href="/main/free?p=${next}"><i class="fas fa-angle-right"></i></a>
               
               <a class="bt" href="/main/free?p=${count}"><i class="fas fa-angle-double-right"></i></a>
               </div>>
               
                <form id="search" action="/main/free">
                    <input type="search" class="searchTerm" name="q">
                    <button type="submit" class="searchButton" form="search">
                        <i class="fa fa-search"></i>
                    </button>
                </form>
                
                <a href="/view2/FreeWrite.jsp" class="writeDesign"><input type="button" class ="write" value="글쓰기"></a>
                
           </div>
           
          

        </div><!--fullbox-->
  </div><!--wrap-->
    
    
    
    
    
</body>
</html>