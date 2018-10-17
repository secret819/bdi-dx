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
				{type:'input',name:'id',label:'ID',validate:'ValidAplhaNumeric',required:true},
				{type:'password',name:'pwd',label:'PWD',validate:'ValidAplhaNumeric',required:true},
				{type:'button',name:'signinbtn',value:'LOGIN'}
			]	
		}
	]
	
	var signupFormData = [
		{type:'fieldset',name:'signup',label:'signup',inputWidth:'auto',
			list:[
				{type:'input',name:'tiid',label:'ID'},
				{type:'input',name:'tipwd',label:'PWD'},
				{type:'input',name:'tiname',label:'NAME'},
				{type:'date',name:'tibirth',label:'BIRTH'},
				{type:'input',name:'tiemail',label:'EMAIL'},
				{type:'input',name:'tihobby',label:'HOBBY'},
				{type:'input',name:'tiaddress',label:'ADDRESS'},
				{type:'input',name:'tiphone',label:'PHONE'},
				{type:'input',name:'tiage',label:'AGE'},
				{type:'button',name:'signupbtn',value:'SIGN_UP'}
			]	
		}
	];
	
	
	function doInit(){
		var forms = [
			{type:'button', value:'로그인', name:'signinbtn_l'},
			{type:'button', value:'회원가입', name:'signupbtn_r'}
		]
		var dxForm = new dhtmlXForm('dxForm',forms);
		dxForm.attachEvent('onButtonClick',function(name){
			if(name=='signinbtn_l'){
				if(!dxSignin){
					dxSignin = new dhtmlXWindows();
					dxSignin.createWindow('w1', 0, 0, 300, 300);
					dxSignin.window('w1').centerOnScreen();
					var signinForm = new dhtmlXForm('signinForm',signinFormData);
					dxSignin.window('w1').attachObject('signinForm');
					dxSignin.window('w1').setText('Sign_in');
					signinForm.attachEvent('onButtonClick',function(name){
						if(name=='signinbtn'){
							if(signinForm.validate()){
								var id = signinForm.getItemValue('id');
								var pwd = signinForm.getItemValue('pwd');
								var conf = {
									url:'/',
									method:'POST',
									param : JSON.stringify({id:id,pwd:pwd}),
									success : function(res){
										res = JSON.parse(res);
										alert(res.msg);
									}
								}
								au.send(conf);
							}
						}
					})
				}
			} else if(name=='signupbtn_r'){
				if(!dxSignup){
					dxSignup = new dhtmlXWindows();
					dxSignup.createWindow('w2', 0, 0, 300, 400);
					dxSignup.window('w2').centerOnScreen();
					var signupForm = new dhtmlXForm('signupForm',signupFormData);
					dxSignup.window('w2').attachObject('signupForm');
					dxSignup.window('w2').setText('Sign_up');
					signupForm.attachEvent('onButtonClick',function(name){
						if(name=='signupbtn'){
							var id = signupForm.getItemValue('tiId');
							var pwd = signupForm.getItemValue('tipwd');
							var name = signupForm.getItemValue('tiname');
							var birth = signupForm.getItemValue('tibirth');
							var email = signupForm.getItemValue('tiemail');
							var hobby = signupForm.getItemValue('tihobby');
							var address = signupForm.getItemValue('tiaddress');
							var phone = signupForm.getItemValue('tiphone');
							var age = signupForm.getItemValue('tiage');
							var conf = {
									url:'/tests/',
									method:'POST',
									param : JSON.stringify({id:id,pwd:pwd,name:name,birth:birth,email:email,hobby:hobby,address:address,phone:phone,age:age}),
									success : function(res){
										res = JSON.parse(res);
										alert(res.msg);
									}
							}
							au.send(conf)
						}
					})
					
				}
			}
		})
	}
	window.addEventListener('load',doInit);
</script>
<body>
<div id='dxForm' style="width:300px; heigth:200px;"></div>
<div id='signinForm' style="width:300px; heigth:300px;"></div>
<div id='signupForm' style="width:300px; heigth:500px;"></div>
</body>
</html>