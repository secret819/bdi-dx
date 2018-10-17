<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>스프링테스트</title>
</head>
<body>
<script>

au.send({url:'/tests/${param.tiNum}',success:function(res){
	res = JSON.parse(res);
	console.log(res);
}})
</script>
</body>
</html>