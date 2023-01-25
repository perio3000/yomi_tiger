<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>책검색</title>
<jsp:include page="header.jsp"></jsp:include>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,-25" />

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.3.js"
	integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM="
	crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/ebf4d50ec6.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="css/reset.css">
<link rel="stylesheet" type="text/css" href="css/search.css">
<script src="js/search.js"></script>
</head>
<body>
	
	<section>
		<div class="search-contents-header">
			<div class="search-header">
				<div class="search-title">
					<p>
						<span class="searched-bookname">'주술회전'</span> 
						에 대한<span id="searched-count">152</span>개의 검색 결과
					</p>
				</div>
				<div class="search-banner">
					<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="true">
						<div class="carousel-indicators">
							<button type="button" data-bs-target="#carouselExampleIndicators"
								data-bs-slide-to="0" class="active" aria-current="true"
								aria-label="Slide 1"></button>
							<button type="button" data-bs-target="#carouselExampleIndicators"
								data-bs-slide-to="1" aria-label="Slide 2"></button>
							<button type="button" data-bs-target="#carouselExampleIndicators"
								data-bs-slide-to="2" aria-label="Slide 3"></button>
							<button type="button" data-bs-target="#carouselExampleIndicators"
							data-bs-slide-to="3" aria-label="Slide 4"></button>
						</div>
						<div class="carousel-inner">
							<div class="carousel-item active">
								<img src="https://contents.kyobobook.co.kr/display/i_1200_150%20(5)_c7eec86864f542e19dcedfd40577ffbb.jpg" class="d-block w-100" alt="...">
							</div>
							<div class="carousel-item">
								<img src="https://contents.kyobobook.co.kr/display/i_1200_150_5c223d82931447098c9b9fba98231cd9_58fba04b7de14d8d995dc613edc019ea.jpg" class="d-block w-100" alt="...">
							</div>
							<div class="carousel-item">
								<img src="https://contents.kyobobook.co.kr/display/i_1200_150_4c8ef027e8074ae78358e2b1ee9e5138.jpg" class="d-block w-100" alt="...">
							</div>
							<div class="carousel-item">
								<img src="https://contents.kyobobook.co.kr/display/bnM_i06_3f3c072dc9424637af5e3203d65d966b.jpg" class="d-block w-100" alt="...">
							</div>
						</div>
						<button class="carousel-control-prev" type="button"
							data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
							<span class="carousel-control-prev-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Previous</span>
						</button>
						<button class="carousel-control-next" type="button"
							data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Next</span>
						</button>
					</div>
				</div>
			</div>
		</div>
		
		<div class="search-contents">
			<div class="search-nav">
				<ul class="nav nav-tabs nav-justified">
					<li class="nav-item">
						<a class="nav-link search-nav-link  search-total active" aria-current="page" href="#">통합검색<span>(1,502)</span></a></li>
					<li class="nav-item"><a class="nav-link search-domestic search-nav-link" href="#">국내도서<span>(30)</span></a></li>
					<li class="nav-item"><a class="nav-link search-overseas search-nav-link" href="#">해외도서<span>(100)</span></a></li>
					<li class="nav-item"><a class="nav-link search-ebook search-nav-link" href="#">eBook<span>(445)</span></a></li>
				</ul>
			</div>
			
			<div class="search-view">
				<div class="view-mid-head">
				
					<p>전체 <span>152</span>건</p>
				</div>
				
			</div>
			
		</div>


	</section>
	


	<footer> 푸터 </footer>
</body>
</html>