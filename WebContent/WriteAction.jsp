
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@page import="java.io.*"%>
<%@page import="user.BbsDao"%>
<%@page import="user.Bbs"%>
<jsp:useBean id="bbs" class="user.Bbs" scope="page" />
<jsp:setProperty name="bbs" property="b_TITLE" />
<jsp:setProperty name="bbs" property="b_CONTENT" />

<html>
<head>
<meta charset="UTF-8">
<title>게시판 글쓰기 유효성검사</title>
</head>
<body>
	<%
			// 입력이 안 된 부분이 있는지 체크한다
			if(bbs.getB_TITLE() == null || bbs.getB_CONTENT() == null){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('입력이 안 된 사항이 있습니다')");
				script.println("history.back()");
				script.println("</script>");
			}else{		
				// 정상적으로 입력이 되었다면 글쓰기 로직을 수행
				BbsDao bbsdao = new BbsDao();
				int result = bbsdao.write(bbs.getB_TITLE(), bbs.getB_CONTENT());
				
				// 데이터베이스 오류
				if(result == -1){
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('글쓰기에 실패했습니다')");
					script.println("history.back()");
					script.println("</script>");
					
				// 글쓰기 정상적으로 실행
				}else {
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('글쓰기 성공')");
					script.println("location.href='page.jsp'");
					script.println("</script>");
				}
			}
	
	%>
</body>
</html>