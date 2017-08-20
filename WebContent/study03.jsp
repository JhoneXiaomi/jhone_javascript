<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>object extends</title>
</head>
<body>
	<script type="text/javascript">
	
		/*
		 * js继承实现
		 */ 
		
		// 创建学生实体父类
		var Stu = function(nameInput,ageInput){
			this.name = nameInput;
			this.age = ageInput;
			this.show = function(){
				alert(this.name+":"+this.age);
			}
		}
		
		// 创建中学生实体子类
		var MidStu = function(nameInput,ageInput){
			this.stu = Stu;
			this.stu(nameInput,ageInput); // js通过对象冒充，实现继承
			this.show = function(){       // 重写：默认以父类的方法为准，此处重写了show() 方法，以重写之后的结果为准
				alert("中学生应该交学费为400");
			}
		}
		
		
		// 创建小学生实体子类
		var PupilStu = function(nameInput,ageInput){
			this.stu = Stu;
			this.stu(nameInput,ageInput);
			this.show = function(){
				alert("小学生应该交学费200");
			}
		}
		
		var midStu = new MidStu("张三","13");
		midStu.show();
	</script>
</body>
</html>