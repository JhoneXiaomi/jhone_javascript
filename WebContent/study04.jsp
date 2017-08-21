<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>

<script>

	function Person(name,in_age,sal){
		this.name = "sp"; // 公开属性
		var age = age; // 私有属性
		var salay = sal;// 私有属性
		
		
		this.show = function(){// 公开方法，特权方法 this 就是对象实例  可以在外部调用
			console.info("init show");
		}
	}
	
	var pi = new Person("jhone",23,90000);
	document.writeln(pi.name);
	document.writeln(pi.age);
	document.writeln(pi.salay);
	pi.show();
	
	
	
	// 抽像 继承 js对象冒充可以实现多重继承的效果
	function Stu(name,age){
		this.age = age;
		this.name = name;
		this.money = function(){
			console.info(this.name+"的age 为："+this.age);
		}
	}
	
	function MidSchoole(name,age){
		this.stu = Stu; // 没调用就说明没有赋值，
		this.stu(name,age); // 对象冒充执行的时候才引用，Java是动态语言 ，不执行不能实现动态效果
		
		// 可以覆盖
		this.money=function(){
			console.info(this.name+"儿子的age 为："+this.age);
		};
	}
	
	var midStudent = new MidSchoole("jhone",23);
	midStudent.money();
</script>
</body>
</html>