<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>스프링테스트</title>
<link rel="stylesheet" type="text/css" href="${resPath}/dhtmlx/skins/skyblue/dhtmlx.css">
</head>
<script>
	var jpGrid;
	window.addEventListener('load',function(){
		jpGrid = new dhtmlXGridObject('divGrid');
		jpGrid.setImagePath('${resPath}/dhtmlx/skins/skyblue/imgs/dhxgrid_skyblue/');
		jpGrid.setHeader('번호,이름,주석');			// 보여지는 말그대로 헤더
		jpGrid.setColumnIds('jpnum,jpname,jpdesc');	// 헤더가 겉값이라면 이것은 안에서 사용할 값
		jpGrid.setColAlign('center,center,center');	// 정렬
		jpGrid.setColTypes('ro,ed,ed');				// ed=read only
		jpGrid.setColSorting('int,str,str');		// int 정렬 str정렬
		jpGrid.init();
		au.send({url:'/japans',success:function(res){
			res = JSON.parse(res);
			jpGrid.parse(res, 'js');
			}})
	})
</script>
<body>
	<div id="divGrid" style="width:500px; height:350px; background-color:white;"></div>
</body>
</html>