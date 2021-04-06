<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.79.0">
<title>자격증 페이지</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/5.0/examples/carousel/">

<!-- Bootstrap core CSS -->
<link href=".\\css\\bootstrap.min.css" rel="stylesheet">

<!-- Favicons -->
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
</style>


<!-- Custom styles for this template -->
<link href=".\css\carousel.css" rel="stylesheet">
<script>
    function fun1(){
    	var obj = document.fr
    	url = "List.jsp?id1=" + obj.id1.value;         
        window.open(url,"List.jsp", "toolbar=no, width=1000, height=150, top=150, left=150");
    }
    function fun2(){
    	var obj = document.fr
    	url = "List.jsp?id2=" + obj.id2.value;         
        window.open(url,"List.jsp", "toolbar=no, width=1000, height=150, top=150, left=150");
    }
    function fun3(){
    	var obj = document.fr
    	url = "List.jsp?id3=" + obj.id3.value;         
        window.open(url,"List.jsp", "toolbar=no, width=1000, height=150, top=150, left=150");
    }
    </script>
</head>
<body style="padding-top: 140px;">
	<form method="post" action="List.jsp" name='fr'>
		<main>
			<div class="container marketing">

				<!-- Three columns of text below the carousel -->
				<div class="row">
					<!--  -->
					<div class="col-lg-4">
						<input type="button" class="w-50 btn btn-lg btn-outline-secondary"
							id="id1" value="정보처리기사" onclick="fun1()">
					</div>

					<div class="col-lg-4">
						<input type="button" class="w-50 btn btn-lg btn-outline-secondary"
							id="id2" value="SQLD" onclick="fun2()">
					</div>

					<div class="col-lg-4">
						<input type="button" class="w-50 btn btn-lg btn-outline-secondary"
							id="id3" value="컴활" onclick="fun3()">
					</div>

				</div>
			</div>
		</main>
	</form>
</body>
</html>
