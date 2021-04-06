<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.io.*"%>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 프로세스</title>
</head>
<body>

	<jsp:useBean id="loginCheck" class="user.MBD_Login" />
	<%
	request.setCharacterEncoding("utf-8");
	String ID = request.getParameter("userID");
	String PW = request.getParameter("userPW");

	int m = loginCheck.idCheck(ID, PW);
	if (m == 1) {
		session.setAttribute("userID", ID);
		response.sendRedirect("MainWeb.jsp");
	}

	else if (m == 0) {

		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('비밀번호가 틀립니다.')");
		script.println("history.back()");
		script.println("</script>");

	} else {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('회원가입을 진행해주세요')");
		script.println("history.back()");
		script.println("</script>");
	}
	%>
</body>
</html>