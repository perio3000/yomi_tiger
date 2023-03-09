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
<title>YOMIYOMI-도서등록</title>
<script type="text/javascript" src="/js/mypage.js"></script>
<link rel="stylesheet" type="text/css" href="/css/reset.css">
<link rel="stylesheet" type="text/css" href="/css/mypage.css">
</head>
<body>


	<main class="container">
		<div class="row" id="breadcrumb">
			<nav style="-bs-breadcrumb-divider: '&gt;';" aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="/">Home</a></li>
					<li class="breadcrumb-item active" aria-current="page">관리자홈</li>
				</ol>
			</nav>
		</div>

		<div class="row">
			<div class="col-md-3">
				

				<div class="row">
					<div class="menuText">
						<a href="/admin/home" class="menuTitle">관리자홈</a><br>
						<a href="/admin/bookregister">도서등록</a><br>
						
					</div>
				</div>
				
				<!-- 오프캔버스 메뉴 -->
				<div class="d-flex justify-content-center">
					<nav class="navbar menuBtn">
						<div class="container-fluid">
							<button class="navbar-toggler" type="button"
								data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar"
								aria-controls="offcanvasNavbar">
								<span class="navbar-toggler-icon"></span>
							</button>
							<div class="offcanvas offcanvas-start" tabindex="-1"
								id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
								<div class="offcanvas-header">
									<button type="button" class="btn-close"
										data-bs-dismiss="offcanvas" aria-label="Close"></button>
								</div>
								<div class="offcanvas-body">
									<div class="p-4">
										<div class="menuText2">
											<a href="/admin/home" class="menuTitle">관리자홈</a><br>
											<a href="/admin/bookregister">도서등록</a><br>
											
										</div>
									</div>
								</div>
							</div>
						</div>
					</nav>
				</div>
				
			</div>

			<div class="col-md-9">
				<div class="fs-3 fw-bolder text-center">
					도서 등록
				</div>
				<form method="post" action="/admin/bookinsert">
					<div class="mb-3">
						<label for="title" class="form-label">제목</label> 
						<input type="text" class="form-control" id="title" name="title" placeholder="title">
					</div>
					<div class="mb-3">
						<label for="authors" class="form-label">작가</label> 
						<input type="text" class="form-control" id="authors" name="authors" placeholder="authors">
					</div>
					<div class="mb-3">
						<label for="publisher" class="form-label">출판사</label> 
						<input type="text" class="form-control" id="publisher" name="publisher" placeholder="publisher">
					</div>
					<div class="mb-3">
						<label for="thumbnail" class="form-label">썸네일</label> 
						<input type="text" class="form-control" id="thumbnail" name="thumbnail" placeholder="주소">
					</div>
					<div class="mb-3">
						<label for="price" class="form-label">가격</label> 
						<input type="text" class="form-control" id="price" name="price" placeholder="','없이">
					</div>
					<div class="mb-3">
						<label for="event_id" class="form-label">이벤트아이디</label> 
						<input type="text" class="form-control" id="event_id" name="event_id" placeholder="event_id">
					</div>
					<div class="mb-3">
						<label for="datetime" class="form-label">출간일</label> 
						<input type="text" class="form-control" id="datetime" name="datetime" placeholder="yyyy-mm-dd">
					</div>
					<div class="mb-3">
						<label for="star" class="form-label">별점</label> 
						<input type="text" class="form-control" id="star" name="star" placeholder="star">
					</div>
					<div class="mb-3">
						<label for="contents" class="form-label">내용</label> 
						<textarea class="form-control" id="contents" name="contents" placeholder="contents" rows="5"></textarea>
					</div>
					<div class="mb-3">
						<label for="status" class="form-label">구분</label> 
						<input type="text" class="form-control" id="status" name="status" placeholder="국내,해외,픽,ebook">
					</div>
					<div class="d-flex justify-content-center">
						<button class="me-2 btn btn-secondary" type="reset">리셋</button>
						<button class="ms-2 btn btn-dark" type="submit">등록</button>
					</div>
				</form>
			</div>
		</div>


	</main>
	
	<div style="height: 150px"></div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>