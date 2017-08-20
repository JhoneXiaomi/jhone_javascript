$.extend({
	   caculate:function(arg1,arg2){alert(arg1+arg2);}
	    }),
	
$.fn.extend({
    alertWhileClick:function(){ 
        alert($(this).attr("id"));  
    }
 }) 

