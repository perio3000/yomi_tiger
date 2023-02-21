<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="header.jsp"></jsp:include>
<link rel="icon" href="/logo/logo.png" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>YOMIYOMI-홈</title>
<script type="text/javascript" src="/js/mypage.js"></script>
<link rel="stylesheet" type="text/css" href="/css/reset.css">
<link rel="stylesheet" type="text/css" href="/css/mypage.css">
<link rel="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">

</head>
<body>

	
	
	<main class="container">
		<div class="row" id="breadcrumb">
			<nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item active" aria-current="page">Home</li>
				</ol>
			</nav>
		</div>

		<div id="carouselExampleIndicators" class="carousel slide"
			data-bs-ride="true">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#carouselExampleIndicators"
					data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#carouselExampleIndicators"
					data-bs-slide-to="1" aria-label="Slide 2"></button>
				<button type="button" data-bs-target="#carouselExampleIndicators"
					data-bs-slide-to="2" aria-label="Slide 3"></button>
				<button type="button" data-bs-target="#carouselExampleIndicators"
					data-bs-slide-to="3" aria-label="Slide 4"></button>
				<button type="button" data-bs-target="#carouselExampleIndicators"
					data-bs-slide-to="4" aria-label="Slide 5"></button>
			</div>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img onclick="javascript:newin=window.open('https://www.naver.com')" class="btn d-block w-100" src="http://image.kyobobook.co.kr/newimages/adcenter/IMAC/creatives/2023/01/10/72889/new_book_1.jpg">
				</div>
				<div class="carousel-item">
					<img onclick="javascript:newin=window.open('https://www.naver.com')" class="btn d-block w-100" src="https://contents.kyobobook.co.kr/pmtn/2023/banner/230112/i_1624_450_2.jpg">
				</div>
				<div class="carousel-item">
					<img onclick="javascript:newin=window.open('https://www.naver.com')" class="btn d-block w-100" src="https://contents.kyobobook.co.kr/pmtn/2023/banner/230117/i_1624_450_1.jpg">
				</div>
				<div class="carousel-item">
					<img onclick="javascript:newin=window.open('https://www.naver.com')" class="btn d-block w-100" src="https://contents.kyobobook.co.kr/pmtn/2023/banner/230106/i_1624_450_3.jpg">
				</div>
				<div class="carousel-item">
					<img onclick="javascript:newin=window.open('https://www.naver.com')" class="btn d-block w-100" src="https://contents.kyobobook.co.kr/pmtn/2022/event/7a7d35126fb047338c5a7ee19e11583c.jpg">
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
		<br><br>
		<div id="newProducts" class="row">
			<div class="col">
				<span class="newProductsTitle">화제의 신상</span>
			</div>
			<div class="col-md-1" >
				<div class="d-flex justify-content-end align-items-end" style="height: 48px;">
					<a class="newProductsMore" href="/store/listnew?sort=datetime">더보기 ></a>
				</div>
			</div>
		</div>
		<br>
		<div class="d-flex justify-content-center">
			<div>
				<ul class="row" id="testList">
					<c:forEach var="itemList" items="${ list }">
						<li class="col mb-5 text-center">
							<a class="bookName" href="/store/detail?id=${ itemList.id }">
							<img src="${ itemList.thumbnail }" width="210px" height="270px"></a><br>
							<a class="bookName" href="/store/detail?id=${ itemList.id }">${ itemList.title }</a><br>
							<span class="bookAuthor">${ itemList.authors }, ${ itemList.publisher }</span><br>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div> 
		<div id="bestProducts" class="row">
			<div class="col-md-11">
				<span class="bestProductsTitle">베스트 상품</span>
			</div>
			<div class="col-md-1">
				<div class="d-flex justify-content-end align-items-end" style="height: 48px;">
					<a class="bestProductsMore" href="/store/listbest?sort=star">더보기 ></a>
				</div>
			</div>
		</div>
		<br>	
		<div class="d-flex justify-content-center">
			<div>
				<ul class="row" id="testList">
					<c:forEach var="bestList" items="${ best }">
						<li class="col mb-5 text-center">
							<a class="bookName" href="/store/detail?id=${ bestList.id }">
							<img src="${ bestList.thumbnail }" width="210px" height="270px"></a><br>
							<a class="bookName" href="/store/detail?id=${ bestList.id }">${ bestList.title }</a><br>
							<span class="bookAuthor">${ bestList.authors }, ${ bestList.publisher }</span><br>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</main>
	<!-- <div style="height: 150px"></div> -->
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>