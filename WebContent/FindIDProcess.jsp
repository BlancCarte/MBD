<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>아이디찾기 프로세스</title>
</head>
<body>
	<jsp:useBean id="findID" class="user.MBD_Find" />
	<%
	request.setCharacterEncoding("utf-8");
	String NAME = request.getParameter("findName");
	String PHONE_1 = request.getParameter("findPhone_1");
	String PHONE_2 = request.getParameter("findPhone_2");
	String PHONE_3 = request.getParameter("findPhone_3");
	String PHONE_4 = PHONE_1 + '-' + PHONE_2 + '-' + PHONE_3;

	String m = findID.findID(NAME, PHONE_4);
	response.sendRedirect("./FindID.jsp?m=" + m);
	%>
</body>
</html>


