<%@ page language="java" contentType="text/html; charset=UTF-8"
	    pageEncoding="UTF-8"%>
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	</head>
	<body>
		<script type="text/javascript">
			/* function showBlock(){
				(function(){
					for(i = 0; i< 10;i++){
							
					}
				})();
				alert(i);
			} 
			showBlock(); */
			
			/* function application(){
				var compress = new Array();
				
				compress.push(new Basecompress());
				
				var app = new Basecompress();
				app.getCompress = function(){
					return compress.length;
				};
				app.registerCompress = function(compre){
					if (typeof compre == "object") {
						compress.push(compre);
					} 
				}
				return app;
				
			}
			
			var app = application()
			alert(app.getCompress()); */
			
			/* var i = 0;
			var factorial = function(number){
				if (number <1 ){
					return 1;
				} else {
					alert(i++);
					return number*factorial(number-1);
				}
			}
			
			var anthorFactorial = factorial;
			factorial = null;
			alert(anthorFactorial(5)); */
			/* var name = "The Window";
			　　var object = {
			　　　　name : "My Object",
			　　　　getNameFunc : function(){
			　　　　　　return function(){
			　　　　　　　　return this.name;
			　　　　　　};
			　　　　}
			　　};
			　　alert(object.getNameFunc()()); */  // the window
			
			
			/* var name = "The Window";
			　　var object = {
			　　　　name : "My Object",
			　　　　getNameFunc : function(){
			　　　　　　var that = this;
			　　　　　　return function(){
			　　　　　　　　return that.name;
			　　　　　　};
			　　　　}
			　　};
			　　alert(object.getNameFunc()()); // my Object */
			function createFunction(){
				var result = new Array();
				for(i=0;i<10;i++){
					result[i]= function(){
						return i;
					};	
				}
				return result;
			　　};
			var objs1 = createFunction();
			var objs2 = createFunction();
			alert(objs1);
			alert(objs2);
		</script>
	</body>
	</html>
