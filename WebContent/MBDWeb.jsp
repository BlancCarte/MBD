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
<title>학과 선택</title>
<link rel="canonical"
	href="https://getbootstrap.com/docs/5.0/examples/album/">

<!-- Bootstrap core CSS -->
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
</head>
<body>

	<%@ include file="NAVbar.jsp"%>

	<main>
		<div class="album py-5 bg-light">
			<div class="container">
				<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3"
					style="padding-top: 80px;">
					<div style="cursor: pointer;"
						onclick="location.href='ErrorPage.jsp'">
						<div class="col">
							<div class="card shadow-sm">
								<svg class="bd-placeholder-img card-img-top" width="100%"
									height="225" xmlns="http://www.w3.org/2000/svg" role="img"
									aria-label="Placeholder: Thumbnail"
									preserveAspectRatio="xMidYMid slice" focusable="false">
            <title>학과1</title>
            <rect width="100%" height="100%" fill="#55595c" />
            <text x="50%" y="50%" fill="#eceeef" dy=".3em">수학과</text></svg>

								<div class="card-body">
									<div class="d-flex justify-content-between align-items-center">
									</div>
								</div>
							</div>
						</div>
					</div>

					<div style="cursor: pointer;"
						onclick="location.href='ErrorPage.jsp'">
						<div class="col">
							<div class="card shadow-sm">
								<svg class="bd-placeholder-img card-img-top" width="100%"
									height="225" xmlns="http://www.w3.org/2000/svg" role="img"
									aria-label="Placeholder: Thumbnail"
									preserveAspectRatio="xMidYMid slice" focusable="false">
            <title>학과2</title>
            <rect width="100%" height="100%" fill="#55595c" />
            <text x="50%" y="50%" fill="#eceeef" dy=".3em">전자물리학과</text></svg>

								<div class="card-body">
									<div class="d-flex justify-content-between align-items-center">
									</div>
								</div>
							</div>
						</div>
					</div>

					<div style="cursor: pointer;"
						onclick="location.href='ErrorPage.jsp'">
						<div class="col">
							<div class="card shadow-sm">
								<svg class="bd-placeholder-img card-img-top" width="100%"
									height="225" xmlns="http://www.w3.org/2000/svg" role="img"
									aria-label="Placeholder: Thumbnail"
									preserveAspectRatio="xMidYMid slice" focusable="false">
            <title>학과3</title>
            <rect width="100%" height="100%" fill="#55595c" />
            <text x="50%" y="50%" fill="#eceeef" dy=".3em">화학과</text></svg>

								<div class="card-body">
									<div class="d-flex justify-content-between align-items-center">
									</div>
								</div>
							</div>
						</div>
					</div>

					<div style="cursor: pointer;"
						onclick="location.href='ErrorPage.jsp'">
						<div class="col">
							<div class="card shadow-sm">
								<svg class="bd-placeholder-img card-img-top" width="100%"
									height="225" xmlns="http://www.w3.org/2000/svg" role="img"
									aria-label="Placeholder: Thumbnail"
									preserveAspectRatio="xMidYMid slice" focusable="false">
            <title>학과4</title>
            <rect width="100%" height="100%" fill="#55595c" />
            <text x="50%" y="50%" fill="#eceeef" dy=".3em">생명과학과</text></svg>

								<div class="card-body">
									<div class="d-flex justify-content-between align-items-center">
									</div>
								</div>
							</div>
						</div>
					</div>

					<div style="cursor: pointer;"
						onclick="location.href='ErrorPage.jsp'">
						<div class="col">
							<div class="card shadow-sm">
								<svg class="bd-placeholder-img card-img-top" width="100%"
									height="225" xmlns="http://www.w3.org/2000/svg" role="img"
									aria-label="Placeholder: Thumbnail"
									preserveAspectRatio="xMidYMid slice" focusable="false">
            <title>학과5</title>
            <rect width="100%" height="100%" fill="#55595c" />
            <text x="50%" y="50%" fill="#eceeef" dy=".3em">식품생명공학과</text></svg>

								<div class="card-body">
									<div class="d-flex justify-content-between align-items-center">
									</div>
								</div>
							</div>
						</div>
					</div>

					<div style="cursor: pointer;"
						onclick="location.href='ListWeb.jsp' ">
						<div class="col">
							<div class="card shadow-sm">
								<svg class="bd-placeholder-img card-img-top" width="100%"
									height="225" xmlns="http://www.w3.org/2000/svg" role="img"
									aria-label="Placeholder: Thumbnail"
									preserveAspectRatio="xMidYMid slice" focusable="false">
            <title>학과6</title>
            <rect width="100%" height="100%" fill="#55595c" />
            <text x="50%" y="50%" fill="#eceeef" dy=".3em">컴퓨터공학과</text></svg>

								<div class="card-body">
									<div class="d-flex justify-content-between align-items-center">
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>

	<%@ include file="Footer2.jsp"%>
</body>
</html>
