<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>스프링테스트</title>
<link rel="stylesheet" type="text/css"
	href="${resPath}/dhtmlx/skins/skyblue/dhtmlx.css">
</head>
<script>
	var view;
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
			view = res;
			testGrid.selectRow(0);
		}})
	})
</script>
<body>
	<div id="testGrid1"
		style="width: 1000px; height: 60px; background-color: white;"></div>
	<button onclick="goUpdate()">수정</button>
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
	function goUpdate(){
		var rowId = testGrid.getSelectedRowId();
		var data =testGrid.getRowData(rowId);
		console.log(data);
		var upFormData = [
			{type:'fieldset',name:'update',label:'update',inputWidth:'auto',
				list:[
					{type:'input',name:'tiName',label:'NAME', value:data.tiName},
					{type:'input',name:'tiBirth',label:'BIRTH', value:data.tiBirth},
					{type:'input',name:'tiEmail',label:'EMAIL', value:data.tiEmail},
					{type:'input',name:'tiHobby',label:'HOBBY', value:data.tiHobby},
					{type:'input',name:'tiAddress',label:'ADDRESS', value:data.tiAddress},
					{type:'input',name:'tiPhone',label:'PHONE', value:data.tiPhone},
					{type:'input',name:'tiAge',label:'AGE', value:data.tiAge},
					{type:'button',name:'updatebtn',value:'UPDATE'}
				]	
			}
		];
		if(!upWindow){
			var upWindow = new dhtmlXWindows();
			upWindow.createWindow('w3',0,0,260,340);
			upWindow.window('w3').centerOnScreen();
			var upForm = new dhtmlXForm('upForm',upFormData);
			upWindow.window('w3').attachObject('upForm');
			upWindow.window('w3').setText('update');
			upWindow.window('w3').attachEvent('onClose',function(win){
				win.hide();
				return;
			})
			upForm.attachEvent('onButtonClick',function(name){
				if(name=='updatebtn'){
					var num = ${param.tiNum}
					var name = upForm.getItemValue('tiName');
					var birth = upForm.getItemValue('tiBirth');
					var email = upForm.getItemValue('tiEmail');
					var hobby = upForm.getItemValue('tiHobby');
					var address = upForm.getItemValue('tiAddress');
					var phone = upForm.getItemValue('tiPhone');
					var age = upForm.getItemValue('tiAge');
					var conf = {
							url:'/tests/'+num,
							method:'PUT',
							param : JSON.stringify({tiName:name,tiBirth:birth,tiEmail:email,tiHobby:hobby,tiAddress:address,tiPhone:phone,tiAge:age}),
							success : function(res){
								res = JSON.parse(res);
								alert('수정이 완료되셨습니다.');
								location.href='/uri/test/view?tiNum='+${param.tiNum};
							}
					}
					au.send(conf)
				}
			})
		}else {
			upWindow.window('w3').show();
		}
	}

</script>
	<div id='upForm' style="width: 300px; heigth: 150px";></div>
</body>
</html>

<!-- }else {
			upWindow.window('w3').show();
		} -->