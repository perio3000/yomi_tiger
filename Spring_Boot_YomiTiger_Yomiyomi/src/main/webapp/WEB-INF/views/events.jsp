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
<link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
<jsp:include page="header.jsp"></jsp:include>

<meta charset="UTF-8">
<title>이벤트</title>

<link rel="stylesheet" type="text/css" href="css/reset.css">
<link rel="stylesheet" type="text/css" href="css/events.css">
</head>
<body>
	<div class="container">
	  <br>
	  
		<div class="row">
			<div class="col-md-5 title">
				이벤트
			</div>
		</div>
		
		<div class="row">
			<div class="d-flex justify-content-end">
				<form class="search-form searchForm" role="search">
					<input class="search-control searchControl" type="search" placeholder="이벤트, 상품명으로 검색해 보세요." aria-label="Search">
					<button class="search-btn searchBtn" type="submit">
						<i class="fa fa-search" aria-hidden="true"></i>
					</button>
				</form>
			</div>
		</div>
		
		<div class="row">
			<div class="col">
				<div class="d-flex justify-content-center align-items-center" style="height: 100px; border: 1px solid #F4EEFF;">
					<a class="btn btn-primary" href="#" role="button">전체</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a class="btn btn-primary" href="#" role="button">국내도서</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a class="btn btn-primary" href="#" role="button">외국도서</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a class="btn btn-primary" href="#" role="button">E-Book</a>
	   			</div>
   			 </div>
		</div>
		
		<br>
		<div class="row">
			<div class="col">
				<a class="col count">100건</a>
			</div>
			<div class="col">
				<div class="d-flex justify-content-end">
					<div class="btn-group" role="group" aria-label="Basic radio toggle button group">
					  <input type="radio" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off" checked>
					  <label class="btn btn-outline-primary" for="btnradio1">진행</label>
					
					  <input type="radio" class="btn-check" name="btnradio" id="btnradio2" autocomplete="off">
					  <label class="btn btn-outline-primary" for="btnradio2">종료</label>
					</div>
				</div>
			</div>
		</div>
		<hr>
		
		<br>
		<div class="row">
			<div class="col">
				<img class="rounded" src="logo/events/50percent_coupon.jpg" width="350px" height="150px"><br>
				<a class="eventTitle" href="#">신규 오픈 기념 50% 할인 쿠폰</a><br>
				<a class="period">2023.01.17~2023.02.28</a>
			</div>
			<div class="col">
				<img class="rounded" src="logo/events/all_10percent_coupon.jpg" width="350px" height="150px"><br>
				<a class="eventTitle" href="#">전 회원 10% 할인 쿠폰</a><br>
				<a class="period">2023.01.17~2023.05.31</a>
			</div>
			<div class="col">
				<img class="rounded" src="logo/events/mission_20percent_coupon.jpg" width="350px" height="150px"><br>
				<a class="eventTitle" href="#">미션 달성 시 20% 할인 쿠폰</a><br>
				<a class="period">2023.01.17~2023.01.31</a>
			</div>
		</div>
		
		<br>
		<div class="row">
			<div class="col">
				<img class="rounded" src="logo/events/50percent_coupon.jpg" width="350px" height="150px"><br>
				<a class="eventTitle" href="#">신규 오픈 기념 50% 할인 쿠폰</a><br>
				<a class="period">2023.01.17~2023.02.28</a>
			</div>
			<div class="col">
				<img class="rounded" src="logo/events/all_10percent_coupon.jpg" width="350px" height="150px"><br>
				<a class="eventTitle" href="#">전 회원 10% 할인 쿠폰</a><br>
				<a class="period">2023.01.17~2023.05.31</a>
			</div>
			<div class="col">
				<img class="rounded" src="logo/events/mission_20percent_coupon.jpg" width="350px" height="150px"><br>
				<a class="eventTitle" href="#">미션 달성 시 20% 할인 쿠폰</a><br>
				<a class="period">2023.01.17~2023.01.31</a>
			</div>
		</div>
		<br>
		
		<div class="row">
			<div class="d-flex justify-content-center align-items-center">
				<nav aria-label="Page navigation example">
				  <ul class="pagination pagination">
				    <li class="page-item">
				      <a class="page-link" href="#" aria-label="Previous">
				        <span aria-hidden="true">&laquo;</span>
				      </a>
				    </li>
				    <li class="page-item"><a class="page-link" href="#">1</a></li>
				    <li class="page-item"><a class="page-link" href="#">2</a></li>
				    <li class="page-item"><a class="page-link" href="#">3</a></li>
				    <li class="page-item"><a class="page-link" href="#">4</a></li>
				    <li class="page-item"><a class="page-link" href="#">5</a></li>
				    <li class="page-item">
				      <a class="page-link" href="#" aria-label="Next">
				        <span aria-hidden="true">&raquo;</span>
				      </a>
				    </li>
				  </ul>
				</nav>
			</div>
		</div>
		<br><br>
		
	</div>
</body>
</html>