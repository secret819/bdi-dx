<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>스프링테스트</title>
</head>
<script>
	var dxSignin, dxSignup;
	
	var signinFormData = [
		{type:'fieldset',name:'login',label:'login',inputWidth:'auto',
			list:[
				{type:'input',name:'id',label:'ID',validate:'ValidAplhaNumeric',required:ture},
				{type:'password',name:'pwd',label:'PWD',validate:'ValidAplhaNumeric',required:ture},
				{type:'button',name:'loginbtn',value:'LOGIN'}
			]	
		}
	]
	
	var signupFormData = [
		{type:'fieldset',name:'signup',label:'signup',inputWidth:'auto',
			list:[
				{type:'input',name:'tiid',label:'ID'},
				{type:'input',name:'tipwd',label:'ID'},
				{type:'input',name:'tiname',label:'ID'},
				{type:'date',name:'tibirth',label:'ID'},
				{type:'input',name:'tiemail',label:'ID'},
				{type:'input',name:'tihobby',label:'ID'},
				{type:'input',name:'tiaddress',label:'ID'},
				{type:'input',name:'tiphone',label:'ID'},
				{type:'input',name:'tiage',label:'ID'}
			]	
		}
	]
	
	
	function doInit(){
		var forms = [
			{type:'button', value:'로그인', name:'signinbtn'},
			{type:'button', value:'회원가입', name:'signupbtn'}
		]
		var dxForm = new dhtmlXForm('dxForm',forms);
		dxForm.attachEvent('onButtonClick',function(name){
			if(name=='signinbtn'){
				if(!dxSignin){
					dxSignin = new dhtmlXWindows();
					dxSignin.createWindow('w1', 0, 0, 300, 300);
					dxSignin.window('w1').centerOnScreen();
				}
			} else if(name=='signupbtn'){
				if(!dxSignup){
					dxSignup = new dhtmlXWindows();
					dxSignup.createWindow('w2', 0, 0, 300, 300);
					dxSignup.window('w2').centerOnScreen();
				}
			}
		})
	}
	window.addEventListener('load',doInit);
</script>
<body>
<div id='dxForm' style="width:300px; heigth:200px;"></div>
</body>
</html>