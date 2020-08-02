/* eslint-env jquery*/
/* global $ */
/* eslint-disable no-console */ 
/* eslint no-undef: "error"*/
/* eslint-env node*/
/* eslint-disable no-unused-vars */

$(function(){
	
    var files=[];
    var pageNum=1,
        contentNum = $("#fullBox .notice_table .contents tr").length;
    
    /*헤더*/ /*헤더*/ /*헤더*/ /*헤더*/ /*헤더*/ /*헤더*/ 
    /*헤더*/ /*헤더*/ /*헤더*/ /*헤더*/ /*헤더*/ /*헤더*/
    $('#header .logo_container a').on('click', function(e){
        $(this).addClass('on');
        $(this).siblings().removeClass('on');
    });
    
    
    /*메뉴*/ /*메뉴*/ /*메뉴*/ /*메뉴*/ /*메뉴*/ /*메뉴*/
    /*메뉴*/ /*메뉴*/ /*메뉴*/ /*메뉴*/ /*메뉴*/ /*메뉴*/
    $(".menu-toggle .fa-list").click(function(){
        $(".main-menu").toggleClass("active");
    });
    $(".top-close-menu").click(function(){
        $(".main-menu").removeClass("active");
    });
    

   
 

    
});
       