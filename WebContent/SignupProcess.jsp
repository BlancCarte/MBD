<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 프로세스</title>
</head>
<jsp:useBean id="Signup" class="user.MBD_Signup" />
<body>
	<%
	request.setCharacterEncoding("utf-8");
	String userID = request.getParameter("userID");
	String userPW = request.getParameter("userPW");
	String userName = request.getParameter("userName");
	String userYY = request.getParameter("userYY");
	String userMM = request.getParameter("userMM");
	String userDD = request.getParameter("userDD");
	String userBirth = userYY + userMM + userDD;
	String userGender = request.getParameter("userGender");
	String userEmail	= request.getParameter("userEmail");
	String userPhone1 = request.getParameter("userPhone1");
	String userPhone2 = request.getParameter("userPhone2");
	String userPhone3 = request.getParameter("userPhone3");
	String userPhone4 = userPhone1 + '-' + userPhone2 + '-' + userPhone3;
	String userPrivAg = request.getParameter("privacyCheck");
	String userAd = request.getParameter("adCheck");
	
	Signup.signUp(userID, userPW, userName, userBirth, userGender, userEmail, userPhone4, userPrivAg, userAd);	
	response.sendRedirect("./MainWeb.jsp");
	%>
</body>
</html>