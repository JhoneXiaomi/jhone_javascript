<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>function 类型</title>
</head>
<body>

	<script type="text/javascript">
		"use strick";
		
		// 函数有两种编写方式函数声明式与函数表达式，函数可以作为值传递
		
		// 函数申明式
		function callSumFuntion(someFunction,someArgument){
			return someFunction(someArgument);
		}
		
		// 函数表达式,当调用此函数时候必须在此之后
		var getName = function(name){
			return "my name is:"+name;
		};
		
		window.console.info(callSumFuntion(getName,"jhone"));
		
		// 定义数组,这是会用到数组中的sort()函数，默认是正序排列，其比较的时候字符串
		var some = [{name:"zone",age:"34"},{name:"nick",age:"45"}];
		
		// 从一个函数返回另一个函数，极为有用方式
		function someComparisonFuntion(propertyName){
			return function(object1,object2){
				var val1 = object1[propertyName];
				var val2 = object2[propertyName]; 
				if (val1<val2) {
					console.info(val1+"位于"+val2+"之前");
					return -1;
				} else if (val1>val2) {
					console.info(val1+"位于"+val2+"之后");
					return 1;
				} else {
					return 0;
				}
			};
		}
		
		var somech = some.sort(someComparisonFuntion("name"));
		console.info(somech.valueOf());
		
		
		var num = [0,1,5,10,15];
		function someSort(val1,val2){
			if (val1<val2) {
				console.info(val1+"位于"+val2+"之前");
				return -1;
			} else if (val1>val2) {
				console.info(val1+"位于"+val2+"之后");
				return 1;
			} else {
				return 0;
			}
		}
		num.sort(someSort);
		console.info(num.valueOf());
	</script>
</body>
</html>