<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>스프링테스트</title>
	<style>
		.trans1{
			text-align:center;
			
		}
	</style>
</head>
<body>
<form>

	언어1  : <select id="source">
					<option value="ko">KO</option>
					<option value="en">EN</option>
			</select>
			
	언어2 : <select id="target">
					<option value="ko">KO</option>
					<option value="en">EN</option>
			</select>
			
	번역 내용 : <textarea id="text"></textarea>
	<button type="button" onclick="trans()">번역</button>
	<div class="trans1">
	<br>
	<h3>번역 후 내용</h3> <textarea id="aftertext" style='width:600px; height:200px; font-size:20px;'></textarea>
	</div>
	
</form>
<script>
	function trans(){
		var source = document.querySelector('#source').value;
		var target = document.querySelector('#target').value;
		var text = document.querySelector('#text').value;
		var param = 'source=' + source + '&target=' + target + '&text=' + text;
		var conf = {
				url : encodeURI('/trans?' + param),
				success : function(res){
					res = JSON.parse(res);
					document.querySelector('#aftertext').value = res['message']['result']['translatedText'];
				}
		};
		au.send(conf);
	}
</script>
</body>
</html>