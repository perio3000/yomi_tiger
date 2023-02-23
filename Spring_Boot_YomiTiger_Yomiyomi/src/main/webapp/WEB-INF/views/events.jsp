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
<link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">

<meta charset="UTF-8">
<title>이벤트</title>
<script type="text/javascript" src="/js/events.js"></script>
<link rel="stylesheet" type="text/css" href="/css/reset.css">
<link rel="stylesheet" type="text/css" href="/css/events.css">
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
				<form class="search-form searchForm" role="search" action="/notice/searchevents" method="get" id="searchEventForm1" name="formname">
					<input class="search-control searchControl" name="keyword" type="search" placeholder="이벤트 검색" aria-label="Search" onkeypress="JavaScript:press(this.form)">
					<button class="search-btn searchBtn" type="submit">
						<i class="fa fa-search" aria-hidden="true"></i>
					</button>
				</form>
			</div>
		</div>
<!-- 		
		<div class="row">
			<div class="col">
				<div class="d-flex justify-content-center align-items-center" style="height: 100px; border: 1px solid #F4EEFF;">
					<a class="btn btn-primary" href="#" role="button">전체</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a class="btn btn-primary" href="#" role="button">국내도서</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a class="btn btn-primary" href="#" role="button">외국도서</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a class="btn btn-primary" href="#" role="button">E-Book</a>
	   			</div>
   			 </div>
		</div> -->
		
		<br>
		<div class="row">
			<div class="col">
				<a class="col count">${ pageMaker.total }건</a>
			</div>
			<div class="col">
				<form action="/notice/searchevents" method="get" id="searchEventForm2">
					<div class="d-flex justify-content-end">
						<div class="btn-group" role="group" aria-label="Basic radio toggle button group">
						  <input type="radio" class="btn-check" name="category" id="btnradio1" autocomplete="off" value="ing">
						  <label class="btn btn-outline-primary" for="btnradio1">진행</label>
						
						  <input type="radio" class="btn-check" name="category" id="btnradio2" autocomplete="off" value="end">
						  <label class="btn btn-outline-primary" for="btnradio2">종료</label>
						</div>
					</div>
				</form>
			</div>
		</div>
		<hr>
		
		<br>
		<div class="row d-flex flex-wrap">
			<c:forEach var="eventList" items="${ list }">
				<div class="col-xxl-4 col-lg-6">
					<a href="#"><img class="rounded" src="${ eventList.file_path }" width="350px" height="150px"></a><br>
					<a class="eventTitle" href="#">${ eventList.event_name }</a><br>
					<a class="period">${ eventList.event_start }~${ eventList.event_end }</a>
				</div>
			</c:forEach>
		</div>
		<br><br>
		
		<nav aria-label="Page navigation example">
			<ul class="pagination d-flex justify-content-center mb-5 mt-3">
				<c:if test="${pageMaker.prev}">
					<li class="page-item">
						<a class="page-link" href="/notice/events${pageMaker.makeQuery(pageMaker.startPage - 1) }" aria-label="Previous">
							<span aria-hidden="true">«</span>
						</a>
					</li>
				</c:if>
				<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
					<li class="page-item page_item">
						<c:out value="${pageMaker.criteria.pageNum == idx?'':''}" />
						<a class="page-link" href="/notice/events${pageMaker.makeQuery(idx) }">${idx}</a>
					</li>
				</c:forEach>
				<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
					<li class="page-item">
						<a class="page-link" href="/notice/events${pageMaker.makeQuery(pageMaker.endPage +1) }" aria-label="Next"> 
							<span aria-hidden="true">»</span>
						</a>
					</li>
				</c:if>
			</ul>
		</nav>
		
		<br><br>
		
	</div>
	
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>