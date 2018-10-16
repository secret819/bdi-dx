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
			<th>팀이름</th>
			<th>팀설명</th>
			<th>인원</th>
		</tr>	
	</thead>
			<tr>
				<td>${d.dino}</td>
				<td>${d.diname}</td>
				<td>${d.didesc}</td>
				<td>${d.dicnt}</td>
			</tr>
	
	</tbody>

</table>
<button onclick="goList()">리스트로</button>

<script>
	function goList(){
		location.href="/departs";
	}
</script>
</body>
</html>