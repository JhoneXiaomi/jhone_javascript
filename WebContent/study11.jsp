<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DOM 程序编写</title>
</head>
<body>
	<div id="_div" name="name_div">
		<p></p>
		<p></p>
		<p></p>
		<p></p>
		<p></p>
		<p></p>
	</div>
	<script type="text/javascript">
	
	/* var objs = ["jhone","xiaomi"];
	for(var key in objs){
		document.write(objs[key]+'\n');
	} */
	var _div = document.getElementById("_div");
	document.writeln(_div.nodeType);
	document.writeln(_div.nodeName);
	document.writeln(_div.nodeValue);
	document.writeln(_div.childNodes.item(0));
	document.writeln(_div.parentNode.nodeName);
	var _divArray = Array.prototype.slice.call(_div.childNodes,0);
	console.info(_divArray);
	</script>
</body>
</html>