<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>스프링테스트</title>
</head>
<body>
<form onsubmit="return validate()">

아이디:<input type="text" name="id" id="id" minlength="4" required> <br>

비밀번호:<input type="password" name="pwd" id="pwd" minlength="8" required> <br>

pwdchk:<input type="password" name="pwdChk" id="pwdChk" minlength="8" required> <br>

나이:<input type="number" name="age" id="age" required><br>   

이메일:<input type="text" name="email" id="email" required>

<button>버튼</button>
</form>

<script>
function validate(){
	var pwd = document.getElementById('pwd');
	var pwdChk = document.getElementById('pwdChk');
	var age = document.getElementById('age');
	var email =  document.getElementById('email');
	var regex=/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
	
	if(pwd.value != pwdChk.value){
	  alert("비밀번호체크가 비밀번호와 동일X");
	  return false;
	}
	
	if(age.value<0 || age.value>130){
	  alert('이런 나이는 없는 것 같습니다.');
	  return false;
	}
	  
	if(regex.test(email.value) === false) {  
	   alert("잘못된 이메일 형식입니다.");  
	   return;
	}

	alert('정상적으로 회원가입이 완료');
	return true;
}
</script>

</body>
</html>