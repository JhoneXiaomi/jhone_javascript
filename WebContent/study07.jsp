<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
	<title>家谱树状代码 demo by js.alixixi.com</title>
	<link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
	<!--
We will create a family tree using just CSS(3)
The markup will be simple nested lists
-->
	<div class="tree">
		<ul>
			<li><a href="#">父亲</a>

				<ul>
					<li><a href="#">孩子1</a>
						<ul>
							<li><a href="#">孙子</a></li>
						</ul></li>
					<li><a href="#">孩子2</a>
						<ul>
							<li><a href="#">孙子1</a></li>
							<li><a href="#">孙子2</a>
								<ul>
									<li><a href="#">曾孙1</a></li>
									<li><a href="#">曾孙2</a></li>
									<li><a href="#">曾孙3</a></li>
									<li><a href="#">曾孙4</a></li>
									<li><a href="#">曾孙5</a></li>
									<li><a href="#">曾孙6</a></li>
								</ul></li>
							<li><a href="#">孙子3</a></li>
						</ul></li>
				</ul></li>
		</ul>
	</div>
</body>
</html>