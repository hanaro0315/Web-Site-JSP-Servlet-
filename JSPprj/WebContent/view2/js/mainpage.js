/* eslint-env jquery*/
/* global $ */
/* eslint-disable no-console */ 
/* eslint no-undef: "error"*/
/* eslint-env node*/
/* eslint-disable no-unused-vars */

$(function(){
var container = $('.slideshow'),
     slideGroup = container.find('.slideshow_slides'),
     slides = slideGroup.find('a'),
     nav = container.find('.slideshow_nav'),
     indicator = container.find('.indicator'),
     slideCount = slides.length,
     indicatorHtml = '',
     currentIndex = 0,
     interval = 4000,
     timer,    
    /*-----------------banner 변수선언-----------------*/
    
    c1_text_notice = $('#content1 .text_container                                               .text_container_notice'),
    c1_text_team = $('#content1 .text_container .text_container_team'),
    c1_notice_container = $('#content1 .notice_container'),
    c1_team_container= $('#content1 .team_container'),
    /*-----------------c1 텍스트-----------------*/
    
    c1_noticeBox1 = $('#content1 .notice_container .notice_container1 .notice_a1'),
    c1_noticeBox2 = $('#content1 .notice_container .notice_container1 .notice_a2'),
    c1_noticeBox3 = $('#content1 .notice_container .notice_container1 .notice_a3'),
    c1_noticeBox4 = $('#content1 .notice_container .notice_container2 .notice_a4'),
    c1_noticeBox5 = $('#content1 .notice_container .notice_container2 .notice_a5'),
    c1_noticeBox6 = $('#content1 .notice_container .notice_container2 .notice_a6'),
    c1_noitceBoxImg1 = c1_noticeBox1.find('img'),
    c1_noitceBoxImg2 = c1_noticeBox2.find('img'),
    c1_noitceBoxImg3 = c1_noticeBox3.find('img'),
    c1_noitceBoxImg4 = c1_noticeBox4.find('img'),
    c1_noitceBoxImg5 = c1_noticeBox5.find('img'),
    c1_noitceBoxImg6 = c1_noticeBox6.find('img'),
    /*-----------------c1 공지사항 박스-----------------*/
    
    c1_teamBox1 = $('#content1 .team_container .team_container1 .team_a1'),
    c1_teamBox2 = $('#content1 .team_container .team_container1 .team_a2'),
    c1_teamBox3 = $('#content1 .team_container .team_container1 .team_a3'),
    c1_teamBox4 = $('#content1 .team_container .team_container2 .team_a4'),
    c1_teamBox5 = $('#content1 .team_container .team_container2 .team_a5'),
    c1_teamBox6 = $('#content1 .team_container .team_container2 .team_a6'),
    c1_teamBoxImg1 = c1_teamBox1.find('img'),
    c1_teamBoxImg2 = c1_teamBox2.find('img'),
    c1_teamBoxImg3 = c1_teamBox3.find('img'),
    c1_teamBoxImg4 = c1_teamBox4.find('img'),
    c1_teamBoxImg5 = c1_teamBox5.find('img'),
    c1_teamBoxImg6 = c1_teamBox6.find('img');
    /*-----------------c1 팀활동 박스-----------------*/
    
/*-----------------변수 선언-----------------*/
/*-----------------변수 선언-----------------*/

     //슬라이드를 가로로 배열
     slides.each(function(i){
         var newLeft = i * 100 + '%';
         $(this).css({left: newLeft });
         
         indicatorHtml += '<a href="">'+ (i+1) + '</a>';
     }); 
    
    //인디케이터 표시
    indicator.html(indicatorHtml); 
    
    //슬라이드 이동
    function goToSlide(index){
        slideGroup.animate({left:-100 * index + '%'}, 500, 'linear');
        currentIndex=index;
        updateNav();
        
    }
    
    //처음과 끝일때 클릭버튼 사라지게
    function updateNav(){
        var navPrev = nav.find('.prev');
        var navNext = nav.find('.next');
        if(currentIndex==0){
            navPrev.addClass('disabled');
        }else{
            navPrev.removeClass('disabled');
        }
        if(currentIndex==slideCount-1){
           navNext.addClass('disabled');
        }else{
           navNext.removeClass('disabled');
        }
        
    //인디케이터 검은색 표시     
        indicator.find('a').removeClass('active');
        indicator.find('a').eq(currentIndex).addClass('active');
    }
    
    //인디케이터 클릭시 이동
    indicator.find('a').click(function(e){
        e.preventDefault();
        var idx = $(this).index();
        goToSlide(idx);
    });
    
    //버튼 클릭시 이동
    nav.find('a').click(function(e){
       e.preventDefault();
       if($(this).hasClass('prev')){
            goToSlide(currentIndex-1);
        }else{
            goToSlide(currentIndex+1);
        }
    });
    
    updateNav();
    startTimer();
    
    //자동 슬라이드
    function startTimer(){
        timer = setInterval(function(){
            var nextIndex = (currentIndex+1) % slideCount;
            goToSlide(nextIndex);
        },interval);
    }
    
    
    function stopTimer(){
        clearInterval(timer); 
    }
    
    //마우스가 배너에 있을 때, 없을 때
    container.mouseenter(function(){
          stopTimer();
    })
    .mouseleave(function(){
          startTimer();
    });    
/*-----------------배너-----------------*/
/*-----------------배너-----------------*/   
    
    
function notice_click(){
    $(c1_text_notice).click(function(){
    $(c1_text_notice).css({'color':'#0066b3', 'font-size':'30px'})
    $(c1_text_team).css({'color':'black', 'font-size':'20px'}) 
    &(c1_notice_container).css({'visibility':'visible'})
    &(c1_team_container).css({'visibility':'hidden'})   
});
}
    
function team_click(){
    $(c1_text_team).click(function(){
    $(c1_text_team).css({'color':'#0066b3', 'font-size':'30px'})
    $(c1_text_notice).css({'color':'black', 'font-size':'20px'})
    &(c1_team_container).css({'visibility':'visible'})
    &(c1_notice_container).css({'visibility':'hidden'}) 
});      
}    
    
notice_click();   
team_click();
/*-----------------공지사항,팀활동 클릭-----------------*/
/*-----------------공지사항,팀활동 클릭-----------------*/   
   
function noticeTeamBox_hover(){
     $(c1_noticeBox1).hover(function(){
         $(c1_noitceBoxImg1).css({'visibility':'visible'});
     }, function(){
         $(c1_noitceBoxImg1).css('visibility', 'hidden');
     }) 
    
     $(c1_noticeBox2).hover(function(){
         $(c1_noitceBoxImg2).css({'visibility':'visible'});
     }, function(){
         $(c1_noitceBoxImg2).css('visibility', 'hidden');
     })
    
     $(c1_noticeBox3).hover(function(){
         $(c1_noitceBoxImg3).css({'visibility':'visible'});
     }, function(){
         $(c1_noitceBoxImg3).css('visibility', 'hidden');
     })
    
     $(c1_noticeBox4).hover(function(){
         $(c1_noitceBoxImg4).css({'visibility':'visible'});
     }, function(){
         $(c1_noitceBoxImg4).css('visibility', 'hidden');
     })
    
     $(c1_noticeBox5).hover(function(){
         $(c1_noitceBoxImg5).css({'visibility':'visible'});
     }, function(){
         $(c1_noitceBoxImg5).css('visibility', 'hidden');
     })
    
     $(c1_noticeBox6).hover(function(){
         $(c1_noitceBoxImg6).css({'visibility':'visible'});
     }, function(){
         $(c1_noitceBoxImg6).css('visibility', 'hidden');
     })
    
 
    /*-----------------공지사항 호버-----------------*/
    
     $(c1_teamBox1).hover(function(){
         $(c1_teamBoxImg1).css({'visibility':'visible'});
     }, function(){
         $(c1_teamBoxImg1).css('visibility', 'hidden');
     })
    
     $(c1_teamBox2).hover(function(){
         $(c1_teamBoxImg2).css({'visibility':'visible'});
     }, function(){
         $(c1_teamBoxImg2).css('visibility', 'hidden');
     })
    
     $(c1_teamBox3).hover(function(){
         $(c1_teamBoxImg3).css({'visibility':'visible'});
     }, function(){
         $(c1_teamBoxImg3).css('visibility', 'hidden');
     })
    
     $(c1_teamBox4).hover(function(){
         $(c1_teamBoxImg4).css({'visibility':'visible'});
     }, function(){
         $(c1_teamBoxImg4).css('visibility', 'hidden');
     })
    
     $(c1_teamBox5).hover(function(){
         $(c1_teamBoxImg5).css({'visibility':'visible'});
     }, function(){
         $(c1_teamBoxImg5).css('visibility', 'hidden');
     })
    
     $(c1_teamBox6).hover(function(){
         $(c1_teamBoxImg6).css({'visibility':'visible'});
     }, function(){
         $(c1_teamBoxImg6).css('visibility', 'hidden');
     })
        
}    
noticeTeamBox_hover();
/*-----------------박스 호버 효과-----------------*/
/*-----------------박스 호버 효과-----------------*/   

    /*
        $('#header .logo_container a').on('click', function(e){
            $(this).addClass('on');
            $(this).siblings().removeClass('on');
        }); 
    
        $('#content3 .gallery .gallery_pic1').hover(function(e){
            e.preventDefault();
            e.stopPropagation();
            $(this).css('box-shadow', 'none');
            },function(){
            $(this).css('box-shadow', '1.5px 1.5px 1.5px 1.5px #DDDDDD');
        });
    
        $('#content3 .gallery .gallery_pic2').hover(function(e){
            e.preventDefault();
            e.stopPropagation();
            $(this).css('box-shadow', 'none');
            },function(){
            $(this).css('box-shadow', '1.5px 1.5px 1.5px 1.5px #DDDDDD');
        });
    
        $('#content3 .gallery .gallery_pic3').hover(function(e){
            e.preventDefault();
            e.stopPropagation();
            $(this).css('box-shadow', 'none');
            },function(){
            $(this).css('box-shadow', '1.5px 1.5px 1.5px 1.5px #DDDDDD');
        });
*/

/*-----------------메뉴 및 갤러리-----------------*/
/*-----------------메뉴 및 갤러리-----------------*/ 

/*   
$('#mobile .mobile_header a').click(function(){
    $('#mobile .menu').css({'display':'none'});
})*/
    
/*    
$('#mobile .mobile_header .fa-list').click(function(){
    $('#mobile .menu').addClass('open');
});
    
$('#mobile .mobile_header .fa-list').click(function(){
    $('#mobile .menu').removeClass('open');
});   
*/

    /*
$('#mobile .mobile_header .fa-list').toggle(
    function(){
        $('#mobile .menu').css({left: 0})
    },
    function(){
        $('#mobile .menu').css({left:-200})
    })
 */
    
/*모바일 메뉴*//*모바일 메뉴*//*모바일 메뉴*//*모바일 메뉴*/
$(".menu-toggle .fa-list").click(function(){
	$(".main-menu").toggleClass("active");
});
$(".top-close-menu").click(function(){
	$(".main-menu").removeClass("active");
});    


/*갤러리 사진 클릭시 갤러리페이지로 이동 및 사진박스 띄우기*/
    
    /*
    $("#content3 .gallery .pic1").click(function(e){
        e.preventDefault();
        location.href="gallery.html";
        valueSend(1);
    });
    function valueSend(index){
        window.location.href = "gallery.html?index=" + index;
    }
    */
   
    

});


