<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.79.0">
<meta name="theme-color" content="#7952b3">

<link rel="canonical"
	href="https://getbootstrap.com/docs/5.0/examples/dashboard/">

<title>자격증 정보</title>
<link href=".\\css\\bootstrap.min.css" rel="stylesheet">


</head>
<body>
	<div class="container-fluid"
		style="padding-left: 30px; padding-right: 30px; padding-top: 30px;">
		<div class="row">
			<div class="table-responsive">
				<table class="table table-striped table-bordered table-sm">
					<thead>
						<tr>
							<!-- 첫번째 행(디비 테이블 컬럼 명) -->
							<th>자격증 이름</th>
							<th>응시 자격</th>
							<!-- 헤더나 제목이 되는 열은 th사용 나머지 정보를 담는 열은 td -->
							<th>합격 조건</th>
							<th>합격률</th>
							<th>시험 날짜</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<!-- 두번째 행 (저장된 데이터 출력) -->
							<jsp:useBean id="a" class="user.Certificate" />

							<%
            String ID1 = request.getParameter("id1");
            String ID2 = request.getParameter("id2");
            String ID3 = request.getParameter("id3");
           
            if(ID1!=null){%>
							<%
            ArrayList<String> c = a.c_DB(ID1);
            
            for(int k = 0; k < c.size(); k ++){
            %>
							<td width="100"><%= c.get(k) %></td>
							<%} %>
							<%} 
              if(ID2!=null){%>
							<%
            ArrayList<String> c = a.c_DB(ID2);
            
            for(int k = 0; k < c.size(); k ++){
            %>
							<td width="100"><%= c.get(k) %></td>
							<%} %>
							<%} %>
							<%if(ID3!=null){%>
							<%
            ArrayList<String> c = a.c_DB(ID3);
            
            for(int k = 0; k < c.size(); k ++){
            %>
							<td width="100"><%= c.get(k) %></td>
							<%} %>
							<%} %>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>

</body>
</html>