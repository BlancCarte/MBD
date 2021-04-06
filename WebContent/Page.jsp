<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="user.BbsDao"%>
<%@ page import="user.Bbs"%>
<%@ page import="java.util.*"%>
<jsp:useBean id="bdao" class="user.BbsDao" scope="session" />
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.79.0">
<title>게시판</title>
<link rel="canonical"
	href="https://getbootstrap.com/docs/5.0/examples/dashboard/">

<!-- Bootstrap core CSS -->
<link href=".\\css\\bootstrap.min.css" rel="stylesheet">

<%@ include file="NAVbar.jsp"%>

<style type="text/css">
a, a:hover {
	color: #000000;
	text-decoration: none;
}

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
		int pageNumber = 1; //기본은 1 페이지를 할당
		// 만약 파라미터로 넘어온 오브젝트 타입 'pageNumber'가 존재한다면
		// 'int'타입으로 캐스팅을 해주고 그 값을 'pageNumber'변수에 저장한다
		if(request.getParameter("pageNumber") != null){
			pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
		}
	%>

	<div class="container-fluid" style="padding: 100px;">
		<div class="row">
			<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4"
				style="margin-right: 111px;">
				<h2>게시판</h2>
				<div class="table-responsive">
					<table class="table table-striped table-sm">
						<thead>
							<tr>
								<th width="20%">번호</th>
								<th width="60%">제목</th>
								<th width="20%">작성일</th>
							</tr>
						</thead>

						<tbody>
							<%
						
						ArrayList<Bbs> list = bdao.getList(pageNumber);
						for(int i = 0; i < list.size(); i++){
					%>
							<tr>
								<td><%= list.get(i).getNUMBER() %></td>
								<!-- 게시글 제목을 누르면 해당 글을 볼 수 있도록 링크를 걸어둔다 -->
								<td><a
									href="View.jsp?B_NUMBER=<%= list.get(i).getNUMBER() %>"> <%= list.get(i).getB_TITLE() %></a></td>
								<td><%= list.get(i).getB_DATE().substring(0, 11) + list.get(i).getB_DATE().substring(11, 13) + "시"
							+ list.get(i).getB_DATE().substring(14, 16) + "분" %></td>
							</tr>
							<%
						}
					%>
						</tbody>
					</table>

					<%
				if(pageNumber != 1){
			%>
					<a href="Page.jsp?pageNumber=<%=pageNumber - 1 %>"
						class="btn btn-success btn-arraw-left">이전</a>
					<%
				}if(bdao.nextPage(pageNumber + 1)){
			%>
					<a href="Page.jsp?pageNumber=<%=pageNumber + 1 %>"
						class="btn btn-success btn-arraw-left">다음</a>
					<%
				}
			%>

					<a href="Write.jsp" class="btn btn-secondary" style="float: right;">글쓰기</a>
				</div>
			</main>
		</div>
	</div>

	<%@ include file="Footer2.jsp"%>
</body>
</html>
