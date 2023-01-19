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
<script type="text/javascript" src="/js/mypage.js"></script>
<link rel="stylesheet" type="text/css" href="/css/reset.css">
<link rel="stylesheet" type="text/css" href="/css/mypage.css">
<link rel="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>
	
	<main class="container">
		<div class="row" id="breadcrumb">
			<nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="#">Home</a></li>
					<li class="breadcrumb-item"><a href="/mypage_main?username=${ member.username }">마이페이지</a></li>
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
						&nbsp;'요미타이거'님의 서재
					</div>
					
				</div>
			</div>
			
			<div class="row">
				<div class="card p-4 mt-4">
					<div class="row">
						<div class="col fs-3">
							보유도서
						</div>
						<div class="col" style="display: flex; align-items: center; justify-content: flex-end;">
							<form class="d-flex ">
								<input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
								<button class="btn btn-outline-secondary" type="submit" style="width: 70px">검색</button>
							</form>
						</div>
					</div>
					
					<hr>
					
					<div class="row">
						<div class="col fs-5">
							총 <span>2</span>개 도서
						</div>
						<div class="col" style="display: flex; align-items: center; justify-content: flex-end;">
							<select class="form-select me-2" aria-label="Default select example" style="width: 150px">
								<option value="1" selected>구매일순</option>
								<option value="2">최근활동순</option>
								<option value="3">제목순</option>
								<option value="4">저자순</option>
							</select>

							<div class="btn-group" role="group"
								aria-label="Basic radio toggle button group">
								<input type="radio" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off" checked> 
								<label class="btn" for="btnradio1" style="display: flex; align-items: center;">
									<img alt="" src="/icon/grid.png" width="20px" height="20px">
								</label>

								<input type="radio" class="btn-check" name="btnradio" id="btnradio2" autocomplete="off"> 
								<label class="btn" for="btnradio2" style="display: flex; align-items: center;">
									<img alt="" src="/icon/list.png" width="20px" height="20px">
								</label>
							</div>
						</div>
					</div>
					
					<hr>
					
					<!-- 도서 목록 1-->
					<div class="p-3 row">
						<div class="col d-flex justify-content-center">
							<img alt="" src="https://contents.kyobobook.co.kr/sih/fit-in/234x0/pdt/9791167740847.jpg" width="140px" height="195px">
						</div>
						
						<div class="col d-flex align-items-start flex-column mb-3">
							<div class="fs-3">책이름</div>
							<div class="fs-5">작가</div>
							<div class="fs-5">출판사</div>
							<div class="mt-auto"><span>150</span>페이지(<span>50</span>%)/<span>300</span>페이지</div>
						</div>
						
						<div class="col" style="display: flex; align-items: center;">
							<select class="form-select me-2" aria-label="Default select example" style="width: 150px">
								<option value="1" selected>챕터 1</option>
								<option value="2">챕터 2</option>
								<option value="3">챕터 3</option>
								<option value="4">챕터 4</option>
							</select>
						</div>
						
						<div class="col align-self-center">
							<div class="mb-3">
								<a href="#">
									<button class="firstPageBtn text-center ">처음부터</button>
								</a>
							</div>
							
							<div class="mt-3">
								<a href="#">
									<button class="continuingBtn text-center ">이어보기</button>
								</a>
							</div>
						
						</div>
					
					</div><hr>
					
					<!-- 도서 목록 2-->
					<div class="p-3 row">
						<div class="col d-flex justify-content-center">
							<img alt="" src="https://contents.kyobobook.co.kr/sih/fit-in/234x0/pdt/9791167740847.jpg" width="140px" height="195px">
						</div>
						
						<div class="col d-flex align-items-start flex-column mb-3">
							<div class="fs-3">책이름</div>
							<div class="fs-5">작가</div>
							<div class="fs-5">출판사</div>
							<div class="mt-auto"><span>150</span>페이지(<span>50</span>%)/<span>300</span>페이지</div>
						</div>
						
						<div class="col" style="display: flex; align-items: center;">
							<select class="form-select me-2" aria-label="Default select example" style="width: 150px">
								<option value="1" selected>챕터 1</option>
								<option value="2">챕터 2</option>
								<option value="3">챕터 3</option>
								<option value="4">챕터 4</option>
							</select>
						</div>
						
						<div class="col align-self-center">
							<div class="mb-3">
								<a href="#">
									<button class="firstPageBtn text-center ">처음부터</button>
								</a>
							</div>
							
							<div class="mt-3">
								<a href="#">
									<button class="continuingBtn text-center ">이어보기</button>
								</a>
							</div>
						
						</div>
					
					</div><hr>
					
				</div>
			</div>


			
			
		</div>
		
	</main>
	
	<div style="height: 150px"></div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>