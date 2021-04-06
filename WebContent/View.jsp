<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.io.*"%>
<%@page import="user.Bbs"%>
<%@page import="user.BbsDao"%>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.79.0">
<title>게시글 상세정보</title>
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
	<%
	// B_NUMBER를 초기화 시키고
	// 'B_NUMBER'라는 데이터가 넘어온 것이 존재한다면 캐스팅을 하여 변수에 담는다
	int B_NUMBER = 0;
	if (request.getParameter("B_NUMBER") != null) {
		B_NUMBER = Integer.parseInt(request.getParameter("B_NUMBER"));
	}

	// 만약 넘어온 데이터가 없다면
	if (B_NUMBER == 0) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('유효하지 않은 글입니다')");
		script.println("location.href='page.jsp'");
		script.println("</script");
	}
	// 유효한 글이라면 구체적인 정보를 'bbs'라는 인스턴스에 담는다
	Bbs bbs = new BbsDao().getBbs(B_NUMBER);
	%>

	<div class="container-fluid" style="padding: 100px;">
		<div class="row">
			<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4"
				style="margin-right: 111px;">
				<h2>게시판</h2>
				<table class="table table-striped table-sm">
					<thead>
						<tr>
							<th colspan="2"
								style="background-color: #cccccc; text-align: center;">게시판
								글 보기</th>
						</tr>
					</thead>

					<tbody>
						<tr>
							<td style="width: 20%;">글 제목</td>
							<td colspan="2"><%=bbs.getB_TITLE().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n",
		"<br>")%></td>
						</tr>

						<tr>
							<td>작성일자</td>
							<td colspan="2"><%=bbs.getB_DATE().substring(0, 11) + bbs.getB_DATE().substring(11, 13) + "시" + bbs.getB_DATE().substring(14, 16)
		+ "분"%></td>
						</tr>
						<tr>
							<td>내용</td>
							<td colspan="2" style="height: 200px; text-align: left;"><%=bbs.getB_CONTENT().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n",
		"<br>")%></td>
						</tr>
					</tbody>
				</table>
				<a href="Page.jsp" class="btn btn-secondary">목록</a> <a
					href="Write.jsp" class="btn btn-secondary" style="float: right;">글쓰기</a>
			</main>
		</div>
	</div>
</body>
</html>
