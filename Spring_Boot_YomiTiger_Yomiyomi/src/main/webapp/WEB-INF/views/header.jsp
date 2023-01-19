<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" href="logo/logo-back-white.png" />
<!-- <link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous"> -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,-25" />

<!-- <script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.3.js"
	integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM="
	crossorigin="anonymous"></script> -->
<script src="https://kit.fontawesome.com/ebf4d50ec6.js"
	crossorigin="anonymous"></script>

<script type="text/javascript" src="/js/header.js"></script>
<link rel="stylesheet" type="text/css" href="/css/reset.css">
<link rel="stylesheet" type="text/css" href="/css/header.css">
</head>
<body>
	<header>
		
		<div class="rightNav">
			<ul class="row">
				<sec:authorize access="isAnonymous()">
					<li class="col col2"><a href="#">회원가입</a></li>
					<li class="col col2"><a href="<c:url value="/login" />">로그인</a></li>
					<li class="col col2"><a href="#">고객센터</a></li>
				</sec:authorize>
				<sec:authorize access="isAuthenticated()">
					<form:form action="/logout" method="post" onsubmit="confirm('로그아웃 하시겠습니까?')" id="logoutForm" class="row">
						<li class="col col2"><a href="#" onclick="logout()">로그아웃</a></li>
						<li class="col col2"><a href="#">고객센터</a></li>
					</form:form>
				</sec:authorize>
				
			</ul>
		</div>

		<div class="row header">
			<div class="header_logo col-1">
				<a href="/"> <img alt="logo" src="/logo/logo.png">
				</a>
			</div>
			<form class="search-form col-8 search_form" role="search">
				<input class="search-control search_control" type="search" placeholder="Search" aria-label="Search">
				<button class="search-btn search_btn" type="submit">
					<i class="fa fa-search" aria-hidden="true"></i>
				</button>
			</form>
			<div class="header-icon col-2 header_icon">
				<ul class="row justify-content-end justify_content_end">
					<li class="col icon-i col2"><a href="#"><i class="fa-regular fa-cart-shopping fa-2x"></i></a></li>
					<li class="col icon-i col2"><a href="/mypage/main"><i class="fa-regular fa-user fa-2x"></i></a></li>
				</ul>
			</div>
		</div>
	</header>
	<nav class="navbar-head navbar-expand-lg navbar_head">
		<div class="container-fluid container_fluid">
			<a class="navbar-menu navbar_menu" >
				<span class="material-symbols-outlined material_symbols_outlined" onclick="menuOpen()">menu</span>
			</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse navbar_collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item nav_item">
						<a class="nav-link nav-active nav_link" aria-current="page" href="#">베스트</a>
					</li>
					<li class="nav-item nav_item">
						<a class="nav-link nav-active nav_link" aria-current="page" href="#">신상품</a>
					</li>
					<li class="nav-item nav_item">
						<a class="nav-link nav-active nav_link" aria-current="page" href="#">이벤트</a>
					</li>
					<li class="nav-item nav_item">
						<a class="nav-link nav-active nav_link" aria-current="page" href="#">Picks</a>
					</li>
				</ul>
			</div>
		</div>
		
		<div class="menuBody">
			<div class="row">
				<div class="col">
					<ul>
						<li><a href="#" class="fs-5 fw-bolder">주요서비스&nbsp;<img src="/icon/right-arrow.png" width="16px" height="16px"></a></li>
						<li><a href="#">베스트셀러</a></li>
						<li><a href="#">신상품</a></li>
						<li><a href="#">할인상품</a></li>
						<li><a href="#">추천</a></li>
					</ul>
					<br>
					<ul>
						<li><a href="#" class="fs-5 fw-bolder">도서&nbsp;<img src="/icon/right-arrow.png" width="16px" height="16px"></a></li>
						<li><a href="#">국내도서</a></li>
						<li><a href="#">해외도서</a></li>
						<li><a href="#">eBook</a></li>
					</ul>
				</div>
				
				<div class="col">
					<ul>
						<li><a href="/customercenter" class="fs-5 fw-bolder">고객센터&nbsp;<img src="/icon/right-arrow.png" width="16px" height="16px"></a></li>
						<li><a href="/FAQ">자주 묻는 질문</a></li>
						<li><a href="/qna">1:1 문의</a></li>
						<li><a href="/events">이벤트</a></li>
						<li><a href="/location">오프라인 매장</a></li>
						<li><a href="/announcement">공지사항</a></li>
					</ul>
					<br>
					<ul>
						<li><a href="/mypage/main" class="fs-5 fw-bolder">마이페이지&nbsp;<img src="/icon/right-arrow.png" width="16px" height="16px"></a></li>
						<li><a href="/mypage/orderdeliverylist">주문 배송 목록</a></li>
						<li><a href="/mypage/point">포인트</a></li>
						<li><a href="/mypage/activitylist">활동내역</a></li>
						<li><a href="/mypage/inquirylist">문의내역</a></li>
						<li><a href="/mypage/userupdate">회원정보</a></li>
					</ul>
				</div>
				
				<div class="col">
					<ul>
						<li><a href="/mypage/library" class="fs-5 fw-bolder">서재&nbsp;<img src="/icon/right-arrow.png" width="16px" height="16px"></a></li>
					</ul>
				</div>
			
			</div>
		</div>
	</nav>
</body>
</html>