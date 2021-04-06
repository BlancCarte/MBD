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
<title>게시판 글쓰기</title>
<link rel="canonical"
	href="https://getbootstrap.com/docs/5.0/examples/dashboard/">

<!-- Bootstrap core CSS -->
<link href=".\\css\\bootstrap.min.css" rel="stylesheet">

<%@ include file="NAVbar.jsp"%>
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

th, td {
	text-align: center;
}

pagination a.active {
	background-color: secondary;
	color: secondary;
}

#footer {
	position: absolute;
	bottom: 0;
	width: 100%;
	height: 70px;
	background: #ccc;
}
</style>

<link href="css/bootstrap.css">
</head>

<body>
	<div class="container-fluid" style="padding: 100px;">
		<div class="row">
			<form method="post" action="WriteAction.jsp">
				<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4"
					style="margin-right: 111px;">

					<h2>게시판</h2>
					<table class="table table-striped table-sm">
						<thead>
							<tr>
								<th>게시판 글쓰기 양식</th>
							</tr>
						</thead>

						<tbody>
							<tr>
								<td><input type="text" class="form-control"
									placeholder="글 제목" name="b_TITLE" maxlength="50"></td>
							</tr>

							<tr>
								<td><textarea class="form-control" placeholder="글 내용"
										name="b_CONTENT" maxlength="2048" style="height: 350px;"></textarea></td>
							</tr>
						</tbody>
					</table>

					<a href="Page.jsp" class="btn btn-secondary">목록</a> <input
						type="submit" class="btn btn-secondary pull-right" value="글쓰기"
						style="float: right;">
				</main>
			</form>
		</div>
	</div>
</body>
</html>
