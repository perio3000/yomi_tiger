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
<link rel="icon" href="logo/logo-white.png" />
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<!-- <link rel="icon" href="/logo/logo-back-white.png" /> -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,-25" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.3.js"
	integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM="
	crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/ebf4d50ec6.js"
	crossorigin="anonymous"></script>
<script type="text/javascript" src="/js/header.js"></script>
<link rel="stylesheet" type="text/css" href="/css/reset.css">
<link rel="stylesheet" type="text/css" href="/css/header.css">
</head>
<body>
	<header id="header">
		
		<div class="rightNav">
			<ul class="row">
				<sec:authorize access="isAnonymous()">
					<li class="col col2"><a href="/member/signup">회원가입</a></li>
					<li class="col col2"><a href="<c:url value="/login" />">로그인</a></li>
					<li class="col col2"><a href="/customercenter">고객센터</a></li>
				</sec:authorize>
				<sec:authorize access="isAuthenticated()">
					<form:form action="/logout" method="post" onsubmit="confirm('로그아웃 하시겠습니까?')" id="logoutForm" class="row">
						<li class="col me-4 col2"><a href="#" onclick="logout()">로그아웃</a></li>
						<li class="col col2"><a href="/customercenter">고객센터</a></li>
						<input type="hidden" class="principal" value="<sec:authentication property="principal.username"/>">
					</form:form>
				</sec:authorize>
				
			</ul>
		</div>

		<div class="row header justify-content-center">
			<div class="header_logo col-2 d-flex justify-content-center">
				<a href="/"> 
					<img alt="logo" src="/logo/logo.png">
				</a>
			</div>
			<form class="search-form col-7 search_form mt-3" role="search" action="/store/searchall" method="get">
				<input class="search-control search_control" type="search" name="keyword" placeholder="Search" aria-label="Search" value='<c:out value="${pageMaker.criteria.keyword}"></c:out>'>
				<button class="search-btn search_btn" type="submit">
					<i class="fa fa-search" aria-hidden="true"></i>
				</button>
				
				<div class="search_area2 d-flex justify-content-center">
					<select name="type" class="form-select selectCategory2">
						<option value="T"
							<c:out value="${pageMaker.criteria.type eq 'T' ? 'selected' : '' }"/>>제목</option>
						<option value="C"
							<c:out value="${pageMaker.criteria.type eq 'C' ? 'selected' : '' }"/>>내용</option>
						<option value="A"
							<c:out value="${pageMaker.criteria.type eq 'A' ? 'selected' : '' }"/>>작가</option>
						<option value="P"
							<c:out value="${pageMaker.criteria.type eq 'P' ? 'selected' : '' }"/>>출판사</option>
					</select> 
				</div>
			</form>
			<div class="col-3">
				<div class="d-flex justify-content-center mt-3">
					<div class="icon-i me-2">
						<a href="/store/cart2" data-bs-toggle="tooltip" data-bs-placement="bottom" data-bs-title="장바구니"><i class="xi-cart-o xi-3x"></i></a>
					</div>
					<div class="icon-i ms-2">
						<a href="/mypage/main"><i class="xi-user-o xi-3x"></i></a>
					</div>
				</div>
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
						<a class="nav-link nav-active nav_link" aria-current="page" href="/store/listbest?sort=star">베스트</a>
					</li>
					<li class="nav-item nav_item">
						<a class="nav-link nav-active nav_link" aria-current="page" href="/store/listnew?sort=datetime">신상품</a>
					</li>
					<li class="nav-item nav_item">
						<a class="nav-link nav-active nav_link" aria-current="page" href="/store/listevent?sort=datetime">이벤트</a>
					</li>
					<li class="nav-item nav_item">
						<a class="nav-link nav-active nav_link" aria-current="page" href="/store/listpick?sort=datetime">Picks</a>
					</li>
				</ul>
			</div>
		</div>
		
		<div class="searchBody" style="display: none;">
			<div>
				<ul class="searchBodyUl row">
	
				</ul>
			</div>
		</div>
		
		<div class="menuBody">
			<div class="row">
				<div class="col">
					<ul>
						<li><a href="/" class="fs-5 fw-bolder">홈&nbsp;<img src="/icon/right-arrow.png" width="16px" height="16px"></a></li>
						<li><a href="/store/listbest?sort=star">베스트</a></li>
						<li><a href="/store/listnew?sort=datetime">신상품</a></li>
						<li><a href="/store/listevent?sort=datetime">이벤트</a></li>
						<li><a href="/store/listpick?sort=datetime">Picks</a></li>
					</ul>
					<br>
					<ul>
						<li><a href="/store/listall?sort=datetime" class="fs-5 fw-bolder">전체 도서&nbsp;<img src="/icon/right-arrow.png" width="16px" height="16px"></a></li>
						<li><a href="/store/listnational?sort=datetime">국내도서</a></li>
						<li><a href="/store/listinter?sort=datetime">해외도서</a></li>
						<li><a href="/store/listebook?sort=datetime">eBook</a></li>
					</ul>
				</div>
				
				<div class="col">
					<ul>
						<li><a href="/customercenter" class="fs-5 fw-bolder">고객센터&nbsp;<img src="/icon/right-arrow.png" width="16px" height="16px"></a></li>
						<li><a href="/notice/FAQ">자주 묻는 질문</a></li>
						<li><a href="/qna">1:1 문의</a></li>
						<li><a href="/events">이벤트</a></li>
						<li><a href="/location">오프라인 매장</a></li>
						<li><a href="/notice/announcement">공지사항</a></li>
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
	
	<div style="position: fixed; bottom: 50px; right: 40px;">
		<a href="#header"> <img src="/icon/up-arrow.png" title="맨 위로"
			style="width: 50px; height: 50px;">
		</a>
	</div>
</body>
</html>