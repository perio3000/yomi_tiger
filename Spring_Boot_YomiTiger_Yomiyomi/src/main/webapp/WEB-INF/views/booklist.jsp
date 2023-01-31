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
<jsp:include page="header.jsp"></jsp:include>

<meta charset="UTF-8">
<title>책 리스트</title>
<script type="text/javascript" src="/js/list.js"></script>
<link rel="stylesheet" type="text/css" href="/css/reset.css">
<link rel="stylesheet" type="text/css" href="/css/booklist.css">
</head>
<body>
	<main class="container">
	<br><br>
		<div class="row">
			<div class="col-md-2 bookTitle">
				<!-- 신상품 -->${ listCategory }
			</div>
			<div class="col-md-4">
				<div class="d-flex align-items-center" style="height: 48px">
					<input type="radio" class="btn-check bookBtn1" name="options-outlined" id="success-outlined" autocomplete="off" checked>
					<label class="btn btn-outline-success" for="success-outlined">국내도서</label>&nbsp;&nbsp;
					<input type="radio" class="btn-check bookBtn2" name="options-outlined" id="success-outlined2" autocomplete="on">
					<label class="btn btn-outline-success" for="success-outlined2">해외도서</label>&nbsp;&nbsp;
					<input type="radio" class="btn-check bookBtn3" name="options-outlined" id="success-outlined3" autocomplete="off">
					<label class="btn btn-outline-success" for="success-outlined3">eBook</label>
					
				</div>
			</div>
		</div>
		<hr>
		<div class="row">
			<div class="col-md-6">
				<select id="yearDropdown" class="form-select" aria-label="Default select example">
				  <option selected>2023년</option>
				  <option value="1">2022년</option>
				  <option value="2">2021년</option>
				  <option value="3">2020년</option>
				  <option value="4">2019년</option>
				  <option value="5">2018년</option>
				  <option value="6">2017년</option>
				  <option value="7">2016년</option>
				  <option value="8">2015년</option>
				</select>
				&nbsp;
				<select id="monthDropdown" class="form-select" aria-label="Default select example">
				  <option selected>1월</option>
				  <option value="1">2월</option>
				  <option value="2">3월</option>
				  <option value="3">4월</option>
				  <option value="4">5월</option>
				  <option value="5">6월</option>
				  <option value="6">7월</option>
				  <option value="7">8월</option>
				  <option value="8">9월</option>
				  <option value="9">10월</option>
				  <option value="10">11월</option>
				  <option value="11">12월</option>
				</select>
				&nbsp;
				<select id="weekDropdown" class="form-select" aria-label="Default select example">
				  <option selected>첫째 주</option>
				  <option value="1">둘째 주</option>
				  <option value="2">셋째 주</option>
				  <option value="3">넷째 주</option>
				  <option value="4">다섯째 주</option>
				</select>
			</div>
			<div class="col-md-6">
				<div class="d-flex justify-content-end">
					<select id="sortDropdown" class="form-select" aria-label="Default select example">
					  <option selected>인기순</option>
					  <option value="1">최신순</option>
					  <option value="2">상품평많은순</option>
					  <option value="3">낮은가격순</option>
					  <option value="4">높은가격순</option>
					</select>
					&nbsp;&nbsp;
					<select id="viewDropdown" class="form-select" aria-label="Default select example">
					  <option selected>20개씩 보기</option>
					  <option value="1">50개씩 보기</option>
					  <option value="2">100개씩 보기</option>
					</select>
				</div>
			</div>
		</div>
		<hr>
		<br>
		<div class="d-flex justify-content-center">
			<div class="row">
				<c:forEach var="itemList" items="${ list }">
					<div class="col mb-5">
						<img src="${ itemList.thumbnail }" width="210px" height="270px"><br>
						<a class="bookName" href="#">${ itemList.title }</a><br>
						<span class="bookAuthor">${ itemList.authors }, ${ itemList.publisher }</span><br>
						<span class="bookCost"><span class="bookprice">${ itemList.price }</span>원</span>
					</div>
				</c:forEach>
			
				<!-- <div class="col">
					<img src="logo/book/bookcover1.jpeg" width="210px" height="270px"><br>
					<a class="bookName" href="#">책 제목</a><br>
					<span class="bookAuthor">작가, 출판사</span><br>
					<span class="bookCost">10,000원</span>
				</div>
				<div class="col">
					<img src="logo/book/bookcover2.png" width="210px" height="270px"><br>
					<a class="bookName" href="#">책 제목</a><br>
					<span class="bookAuthor">작가, 출판사</span><br>
					<span class="bookCost">10,000원</span>
				</div>
				<div class="col">
					<img src="logo/book/bookcover3.png" width="210px" height="270px"><br>
					<a class="bookName" href="#">책 제목</a><br>
					<span class="bookAuthor">작가, 출판사</span><br>
					<span class="bookCost">10,000원</span>
				</div>
				<div class="col">
					<img src="logo/book/bookcover4.png" width="210px" height="270px"><br>
					<a class="bookName" href="#">책 제목</a><br>
					<span class="bookAuthor">작가, 출판사</span><br>
					<span class="bookCost">10,000원</span>
				</div>
				<div class="col">
					<img src="logo/book/bookcover5.png" width="210px" height="270px"><br>
					<a class="bookName" href="#">책 제목</a><br>
					<span class="bookAuthor">작가, 출판사</span><br>
					<span class="bookCost">10,000원</span>
				</div>
			
				<div class="col">
					<img src="logo/book/bookcover1.jpeg" width="210px" height="270px"><br>
					<a class="bookName" href="#">책 제목</a><br>
					<span class="bookAuthor">작가, 출판사</span><br>
					<span class="bookCost">10,000원</span>
				</div>
				<div class="col">
					<img src="logo/book/bookcover2.png" width="210px" height="270px"><br>
					<a class="bookName" href="#">책 제목</a><br>
					<span class="bookAuthor">작가, 출판사</span><br>
					<span class="bookCost">10,000원</span>
				</div>
				<div class="col">
					<img src="logo/book/bookcover3.png" width="210px" height="270px"><br>
					<a class="bookName" href="#">책 제목</a><br>
					<span class="bookAuthor">작가, 출판사</span><br>
					<span class="bookCost">10,000원</span>
				</div>
				<div class="col">
					<img src="logo/book/bookcover4.png" width="210px" height="270px"><br>
					<a class="bookName" href="#">책 제목</a><br>
					<span class="bookAuthor">작가, 출판사</span><br>
					<span class="bookCost">10,000원</span>
				</div>
				<div class="col">
					<img src="logo/book/bookcover5.png" width="210px" height="270px"><br>
					<a class="bookName" href="#">책 제목</a><br>
					<span class="bookAuthor">작가, 출판사</span><br>
					<span class="bookCost">10,000원</span>
				</div>
			
				<div class="col">
					<img src="logo/book/bookcover1.jpeg" width="210px" height="270px"><br>
					<a class="bookName" href="#">책 제목</a><br>
					<span class="bookAuthor">작가, 출판사</span><br>
					<span class="bookCost">10,000원</span>
				</div>
				<div class="col">
					<img src="logo/book/bookcover2.png" width="210px" height="270px"><br>
					<a class="bookName" href="#">책 제목</a><br>
					<span class="bookAuthor">작가, 출판사</span><br>
					<span class="bookCost">10,000원</span>
				</div>
				<div class="col">
					<img src="logo/book/bookcover3.png" width="210px" height="270px"><br>
					<a class="bookName" href="#">책 제목</a><br>
					<span class="bookAuthor">작가, 출판사</span><br>
					<span class="bookCost">10,000원</span>
				</div>
				<div class="col">
					<img src="logo/book/bookcover4.png" width="210px" height="270px"><br>
					<a class="bookName" href="#">책 제목</a><br>
					<span class="bookAuthor">작가, 출판사</span><br>
					<span class="bookCost">10,000원</span>
				</div>
				<div class="col">
					<img src="logo/book/bookcover5.png" width="210px" height="270px"><br>
					<a class="bookName" href="#">책 제목</a><br>
					<span class="bookAuthor">작가, 출판사</span><br>
					<span class="bookCost">10,000원</span>
				</div>
			
				<div class="col">
					<img src="logo/book/bookcover1.jpeg" width="210px" height="270px"><br>
					<a class="bookName" href="#">책 제목</a><br>
					<span class="bookAuthor">작가, 출판사</span><br>
					<span class="bookCost">10,000원</span>
				</div>
				<div class="col">
					<img src="logo/book/bookcover2.png" width="210px" height="270px"><br>
					<a class="bookName" href="#">책 제목</a><br>
					<span class="bookAuthor">작가, 출판사</span><br>
					<span class="bookCost">10,000원</span>
				</div>
				<div class="col">
					<img src="logo/book/bookcover3.png" width="210px" height="270px"><br>
					<a class="bookName" href="#">책 제목</a><br>
					<span class="bookAuthor">작가, 출판사</span><br>
					<span class="bookCost">10,000원</span>
				</div>
				<div class="col">
					<img src="logo/book/bookcover4.png" width="210px" height="270px"><br>
					<a class="bookName" href="#">책 제목</a><br>
					<span class="bookAuthor">작가, 출판사</span><br>
					<span class="bookCost">10,000원</span>
				</div>
				<div class="col">
					<img src="logo/book/bookcover5.png" width="210px" height="270px"><br>
					<a class="bookName" href="#">책 제목</a><br>
					<span class="bookAuthor">작가, 출판사</span><br>
					<span class="bookCost">10,000원</span>
				</div> -->

				<nav aria-label="Page navigation example">
					<ul class="pagination">
						<c:if test="${pageMaker.prev}">
							<li class="page-item">
								<a class="/store/list${pageMaker.makeQuery(pageMaker.startPage - 1) }&listCategory=${ category }" href="#" aria-label="Previous">
									<span aria-hidden="true">&laquo;</span>
								</a>
							</li>
						</c:if>
						<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
							<li class="page-item"><a class="page-link" href="/store/list${pageMaker.makeQuery(idx) }&listCategory=${ category }"><c:out value="${pageMaker.criteria.pageNum == idx?'':''}" /></a></li>
						</c:forEach>
						<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
							<li class="page-item">
								<a class="page-link" href="/store/list${pageMaker.makeQuery(pageMaker.endPage +1) }&listCategory=${ category }" aria-label="Next"> 
									<span aria-hidden="true">&raquo;</span>
								</a>
							</li>
						</c:if>
					</ul>
				</nav>

				<form action="/store/search" method="get" id="searchForm"
					class="search_area">
					<select name="type">
						<option value=""
							<c:out value="${pageMaker.criteria.type == null ? 'selected' : '' }"/>>--</option>
						<option value="T"
							<c:out value="${pageMaker.criteria.type eq 'T' ? 'selected' : '' }"/>>제목</option>
						<option value="C"
							<c:out value="${pageMaker.criteria.type eq 'C' ? 'selected' : '' }"/>>내용</option>
						<option value="N"
							<c:out value="${pageMaker.criteria.type eq 'A' ? 'selected' : '' }"/>>작가</option>
					</select> <input type="text" name="keyword"
						value='<c:out value="${pageMaker.criteria.keyword}"></c:out>'>
					<input type="hidden" name="pageNum" value="1"> <input
						type="hidden" name="amount" value="${pageMaker.criteria.amount}">
					<button>검색</button>
				</form>
			</div>
		</div>
		<br><br>
	</main>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>