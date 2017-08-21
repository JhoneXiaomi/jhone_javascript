<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


<script>

		function master(){
			// 给动物喂食
			this.feed = function(animal,food){
				alert(animal instanceof Object)
				document.write("主人给"+animal.name+"喂"+food.name);
			}
		}
		
		// 写食物
		function Food(name){
			this.name = name;
		}
		
		function Fish(name){
				this.food = Food;
				this.food(name);
		}
		
		function Bone(name){
			this.food = Food;
			this.food(name);
		}
		
		// 动物
		function Animal(name){
			this.name = name;
		}
		
		function cat(name){
			this.animal = Animal; // 对象冒充
			this.animal(name);
		}
		
		var cat = new cat("小貓咪");
		var fish = new Fish("小魚");
		
		var master = new master();
		master.feed(cat,fish);
</script>
</body>
</html>