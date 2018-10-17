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
	var testGrid;
	window.addEventListener('load',function(){
		testGrid = new dhtmlXGridObject('testGrid');
		testGrid.setImagePath('${gridPath}');
		testGrid.setHeader('번호,아이디,이름,생년월일,이메일,취미,주소,휴대전화,나이');
		testGrid.setColumnIds('tinum,tiid,tiname,tibirth,tiemail,tihobby,tiaddress,tiphone,itage');
		testGrid.setColAlign('center,center,center,center,center,center,center,center,center');
		testGrid.setColTypes('ro,ed,ed,ed,ed,ed,ed,ed,ed');
		testGrid.setColSorting('int,str,str,str,str,str,str,str,int');
		testGrid.init();
		au.send({url:'/tests',success:function(res){
			res = JSON.parse(res);
			testGrid.parse(res, 'js');
		}})
	})
</script>
<body>
	<div id="testGrid" style="width:1000px;height:500px;background-color:white;"></div>
</body>
</html>