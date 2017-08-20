<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<!-- 引入jquery 文件 -->
<script type="text/javascript" src="js/jquery-1.8.2.js"></script>
<!-- 引入扩展jquery-->
<script type="text/javascript" src="js/jquery.extends.js"></script>
<script type="text/javascript">
    // 情形一
	$(function(){
		$("#_inp").on("click",function(){
			alert("jQuery1.8测试成功"); // 成功打印结果
		});
	});
	
	// 情形二
	$("#_inp").click(function(){
			alert("测试成功"); // 无法打印结果
		});
</script>
</head>
<body>
	<input id="_inp" type="button" value="测试"/>
	<script type="text/javascript">
	// 情形三
	$("#_inp").click(function(){
			alert("测试成功"); // 成功打印结果
		});
	</script>
</body>
</html>