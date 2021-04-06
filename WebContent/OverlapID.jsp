<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<jsp:useBean id="OverlapID" class="user.OverlapID" />
<% request.setCharacterEncoding("utf-8"); %>
<% String id = request.getParameter("id"); %>
<% int m = OverlapID.overlapID(id); %>

<html>
<head>
<meta charset="UTF-8">
<title>id 중복 검사</title>

<script>
function cancleCheckValue(){
	var parent = window.opener;	
	parent.document.getElementById('userID').value="";
	parent.document.getElementById('idDuplication').value="idUncheck";
	self.close();
}

function sendCheckValue(){	
	var parent = window.opener;	
	parent.document.getElementById('idDuplication').value="idCheck";	
	self.close();
}
</script>
</head>

<body>
	<div id="wrap">
		<br> <b><font size="4" color="gray">아이디 중복체크</font></b>
		<hr size="1" width="460">
		<br> <b><%=id %></b>
		<%
	if( m == 1){
%>
		는(은) 이미 사용중인 id 입니다.
		<p />
		<input id="useBtn" type="button" value="사용하기"
			onclick="sendCheckValue()" disabled="disabled"> <input
			id="cancelBtn" type="button" value="취소" onclick="cancleCheckValue()">

		<%
	} 
	else if(id.length() < 4 || id.length() > 10){%>
		는(은) 사용 불가능 합니다. (아이디는 4~10자로 입력해주세요.)
		<p />
		<input id="useBtn" type="button" value="사용하기"
			onclick="sendCheckValue()"> <input id="cancelBtn"
			type="button" value="취소" onclick="cancleCheckValue()">
		<%
	}
	else {
%>
		는(은) 사용 가능 합니다.
		<p />
		<input id="useBtn" type="button" value="사용하기"
			onclick="sendCheckValue()"> <input id="cancelBtn"
			type="button" value="취소" onclick="cancleCheckValue()">

		<%
} 
%>
	</div>
</body>
</html>