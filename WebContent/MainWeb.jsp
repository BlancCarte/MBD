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
<title>메인 페이지</title>
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

<link href=".\css\carousel.css" rel="stylesheet">
</head>

<body style="padding-top: 0px;">
	<main>
		<div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
			<ol class="carousel-indicators">
				<li data-bs-target="#myCarousel" data-bs-slide-to="0" class="active"></li>
				<li data-bs-target="#myCarousel" data-bs-slide-to="1"></li>
				<li data-bs-target="#myCarousel" data-bs-slide-to="2"></li>
			</ol>

			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src=".\image\IU3.jpg" style="margin-top: 2rem;">
					<div class="container">
						<div class="carousel-caption text-start"
							style="margin-bottom: 0rem;">
							<h1>MBD</h1>
							<p>MBD에 오신 것을 환영합니다.</p>
							<p>
								<a class="btn btn-lg btn-primary" href="Signup.jsp"
									role="button">Sign up</a>
							</p>
						</div>
					</div>
				</div>

				<div class="carousel-item">
					<img src=".\image\Naeun2.jpg" style="margin-top: 2rem;">
					<div class="container">
						<div class="carousel-caption"></div>
					</div>
				</div>

				<div class="carousel-item">
					<img src=".\image\cat.jpg" style="margin-top: 2rem;">
					<div class="container">
						<div class="carousel-caption text-end">
							<h1>One more for good measure.</h1>
							<p>Cras justo odio, dapibus ac facilisis in, egestas eget
								quam. Donec id elit non mi porta gravida at eget metus. Nullam
								id dolor id nibh ultricies vehicula ut id elit.</p>
							<p>
								<a class="btn btn-lg btn-primary" href="#" role="button">Browse
									gallery</a>
							</p>
						</div>
					</div>
				</div>
			</div>

			<a class="carousel-control-prev" href="#myCarousel" role="button"
				data-bs-slide="prev"> <span class="carousel-control-prev-icon"
				aria-hidden="true"></span> <span class="visually-hidden">Previous</span>
			</a> <a class="carousel-control-next" href="#myCarousel" role="button"
				data-bs-slide="next"> <span class="carousel-control-next-icon"
				aria-hidden="true"></span> <span class="visually-hidden">Next</span>
			</a>
		</div>

		<div class="container marketing">
			<div class="row">
				<div class="col-lg-4">
					<div style="cursor: pointer;" onclick="location.href='MBDWeb.jsp'">
						<img class="d-block mx-auto mb-4" src=".\image\IU2.jpg" alt=""
							width="300" height="200">
					</div>

					<h2>자격증</h2>

				</div>

				<div class="col-lg-4">
					<div style="cursor: pointer;"
						onclick="location.href='ErrorPage.jsp'">
						<img class="d-block mx-auto mb-4" src=".\image\Naeun.png" alt=""
							width="300" height="200">
					</div>

					<h2>자료실</h2>

				</div>

				<div class="col-lg-4">
					<div style="cursor: pointer;" onclick="location.href='Page.jsp'">
						<img class="d-block mx-auto mb-4" src=".\image\EUNBI.png" alt=""
							width="300" height="200">
					</div>

					<h2>게시판</h2>

				</div>
			</div>
		</div>
	</main>
	<%@ include file="Footer2.jsp"%>
</body>
</html>
