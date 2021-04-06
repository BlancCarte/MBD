<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.79.0">
<title>메인(로그인)</title>



<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet">

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


<!-- Custom styles for this template -->
<link href=".\css\signin.css" rel="stylesheet">


</head>

<%@ include file="NAVbar.jsp"%>
<body class="text-center bg-dark">
	<main class="form-signin">
		<form action="LoginProcess.jsp">
			<img class="mb-4" src=".\image\EUNBI.png" alt="" width="200"
				height="200">

			<ul class="list-inline">
				<li class="list-inline-item"><a href="FindID.jsp"
					style="text-decoration: none; color: #5CB85C">아이디 찾기</a></li>
				<li class="list-inline-item"><a href="FindPW.jsp"
					style="text-decoration: none; color: #5CB85C">비밀번호 찾기</a></li>
				<li class="list-inline-item"><a href="Signup.jsp"
					style="text-decoration: none; color: #5CB85C">회원가입</a></li>
			</ul>

			<%@ include file="Footer.jsp"%>

		</form>

	</main>


</body>

</html>
