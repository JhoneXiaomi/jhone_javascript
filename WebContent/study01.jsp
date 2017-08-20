<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
  <head>
  	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  	<title>jQuery 扩展js及初始化js 加载时机</title>
	<link rel="stylesheet" type="text/css" href="css/styles.css">
  </head>
  
  <!-- 引入jquery 文件 -->	  
  <script type="text/javascript" src="js/jquery.1.3.2.min.js"></script>
  <!-- 引入扩展jquery-->
  <script type="text/javascript" src="js/jquery.extends.js"></script>
  <script type="text/javascript">
  
  	/*  
  	 * $(function(){})  是$(document).ready(function(){ }) 的简写 代替页面中的window.onload()（等价于$(window).load(function(){...})）
  	 * 但是两者有区别:
  	 * 一 、加载的时机
  	 * window.onload:必须等到页面内包括图片的所有元素加载完毕后才能执行
  	 * $(document).ready(function(){})是DOM的结构绘制完毕就执行，不必等待加载完毕 
  	 * 二、页面存在的数量：
  	 * window.onload:不能编辑多个，页面上只能有一个
  	 * $(document).ready()可以同时编写多个，并且都可以得到执行 
     *
     * * * * * * *
     * $.fn.extends({}) 与 $.extends({}) 的区别
     * $.fn.extends:jQuery 相当于是一个实例，此处相当于是一个成员函数，与jQuery.prototype 相类似，这样的扩展方式相当于是给对象加了一个内部函数,调用时候$("#_div").init()
     * $.extends({})：为jQuery 实例添加静态方法类，调用的时候$.init()
     * 
  	 */
  	 
  	 
  	 
	/*
	 * jQuery(document).ready() 源码
 	 if ( jQuery.browser.msie && window == top ) (function(){ 
	if (jQuery.isReady) return; 
	try { 
	document.documentElement.doScroll("left"); 
	} catch( error ) { 
	　　　　　　setTimeout( arguments.callee, 0 ); 
	　　　　　　 return; 
	　　　　} 
	　　 // and execute any waiting functions 
	　　　jQuery.ready(); 
	})(); 
	jQuery.event.add( window, "load", jQuery.ready );  */
	window.onload= function(){
	 $("#but").click(function(){
		
			alert("asdfd");
		})
	 }
		

  </script>
  <body>
  
	  <div id="alertWhileClick">
	  
	  </div>

	  <div>
	  	<input type="button" value="提交" id="but"/>
	  </div>

  <script type="text/javascript">
  	
  	// 严格模式，严格js 的语法格式，如果在加载过程中js 的语法格式有问题，则会报错误。
  	"use strict";
  	
  	// jquey初始化引用
  		
  		var v = "3";
  		$("#alertWhileClick").alertWhileClick()
  		jQuery.caculate(2,3);
  		console.info("you are ture");
  </script>
  </body>
</html>
