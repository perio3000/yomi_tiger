<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="/logo/logo.png" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
<script type="text/javascript" src="/js/booklist.js"></script>
<jsp:include page="header.jsp"></jsp:include>

<meta charset="UTF-8">
<title>책 리스트</title>

<link rel="stylesheet" type="text/css" href="/css/reset.css">
<link rel="stylesheet" type="text/css" href="/css/booklist.css">
</head>
<body>
	<main class="container">
	<br><br>
		<div class="row">
			<div class="col-md-2 bookTitle">
				신상품
			</div>
			<div class="col-md-4">
				<div class="d-flex align-items-center" style="height: 48px">
				<!-- 라디오 버튼으로 해야할 것 같은데 라디오가 뭔가 안됩니다. ㅇㅅaㅇ 알아봐야돼 -->
					<button type="button" class="btn btn-outline-primary btn-sm" id="bookBtn">국내도서</button>&nbsp;&nbsp;
					<button type="button" class="btn btn-outline-primary btn-sm" id="bookBtn">해외도서</button>&nbsp;&nbsp;
					<button type="button" class="btn btn-outline-primary btn-sm" id="bookBtn">eBook</button>&nbsp;&nbsp;
					
					<!-- <input type="radio" class="btn-check bookBtn1" name="options-outlined" id="success-outlined" autocomplete="off" checked>
					<label class="btn btn-outline-success" for="success-outlined">국내도서</label>&nbsp;&nbsp;
					<input type="radio" class="btn-check bookBtn2" name="options-outlined" id="success-outlined" autocomplete="on">
					<label class="btn btn-outline-success" for="success-outlined">해외도서</label>&nbsp;&nbsp;
					<input type="radio" class="btn-check bookBtn3" name="options-outlined" id="success-outlined" autocomplete="off">
					<label class="btn btn-outline-success" for="success-outlined">eBook</label>&nbsp;&nbsp;
					<input type="radio" class="btn-check" name="options-outlined" id="danger-outlined" autocomplete="off">
					<label class="btn btn-outline-danger" for="danger-outlined">Danger radio</label> -->
				</div>
			</div>
		</div>
		<hr>
		<div class="row">
			<div class="col-md-6">
				<!-- 이거 선택하면 쟤로 바뀌게 해야 되는 것 같은데 잘 모루겠어요.... 얘도 찾아봐야됨.. 내가 한 건 아무것도 없는 상태 되어버림.-->
				<div class="btn-group">
				  <button id="yearDropdown" class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" data-bs-auto-close="true" aria-expanded="false">
				    2023년
				  </button>
				  <ul id="year" class="dropdown-menu">
				    <li><a class="dropdown-item">2022년</a></li>
				    <li><a class="dropdown-item">2021년</a></li>
				    <li><a class="dropdown-item">2020년</a></li>
				    <li><a class="dropdown-item">2019년</a></li>
				    <li><a class="dropdown-item">2018년</a></li>
				    <li><a class="dropdown-item">2017년</a></li>
				    <li><a class="dropdown-item">2016년</a></li>
				    <li><a class="dropdown-item">2015년</a></li>
				  </ul>
				</div>
				&nbsp;&nbsp;
				<div class="btn-group">
				  <button id="monthDropdown" class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" data-bs-auto-close="true" aria-expanded="false">
				    1월
				  </button>
				  <ul id="month" class="dropdown-menu">
				    <li><a class="dropdown-item">2월</a></li>
				    <li><a class="dropdown-item">3월</a></li>
				    <li><a class="dropdown-item">4월</a></li>
				    <li><a class="dropdown-item">5월</a></li>
				    <li><a class="dropdown-item">6월</a></li>
				    <li><a class="dropdown-item">7월</a></li>
				    <li><a class="dropdown-item">8월</a></li>
				    <li><a class="dropdown-item">9월</a></li>
				    <li><a class="dropdown-item">10월</a></li>
				    <li><a class="dropdown-item">11월</a></li>
				    <li><a class="dropdown-item">12월</a></li>
				  </ul>
				</div>
				&nbsp;&nbsp;
				<div class="btn-group">
				  <button id="weekDropdown" class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" data-bs-auto-close="true" aria-expanded="false">
				          첫째 주
				  </button>
				  <ul id="week" class="dropdown-menu">
				    <li><a class="dropdown-item">둘째 주</a></li>
				    <li><a class="dropdown-item">셋째 주</a></li>
				    <li><a class="dropdown-item">넷째 주</a></li>
				    <li><a class="dropdown-item">다섯째 주</a></li>
				  </ul>
				</div>
			</div>
			<div class="col-md-6">
				<div class="d-flex justify-content-end">
					<div class="btn-group">
					  <button id="sortDropdown" class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" data-bs-auto-close="true" aria-expanded="false">
					     	인기순
					  </button>
					  <ul id="sort" class="dropdown-menu">
					    <li><a class="dropdown-item">최신순</a></li>
					    <li><a class="dropdown-item">상품평많은순</a></li>
					    <li><a class="dropdown-item">낮은가격순</a></li>
					    <li><a class="dropdown-item">높은가격순</a></li>
					  </ul>
					</div>
					&nbsp;&nbsp;
					<div class="btn-group">
					  <button id="viewDropdown" class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" data-bs-auto-close="true" aria-expanded="false">
					     	20개씩 보기
					  </button>
					  <ul id="view" class="dropdown-menu">
					    <li><a class="dropdown-item">50개씩 보기</a></li>
					    <li><a class="dropdown-item">100개씩 보기</a></li>
					  </ul>
					</div>
				</div>
			</div>
		</div>
		<hr>
		<br>
		<div class="d-flex justify-content-center">
			<div class="row">
				<div class="col">
					<img src="logo/book/bookcover1.jpeg" width="220px" height="280px"><br>
					<a class="bookName" href="#">책 제목</a><br>
					<span class="bookAuthor">작가, 출판사</span><br>
					<span class="bookCost">10,000원</span>
				</div>
				<div class="col">
					<img src="logo/book/bookcover2.png" width="220px" height="280px"><br>
					<a class="bookName" href="#">책 제목</a><br>
					<span class="bookAuthor">작가, 출판사</span><br>
					<span class="bookCost">10,000원</span>
				</div>
				<div class="col">
					<img src="logo/book/bookcover3.png" width="220px" height="280px"><br>
					<a class="bookName" href="#">책 제목</a><br>
					<span class="bookAuthor">작가, 출판사</span><br>
					<span class="bookCost">10,000원</span>
				</div>
				<div class="col">
					<img src="logo/book/bookcover4.png" width="220px" height="280px"><br>
					<a class="bookName" href="#">책 제목</a><br>
					<span class="bookAuthor">작가, 출판사</span><br>
					<span class="bookCost">10,000원</span>
				</div>
				<div class="col">
					<img src="logo/book/bookcover5.png" width="220px" height="280px"><br>
					<a class="bookName" href="#">책 제목</a><br>
					<span class="bookAuthor">작가, 출판사</span><br>
					<span class="bookCost">10,000원</span>
				</div>
			</div>
		</div>
		<br><br>
		<div class="d-flex justify-content-center">
			<div class="row">
				<div class="col">
					<img src="logo/book/bookcover1.jpeg" width="220px" height="280px"><br>
					<a class="bookName" href="#">책 제목</a><br>
					<span class="bookAuthor">작가, 출판사</span><br>
					<span class="bookCost">10,000원</span>
				</div>
				<div class="col">
					<img src="logo/book/bookcover2.png" width="220px" height="280px"><br>
					<a class="bookName" href="#">책 제목</a><br>
					<span class="bookAuthor">작가, 출판사</span><br>
					<span class="bookCost">10,000원</span>
				</div>
				<div class="col">
					<img src="logo/book/bookcover3.png" width="220px" height="280px"><br>
					<a class="bookName" href="#">책 제목</a><br>
					<span class="bookAuthor">작가, 출판사</span><br>
					<span class="bookCost">10,000원</span>
				</div>
				<div class="col">
					<img src="logo/book/bookcover4.png" width="220px" height="280px"><br>
					<a class="bookName" href="#">책 제목</a><br>
					<span class="bookAuthor">작가, 출판사</span><br>
					<span class="bookCost">10,000원</span>
				</div>
				<div class="col">
					<img src="logo/book/bookcover5.png" width="220px" height="280px"><br>
					<a class="bookName" href="#">책 제목</a><br>
					<span class="bookAuthor">작가, 출판사</span><br>
					<span class="bookCost">10,000원</span>
				</div>
			</div>
		</div>
		<br><br>
		<div class="d-flex justify-content-center">
			<div class="row">
				<div class="col">
					<img src="logo/book/bookcover1.jpeg" width="220px" height="280px"><br>
					<a class="bookName" href="#">책 제목</a><br>
					<span class="bookAuthor">작가, 출판사</span><br>
					<span class="bookCost">10,000원</span>
				</div>
				<div class="col">
					<img src="logo/book/bookcover2.png" width="220px" height="280px"><br>
					<a class="bookName" href="#">책 제목</a><br>
					<span class="bookAuthor">작가, 출판사</span><br>
					<span class="bookCost">10,000원</span>
				</div>
				<div class="col">
					<img src="logo/book/bookcover3.png" width="220px" height="280px"><br>
					<a class="bookName" href="#">책 제목</a><br>
					<span class="bookAuthor">작가, 출판사</span><br>
					<span class="bookCost">10,000원</span>
				</div>
				<div class="col">
					<img src="logo/book/bookcover4.png" width="220px" height="280px"><br>
					<a class="bookName" href="#">책 제목</a><br>
					<span class="bookAuthor">작가, 출판사</span><br>
					<span class="bookCost">10,000원</span>
				</div>
				<div class="col">
					<img src="logo/book/bookcover5.png" width="220px" height="280px"><br>
					<a class="bookName" href="#">책 제목</a><br>
					<span class="bookAuthor">작가, 출판사</span><br>
					<span class="bookCost">10,000원</span>
				</div>
			</div>
		</div>
		<br><br>
		<div class="d-flex justify-content-center">
			<div class="row">
				<div class="col">
					<img src="logo/book/bookcover1.jpeg" width="220px" height="280px"><br>
					<a class="bookName" href="#">책 제목</a><br>
					<span class="bookAuthor">작가, 출판사</span><br>
					<span class="bookCost">10,000원</span>
				</div>
				<div class="col">
					<img src="logo/book/bookcover2.png" width="220px" height="280px"><br>
					<a class="bookName" href="#">책 제목</a><br>
					<span class="bookAuthor">작가, 출판사</span><br>
					<span class="bookCost">10,000원</span>
				</div>
				<div class="col">
					<img src="logo/book/bookcover3.png" width="220px" height="280px"><br>
					<a class="bookName" href="#">책 제목</a><br>
					<span class="bookAuthor">작가, 출판사</span><br>
					<span class="bookCost">10,000원</span>
				</div>
				<div class="col">
					<img src="logo/book/bookcover4.png" width="220px" height="280px"><br>
					<a class="bookName" href="#">책 제목</a><br>
					<span class="bookAuthor">작가, 출판사</span><br>
					<span class="bookCost">10,000원</span>
				</div>
				<div class="col">
					<img src="logo/book/bookcover5.png" width="220px" height="280px"><br>
					<a class="bookName" href="#">책 제목</a><br>
					<span class="bookAuthor">작가, 출판사</span><br>
					<span class="bookCost">10,000원</span>
				</div>
			</div>
		</div>
		<br><br>
	</main>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>