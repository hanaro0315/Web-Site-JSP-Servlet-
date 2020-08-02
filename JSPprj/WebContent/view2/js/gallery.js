/* eslint-env jquery*/
/* global $ */
/* eslint-disable no-console */ 
/* eslint no-undef: "error"*/
/* eslint-env node*/
/* eslint-disable no-unused-vars */

$(function(){
	
    /*메뉴*/ /*메뉴*/ /*메뉴*/ /*메뉴*/ /*메뉴*/ /*메뉴*/
    /*메뉴*/ /*메뉴*/ /*메뉴*/ /*메뉴*/ /*메뉴*/ /*메뉴*/
    $("#content .boxContainer >a >div").click(function(e){
    	e.preventDefault();
        console.log("data : " +$(this).find('div span#title').text());
        $.ajax({
            url:'http://schcqre.com/GalleryDetail',
            contentType: "application/x-www-form-urlencoded; charset=utf-8",
            type:'GET',
            datatype:'json',
            data:{
            	title:$(this).find('div span#title').text()
            	},
            success : function(json){
            	$("#galleryContentBox .remainderContentBox .remainderPicBox").remove();
            	var gjson = json;
            	
            	console.log("success2");
            	var clone=$('#galleryContentBox .remainderContentBox');
            	$("#galleryContentBox img").attr("src", "/view2/img2/"+gjson[0].galleryPic+"");
            	for(var i=0; Object.keys(json).length; i++){
            		
            		clone.append("<div class='remainderPicBox'><div><img id='pickme' src='/view2/img2/"+gjson[i].galleryPic+"'alt=''><div><span>"+gjson[i].galleryPic+"</span></div></div></div>");
            		console.log("pic : "+gjson[i].galleryPic);
  		
            	}        	  
        },
             error:function(){
            alert("fail");
            console.log("sibal");
        } 
        });
        $("#galleryContentBox").addClass("active");
    });
    
    $(document).on('click', ".remainderContentBox .remainderPicBox", function(){
    	console.log($(this).find('img').attr("src"));
    	$('#galleryContentBox img#picTitle').attr('src', $(this).find('img').attr('src'));
    });
    

    $("#galleryContentBox .fa-times").click(function(){
        $("#galleryContentBox").removeClass("active");
        $("#galleryContentBox .remainderContentBox .remainderPicBox").remove();
    });

    $(".menu-toggle .fa-list").click(function(){
        $(".main-menu").toggleClass("active");
    });
    $(".top-close-menu").click(function(){
        $(".main-menu").removeClass("active");
    }); 
    
});

