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
<title>Insert title here</title>
<script type="text/javascript" src="/js/mypage.js"></script>
<link rel="stylesheet" type="text/css" href="/css/reset.css">
<link rel="stylesheet" type="text/css" href="/css/booklist.css">
<link rel="stylesheet" type="text/css" href="/css/mypage.css">
<link rel="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
</head>
<body>

	
	<main class="container">
		<div class="row" id="breadcrumb">
			<nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="/">Home</a></li>
					<li class="breadcrumb-item"><a href="/mypage/main">마이페이지</a></li>
					<li class="breadcrumb-item active" aria-current="page">서재</li>
				</ol>
			</nav>
		</div>
		
		<div class="row">

			<div class="row">
				<div class="text-center profileContainer" style="display: flex; align-items: center; background-color: #A6B1E1; border-radius: 20px">
					<div>
						<img src="/icon/user.png" class="rounded-circle" width="100px" height="100px">
					</div>
					<div class="fs-2 fw-bolder">
						&nbsp;'${ member.name }'님의 서재
					</div>
					
				</div>
			</div>
			<form action="/mypage/searchlibrary" method="get" id="searchForm">
				<div class="row">
					<div class="card p-4 mt-4">
						<div class="row">
							<div class="col fs-3">
								보유도서
							</div>
							<div class="search_area d-flex justify-content-end">
								<select name="type" class="form-select selectCategory" style="height: 38px;">
									<option value="T"
										<c:out value="${pageMaker.criteria.type eq 'T' ? 'selected' : '' }"/>>제목</option>
									<option value="C"
										<c:out value="${pageMaker.criteria.type eq 'C' ? 'selected' : '' }"/>>내용</option>
									<option value="A"
										<c:out value="${pageMaker.criteria.type eq 'A' ? 'selected' : '' }"/>>작가</option>
									<option value="P"
										<c:out value="${pageMaker.criteria.type eq 'P' ? 'selected' : '' }"/>>출판사</option>
								</select> <input type="text" name="keyword" class="form-control"
									id="exampleFormControlInput1"
									value='<c:out value="${pageMaker.criteria.keyword}"></c:out>' style="height: 38px; width: 40%">
								<label for="exampleFormControlInput1" class="form-label"></label>

								<input type="hidden" name="pageNum" value="1"
									class="form-control">

								<button class="newSearchBtn" style="height: 38px; width: 70px;">검색</button>
							</div>
						</div>
						
						<hr>
						
						<div class="row">
							<div class="col fs-5">
								총 <span>${ pageMaker.total }</span>개 도서
							</div>
							<div class="col" style="display: flex; align-items: center; justify-content: flex-end;">

								<div class="d-flex justify-content-end" style="width: 100%">
									<select id="sortDropdown" class="form-select" name="sort"
										aria-label="Default select example" style="min-width: 100px">
										<option id="datetime" value="datetime"
											<c:out value="${pageMaker.criteria.sort eq 'datetime' ? 'selected' : '' }"/>>최신순</option>
										<option id="star" value="star"
											<c:out value="${pageMaker.criteria.sort eq 'star' ? 'selected' : '' }"/>>인기순</option>
										<option id="lowprice" value="lowprice"
											<c:out value="${pageMaker.criteria.sort eq 'lowprice' ? 'selected' : '' }"/>>낮은가격순</option>
										<option id="highprice" value="highprice"
											<c:out value="${pageMaker.criteria.sort eq 'highprice' ? 'selected' : '' }"/>>높은가격순</option>
									</select> &nbsp;&nbsp; <select id="viewDropdown" class="form-select"
										name="amount" aria-label="Default select example" style="min-width: 100px">
										<option value="20"
											<c:out value="${pageMaker.criteria.amount eq '20' ? 'selected' : '' }"/>>20개씩
											보기</option>
										<option value="50"
											<c:out value="${pageMaker.criteria.amount eq '50' ? 'selected' : '' }"/>>50개씩
											보기</option>
										<option value="100"
											<c:out value="${pageMaker.criteria.amount eq '100' ? 'selected' : '' }"/>>100개씩
											보기</option>
									</select>
								</div>
								<!-- <div class="btn-group" role="group"
									aria-label="Basic radio toggle button group">
									<input type="radio" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off" checked> 
									<label class="btn" for="btnradio1" style="display: flex; align-items: center;">
										<img alt="" src="/icon/grid.png" width="20px" height="20px">
									</label>
	
									<input type="radio" class="btn-check" name="btnradio" id="btnradio2" autocomplete="off"> 
									<label class="btn" for="btnradio2" style="display: flex; align-items: center;">
										<img alt="" src="/icon/list.png" width="20px" height="20px">
									</label>
								</div> -->
							</div>
						</div>
						
						<hr>
						
						<!-- 도서 목록 1-->
						<c:forEach var="itemList" items="${ list }">
							<div class="p-3 row d-flex flex-wrap">
								<div class="col d-flex justify-content-center">
									<img alt="" src="${ itemList.thumbnail }" width="140px" height="195px">
								</div>
								
								<div class="col d-flex align-items-start flex-column mb-3" style="min-width: 200px">
									<div class="fs-3">${ itemList.title }</div>
									<div class="fs-5">${ itemList.authors }</div>
									<div class="fs-5">${ itemList.publisher }</div>
									
								</div>
								
								<div class="col" style="display: flex; align-items: center;">
									<select class="form-select me-2" aria-label="Default select example" style="width: 150px">
										<option value="1" selected>챕터 1</option>
										<option value="2">챕터 2</option>
										<option value="3">챕터 3</option>
										<option value="4">챕터 4</option>
									</select>
								</div>
								
								<div class="col align-self-center" style="min-width: 150px">
									<div class="mb-3">
										<a href="#">
											<button class="firstPageBtn text-center mt-3">처음부터</button>
										</a>
									</div>
									
									<div class="mt-3">
										<a href="#">
											<button class="continuingBtn text-center mb-3">이어보기</button>
										</a>
									</div>
								
								</div>
							
							</div><hr>
						</c:forEach>
						<c:if test="${ empty list }">
							<div class="text-center fs-4">
								검색 결과가 없습니다.
							</div>
						</c:if>

						
						<nav aria-label="Page navigation example">
							<ul class="pagination d-flex justify-content-center mb-5 mt-3">
								<c:if test="${pageMaker.prev}">
									<li class="page-item">
										<a class="page-link" href="/store/listall${pageMaker.makeQuery(pageMaker.startPage - 1) }" aria-label="Previous">
											<span aria-hidden="true">«</span>
										</a>
									</li>
								</c:if>
								<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
									<li class="page-item page_item">
										<c:out value="${pageMaker.criteria.pageNum == idx?'':''}" />
										<a class="page-link" href="/store/listall${pageMaker.makeQuery(idx) }">${idx}</a>
									</li>
								</c:forEach>
								<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
									<li class="page-item">
										<a class="page-link" href="/store/listall${pageMaker.makeQuery(pageMaker.endPage +1) }" aria-label="Next"> 
											<span aria-hidden="true">»</span>
										</a>
									</li>
								</c:if>
							</ul>
						</nav>
						
						
					</div>
				</div>
				
				
			</form>

			
			
			
		</div>
		
	</main>
	
	<div style="height: 150px"></div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>