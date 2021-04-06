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
<title>비밀번호 찾기</title>
<link rel="canonical"
	href="https://getbootstrap.com/docs/5.0/examples/checkout/">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css">

<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

body {
	color: #FFFFFF
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>

<script>function FindConfirm(n){confirm(n)}; </script>

</head>

<body class="bg-dark">
	<%@ include file="NAVbar.jsp"%>
	<div class="container">
		<main>
			<div class="py-5 text-center">
				<img class="d-block mx-auto mb-4" src=".\image\Naeun.png" alt=""
					width="150" height="100">
				<h2>비밀번호 찾기</h2>
				<p class="lead">MBD Project 비밀번호 찾기 테스트 페이지</p>
			</div>

			<div class="row g-3">
				<div class="col-sm-6 center-block"
					style="float: none; margin: 0 auto;">
					<h4 class="mb-3">비밀번호 찾기</h4>
					<form action="FindPWProcess.jsp">

						<div class="row g-3">
							<div class="col-sm-12">
								<label for="NAME" class="form-label">이름</label> <input
									type="text" class="form-control" id="findName" name="findName"
									placeholder="이름" value="" required>
								<div class="invalid-feedback">이름을 입력해주세요.</div>
							</div>

							<div>
								<div class=row>
									<label for="PHONE" class="form-Label">휴대전화</label>
									<div class="col-4">
										<select class="form-select" id="findPhone_1"
											name="findPhone_1" required>
											<option value="">선택</option>
											<option>010</option>
											<option>011</option>
											<option>016</option>
											<option>017</option>
											<option>018</option>
											<option>019</option>
										</select>
										<div class="invalid-feedback">번호가 올바르지 않습니다.</div>
									</div>

									<div class="col-md-4">
										<input type="text" class="form-control" id="findPhone_2"
											name="findPhone_2" placeholder="" required>
										<div class="invalid-feedback">번호가 올바르지 않습니다.</div>
									</div>

									<div class="col-md-4">
										<input type="text" class="form-control" id="findPhone_3"
											name="findPhone_3" placeholder="" required>
										<div class="invalid-feedback">번호가 올바르지 않습니다.</div>
									</div>
								</div>
							</div>

							<div class="col-sm-12" style="margin-bottom: 2rem;">
								<label for="ID" class="form-label">ID</label> <input type="text"
									class="form-control" id="findID" name="findID"
									placeholder="아이디" value="" required>
								<div class="invalid-feedback">ID를 입력해주세요.</div>
							</div>
						</div>

						<button class="w-100 btn btn-lg btn-success"
							style="margin-bottom: 10px;" type="submit">비밀번호 찾기</button>

						<div class="text - center"
							Style="text-align: center; margin: 0; padding: 0;">
							<ul class="list-inline">
								<li class="list-inline-item"><a href="FindID.jsp"
									style="text-decoration: none; color: #5CB85C">ID 찾기</a></li>
								<li class="list-inline-item"><a href="Signup.jsp"
									style="text-decoration: none; color: #5CB85C">회원가입</a></li>
							</ul>
						</div>

						<%			
						if (request.getParameter("n") != null){
						String n= request.getParameter("n");							
						if(n.equals("-1"))
							out.println("<script>FindConfirm('시스템상 오류입니다.');</script>");		
						else if(n.equals("1"))
							out.println("<script>FindConfirm('해당하는 PW가 없습니다.');</script>");
							else{						
							%>

						<script>FindConfirm('<%="PW는 "+n+"입니다."%>');</script>

						<%
					} 
						}
					%>
						<%@ include file="Footer.jsp"%>
					</form>
				</div>
			</div>
		</main>
	</div>
</body>
</html>