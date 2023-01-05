<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="mypage.js"></script>
<link rel="stylesheet" type="text/css" href="reset.css">
<link rel="stylesheet" type="text/css" href="mypage.css">
</head>
<body>
	<main class="container">
		<div class="row" id="breadcrumb">
			<nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="#">Home</a></li>
					<li class="breadcrumb-item active" aria-current="page">마이페이지</li>
				</ol>
			</nav>
		</div>
		<div class="row">
			<div class="col-3 text-center">
				<div>
					<img src="logo.png" class="rounded-circle" width="100px" height="100px">
				</div>
				<div class="name">
					'요미타이거'님
				</div>
				<div class="row d-flex justify-content-center">
					<div class="card profile">
						<div class="row">
							<div class="col">
								찜<br> 0
							</div>
							<div class="col">
								리스트<br> 0
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-9">
				<div class="row">
				
					<div class="btn-group flex" role="group" aria-label="Basic radio toggle button group">
						<input type="radio" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off" checked> 
						<label class="btn btn-outline-primary" for="btnradio1">알림</label> 
						<input type="radio" class="btn-check" name="btnradio" id="btnradio2" autocomplete="off"> 
						<label class="btn btn-outline-primary" for="btnradio2">추천</label>
					</div>
					
				</div>
				<div class="row">
					<div class="col-4 book_recommand1">
					추천도서1
					</div>
					<div class="col-4 book_recommand2">
					추천도서2
					</div>
					<div class="col-4 book_recommand3">
					추천도서3
					</div>
				</div>
			</div>
		</div>
		
		<div class="row">
			<div class="col-3">
			<a href="#">마이페이지</a><br>
			<a href="#">주문 배송 목록</a><br>
			<a href="#">포인트</a><br>
			<a href="#">활동내역</a><br>
			<a href="#">문의내역</a><br>
			<a href="#">회원정보</a><br>
			<br>
			<a href="#">서재</a>
			</div>
			<div class="col-9">
				<div class="row">
				포인트
				</div>
				<div class="row">
				포인트 상세
				</div>
				<div class="row">
					<div class="col">
					서재
					</div>
					<div class="col text-end">
					<a href="#"> 더보기 > </a>
					</div>
				</div>
				<div class="row">
					<div class="col-4">
					보관함
					</div>
					<div class="col-8">
					리스트 추가
					</div>
				</div>
				<div class="row">
					<div class="col-4">
					이어보기
					</div>
					<div class="col-8">
					바로가기
					</div>
				</div>
				<div class="row">
					<div class="col-4">
					이어보기 상세
					</div>
					<div class="col-8">
					바로가기 상세
					</div>
				</div>
			</div>
		</div>
	</main>
</body>
</html>