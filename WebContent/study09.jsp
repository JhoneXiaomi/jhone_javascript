<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta lang="en">
    <meta charset="UTF-8">
    <title>WebGL study</title>
</head>
<body>

	<script>
	
		// 冒泡排序
		
		var arr=[79,90,56,4];
		var flag = false;
		console.info(arr.length);
		// 大排序次数
		for(var i = 0;i<arr.length-1;i++){
			document.writeln("大循环次数"+i+"</br>");
			for(var j = 0;j<arr.length-1-i;j++){
				if (arr[j]<arr[j+1]) {
					// 交換
					var temp = arr[j];
					arr[j] = arr[j+1];
					arr[j+1] = temp;
					flag = true;
				}
			}
			
			if (flag) {
				flag = false;
			} else {
				break;
			}
			
		
		}
		
		for(var i=0;i<arr.length;i++){
			document.writeln(arr[i]+"&nbsp;");
		}
		
		
		// 二分法查询数据
		var arr2 = [0,1,2,3,4,5,6,7,8,9,78];
		var binarySearch = function(arr,findVal,leftIndex,rightIndex){
			
			// 防止无穷递归
			if (leftIndex>rightIndex) {
				document.writeln("找不到");
				return;
			}
			
			// 找到中间值
			var midIndex = Math.floor((leftIndex+rightIndex)/2);
			var midVal = arr2[midIndex];
			
			// 比较
			if (midVal>findVal) {
				// 在左边查找
				binarySearch(arr,findVal,leftIndex,midIndex-1);
			} else if (midIndex<findVal){
				// 在右边查找
				binarySearch(arr,findVal,midIndex+1,leftIndex);
			} else {
				// 返回需要寻找的值的下标
				document.writeln("找到下标为："+midIndex);
			}
		
		}
		// 调用查找函数
		binarySearch(arr,2,0,arr2.length-1);
		
		
		
		// 换行处理
		document.writeln("<br/>");
		// 矩阵转制
		var arr3 = [[1,2,3],[4,5,6],[7,8,9]];
		// 定义一个新的数组
		var arr3_2 = [];
		// 初始化，定义有多少行
		for(var i = 0;i<arr3[0].length;i++){
			arr3_2[i] = [];
		}
		// 动态添加数据，遍历旧的数据
		for(var i = 0;i<arr3.length;i++){
			for(var j=0;j<arr3[i].length;j++){
				arr3_2[j][i] = arr3[i][j];
			}
		}
		for(var i = 0;i<arr3_2.length;i++){
			for(var j=0;j<arr3_2[i].length;j++){
				document.writeln(arr3_2[i][j]+"&nbsp;");
			}
			document.writeln("<br/>");
		}
	</script>
</body>
</html>