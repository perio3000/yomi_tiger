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
				신상품
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
				  <option value="2023" selected>2023년</option>
				  <option value="2022">2022년</option>
				  <option value="2021">2021년</option>
				  <option value="2020">2020년</option>
				</select>
				&nbsp;
				<select id="monthDropdown" class="form-select" aria-label="Default select example">
				  <option value="01" selected>1월</option>
				  <option value="02">2월</option>
				  <option value="03">3월</option>
				  <option value="04">4월</option>
				  <option value="05">5월</option>
				  <option value="06">6월</option>
				  <option value="07">7월</option>
				  <option value="08">8월</option>
				  <option value="09">9월</option>
				  <option value="10">10월</option>
				  <option value="11">11월</option>
				  <option value="12">12월</option>
				</select>
				&nbsp;
				<select id="weekDropdown" class="form-select" aria-label="Default select example">
				  <option value="1" selected>첫째 주</option>
				  <option value="2">둘째 주</option>
				  <option value="3">셋째 주</option>
				  <option value="4">넷째 주</option>
				  <option value="5">다섯째 주</option>
				</select>
			</div>
			<div class="col-md-6">
				<div class="d-flex justify-content-end">
					<select id="sortDropdown" class="form-select" aria-label="Default select example">
					  <option value="1" selected>인기순</option>
					  <option value="2">최신순</option>
					  <option value="3">상품평많은순</option>
					  <option value="4">낮은가격순</option>
					  <option value="5">높은가격순</option>
					</select>
					&nbsp;&nbsp;
					<select id="viewDropdown" class="form-select" aria-label="Default select example">
					  <option value="20" selected>20개씩 보기</option>
					  <option value="50">50개씩 보기</option>
					  <option value="100">100개씩 보기</option>
					</select>
				</div>
			</div>
		</div>
		<hr>
		<br>
		<div class="d-flex justify-content-center">
			<div class="row">
				<c:forEach var="itemList" items="${ list }">
					<div class="col mb-5 text-center">
						<img src="${ itemList.thumbnail }" width="210px" height="270px"><br>
						<a class="bookName" href="#">${ itemList.title }</a><br>
						<span class="bookAuthor">${ itemList.authors }, ${ itemList.publisher }</span><br>
						<span class="bookCost"><span class="bookprice">${ itemList.price }</span>원</span>
					</div>
				</c:forEach>

				<nav aria-label="Page navigation example">
					<ul class="pagination d-flex justify-content-center mb-5 mt-3">
						<c:if test="${pageMaker.prev}">
							<li class="page-item">
								<a class="page-link" href="/store/listnew${pageMaker.makeQuery(pageMaker.startPage - 1) }" aria-label="Previous">
									<span aria-hidden="true">«</span>
								</a>
							</li>
						</c:if>
						<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
							<li class="page-item">
								<c:out value="${pageMaker.criteria.pageNum == idx?'':''}" />
								<a class="page-link" href="/store/listnew${pageMaker.makeQuery(idx) }">${idx}</a>
							</li>
						</c:forEach>
						<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
							<li class="page-item">
								<a class="page-link" href="/store/listnew${pageMaker.makeQuery(pageMaker.endPage +1) }" aria-label="Next"> 
									<span aria-hidden="true">»</span>
								</a>
							</li>
						</c:if>
					</ul>
				</nav>

				<form action="/store/searchnew" method="get" id="searchForm" class="search_area d-flex justify-content-center">
					<select name="type" class="form-select selectCategory">
						<option value="T"
							<c:out value="${pageMaker.criteria.type eq 'T' ? 'selected' : '' }"/>>제목</option>
						<option value="C"
							<c:out value="${pageMaker.criteria.type eq 'C' ? 'selected' : '' }"/>>내용</option>
						<option value="A"
							<c:out value="${pageMaker.criteria.type eq 'A' ? 'selected' : '' }"/>>작가</option>
						<option value="P"
							<c:out value="${pageMaker.criteria.type eq 'P' ? 'selected' : '' }"/>>출판사</option>
					</select> 
					<input type="text" name="keyword" class="form-control" id="exampleFormControlInput1" value='<c:out value="${pageMaker.criteria.keyword}"></c:out>'>
					<label for="exampleFormControlInput1" class="form-label"></label>
					
					<input type="hidden" name="pageNum" value="1" class="form-control"> 
					<input type="hidden" name="amount" value="${pageMaker.criteria.amount}">
					<button class="newSearchBtn">검색</button>
				</form>
			</div>
		</div>
		<br><br>
	</main>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>