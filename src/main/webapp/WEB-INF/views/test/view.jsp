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
		testGrid = new dhtmlXGridObject('testGrid1');
		testGrid.setImagePath('${gridPath}');
		testGrid.setHeader('번호,아이디,이름,생년월일,이메일,취미,주소,휴대전화,나이');
		testGrid.setColumnIds('tiNum,tiId,tiName,tiBirth,tiEmail,tiHobby,tiAddress,tiPhone,tiAge');
		testGrid.setColAlign('center,center,center,center,center,center,center,center,center');
		testGrid.setColTypes('ro,ro,ed,ed,ed,ed,ed,ed,ed');
		testGrid.setColSorting('int,str,str,str,str,str,str,str,int');
		testGrid.init();
		au.send({url:'/tests/${param.tiNum}',success:function(res){
			res = JSON.parse('[' + res + ']');
			console.log(res);
			testGrid.parse(res, 'js');
		}})
	})
</script>
<body>
	<div id="testGrid1" style="width:1000px;height:500px;background-color:white;"></div>
	<button>수정</button>
	<button onclick="goDelete()">삭제</button>
	<button onclick="goList()">리스트로</button>

<script>
	function goList(){
		location.href="/uri/test/list";
	}
	function goDelete(){
		au.send({
			url:'/tests/${param.tiNum}',
			method:'DELETE',
			success : function(res){
				alert('삭제를 성공했습니다.');
				goList();
			}})
	}
</script>
</body>
</html>