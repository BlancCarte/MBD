<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>네비게이션 바</title>
<link href=".\css\navbar-top-fixed.css" rel="stylesheet">
<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>

</head>

<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
	<div class="container-fluid">
		<a class="navbar-brand" href="MainWeb.jsp"><img
			src=".\image\logo.png" width="100" height="50" border="0"> </a>

		<button class="navbar-toggler	" type="button"
			data-bs-toggle="collapse" data-bs-target="#navbarCollapse"
			aria-controls="navbarCollapse" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarCollapse">
			<ul class="navbar-nav me-auto mb-2 mb-md-0">
				<li class="nav-item"><a class="nav-link" href="MBDWeb.jsp"
					style="color: #FFFFFF; font-weight: bold;">자격증</a></li>

				<li class="nav-item"><a class="nav-link" href="Page.jsp?pageNumber=1"
					style="color: #FFFFFF; font-weight: bold;">게시판</a></li>
			</ul>

			<ul class="navbar-nav navbar-right">
				<li class="nav-item">
					<%
				String ID = (String)session.getAttribute("userID");
				
				if(ID!=null){
					%> <a class="nav-link" href="Logout.jsp"
					style="color: #FFFFFF; font-weight: bold;">로그아웃</a> <%
					}
				else{
					%> <a class="nav-link" href="Login.jsp"
					style="color: #FFFFFF; font-weight: bold;">로그인</a> <%
				}
				%>
				</li>
			</ul>
		</div>
	</div>
</nav>

<script src=".\js\bootstrap.bundle.min.js"></script>