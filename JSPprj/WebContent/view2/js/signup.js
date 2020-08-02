/* eslint-env jquery*/
/* global $ */
/* eslint-disable no-console */ 
/* eslint no-undef: "error"*/
/* eslint-env node*/
/* eslint-disable no-unused-vars */

$(function(){
    
    var pwd1 = $('.contact form input:nth-child(8)'),
        pwd2 = $('.contact form input:nth-child(10)');
    
    pwd2.keyup(function(){
        
        if(pwd1.val() != pwd2.val()){
            pwd2.css('border-color', 'red');
        }
        else if(pwd1.val() == pwd2.val()){
            pwd2.css('border-color', 'green');
        }
        else if(pwd1.val() && pwd2.val() == ""){
            pwd2.css('border-color', '#eee')    
        }
        else{
            pwd2.css('border-color', '#eee')  
        }
    });
    
    /*모바일 메뉴*//*모바일 메뉴*//*모바일 메뉴*//*모바일 메뉴*/
    $(".menu-toggle .fa-list").click(function(){
        $(".main-menu").addClass("active");
    });
    $(".top-close-menu").click(function(){
        $(".main-menu").removeClass("active");
    });  
     $(".comment_Box button").click(function(){
     console.log("button click");
     localStorage.clear();
     });
    
    $(document).on('click', '.comment_Box .upload',function(){        
        $.ajax({
           type:'post', 
           url:'/view2/subContent.jsp',
            dataType : 'html',
            success:function(){
            console.log("sibal");
            if(localStorage.getItem("count")==null){
            console.log("null : "+localStorage.getItem("count"));
            localStorage.setItem("count","1");
            localStorage.setItem("1", $(".comment_Box .textBody").val());
            $(".comment_Box").after("<div id='reply'>"+localStorage.getItem("1")+" <a href=''>삭제</a> </div>");   
            var ctNum = parseInt(localStorage.getItem("count"))+1;
            var ctString = String(ctNum);
            localStorage.setItem("count", ctString);
            
        }
        else{
            if(localStorage.getItem("count")=="10"){
                localStorage.clear();
            }
            localStorage.setItem("count", localStorage.getItem("count"));
            var ctString= String(localStorage.getItem("count"));
            localStorage.setItem(ctString, $(".comment_Box .textBody").val());
            var ctNum = parseInt(localStorage.getItem("count"))+1;
            var ctString2=(ctNum);
            localStorage.setItem("count", ctString2);
            $(".contentbox #reply").remove();
            for(var i=1; i<localStorage.length;i++){
            var ps = String(i);
            $(".comment_Box").after("<div id='reply'>"+localStorage.getItem(i)+"<a href=''>삭제</a></div>");    
            }
        }
        
            }
            
        });
        
        
        $(".contact form> input.mail").onchange(function(){
        	$(".contact form> input.mail").attr("disabled", ture);
        });
        
        
        
        
//        if(localStorage.getItem("count")==null){
//            localStorage.setItem("count","1");
//            localStorage.setItem("1", $(".comment_Box .textBody").val());
//            $(".comment_Box").after("<div id='reply'>"+localStorage.getItem("1")+" <a href=''>삭제</a> </div>");   
//            var ctNum = parseInt(localStorage.getItem("count"))+1;
//            var ctString = String(ctNum);
//            localStorage.setItem("count", ctString);
//            
//        }
//        else{
//            if(localStorage.getItem("count")=="10"){
//                localStorage.clear();
//            }
//            
//            localStorage.setItem("count", localStorage.getItem("count"));
//            var ctString= String(localStorage.getItem("count"));
//            localStorage.setItem(ctString, $(".comment_Box .textBody").val());
//            var ctNum = parseInt(localStorage.getItem("count"))+1;
//            var ctString2=(ctNum);
//            localStorage.setItem("count", ctString2);
//            $(".contentbox #reply").remove();
//            for(var i=1; i<localStorage.length;i++){
//            var ps = String(i);
//            $(".comment_Box").after("<div id='reply'>"+localStorage.getItem(i)+"<a href=''>삭제</a></div>");    
//            }
//        }
//        
        
        
        
        
    });
    
    $(document).on('click', '.contentbox #reply a', function(){
    	console.log("1");
//        localStorage.removeItem(String($(".comment_Box div a").index(this)));
    });
        
    
});