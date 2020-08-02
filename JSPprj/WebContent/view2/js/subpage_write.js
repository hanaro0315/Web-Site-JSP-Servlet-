/* eslint-env jquery*/
/* global $ */
/* eslint-disable no-console */ 
/* eslint no-undef: "error"*/
/* eslint-env node*/
/* eslint-disable no-unused-vars */

$(function(){
	  console.log("2");
	  
	  
	 function upload(e){
	      console.log("2");
	      
	             // ie 일때 input[type=file] init.
	             $("#fileupload").replaceWith( $("#fileupload").clone(true) );
	            
	              $(" #fullbox .contentbox span.filename").remove();
	            
	      
	        
	        for(var i=0; i<e.target.files.length; i++){
	        $(" #fullbox .contentbox .title_put").after("<span class='filename'>"+e.target.files[i].name+"</span>");
	            console.log("before : "+e.target.files[i].name);
	        }
	           
	 }
	  
	   $("#fullbox .contentbox input[type='file']").on('change', upload);
	   
});
       