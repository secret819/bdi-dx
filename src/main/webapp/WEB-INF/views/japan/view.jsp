<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>스프링테스트</title>
</head>
<body>
<table border="1">
	<thead>
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>주석</th>
		</tr>	
	</thead>
			<tr>
				<td>${j.jpnum}</td>
				<td>${j.jpname}</td>
				<td>${j.jpdesc}</td>
			</tr>
	
	</tbody>

</table>
<button onclick="goList()">리스트로</button>

<script>
	function goList(){
		location.href="/japans";
	}
</script>
</body>
</html>