<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.79.0">
<title>로그인</title>


<link href=".\\css\\bootstrap.min.css" rel="stylesheet">

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


<body class="bg-dark">

	<main class="text-center form-signin">
		<form action="LoginProcess.jsp">
			<img class="mb-4" src=".\image\GLASS.png" alt="" width="200"
				height="200">

			<div>

				<div style="margin-bottom: 10px;">
					<label for="userID" class="visually-hidden">아이디</label> <input
						type="text" id="userID" name="userID"
						class="form-control input-lg" placeholder="아이디" required autofocus>
				</div>

				<div style="margin-bottom: 10px;">
					<label for="userPW" class="visually-hidden">비밀번호</label> <input
						type="password" id="userPW" name="userPW"
						class="form-control input-lg" placeholder="비밀번호" required>
				</div>
			</div>

			<button class="w-100 btn btn-lg btn-success"
				style="margin-bottom: 10px;" type="submit">로그인</button>

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
