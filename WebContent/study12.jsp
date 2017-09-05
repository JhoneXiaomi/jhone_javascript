<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>RegExp 类型学习</title>
</head>
<body>
	<script type="text/javascript">
		// var expression = /pattern/ flags;
		var str = "3lASDF";
		var pattern = /you (are true(are false)?)?/gi;	
		var matches = pattern.exec(str);
		// alert(matches.input);
		var pattern2 = /^[0-9][a-z]$/;
		alert(str.match(pattern2));
	</script>
</body>
</html>