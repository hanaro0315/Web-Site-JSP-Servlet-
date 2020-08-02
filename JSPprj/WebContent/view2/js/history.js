/* eslint-env jquery*/
/* global $ */
/* eslint-disable no-console */ 
/* eslint no-undef: "error"*/
/* eslint-env node*/
/* eslint-disable no-unused-vars */

$(function(){
    
   
    
    /*모바일 메뉴*//*모바일 메뉴*//*모바일 메뉴*//*모바일 메뉴*/
    $(".menu-toggle .fa-list").click(function(){
    	console.log("click!!");
        $(".main-menu").addClass("active");
    });
    $(".top-close-menu").click(function(){
        $(".main-menu").removeClass("active");
    });  

        
    
});