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
<script type="text/javascript" src="js/mypage.js"></script>
<link rel="stylesheet" type="text/css" href="css/reset.css">
<link rel="stylesheet" type="text/css" href="css/mypage.css">
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>

	<main class="container">
		<div class="row" id="breadcrumb">
			<nav style="-bs-breadcrumb-divider: '&gt;';" aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="#">Home</a></li>
					<li class="breadcrumb-item active" aria-current="page">마이페이지</li>
				</ol>
			</nav>
		</div>

		<div class="row">
			<div class="col-md-3">
				<div class="row">
					<div class="text-center profileContainer">
						<div>
							<img src="icon/user.png" class="rounded-circle" width="100px"
								height="100px">
						</div>
						<div class="name">'${ member.name }'님</div>
						<div class="row d-flex justify-content-center">
							<div class="card profile p-3">
								<div class="row">
									<div class="col">
										찜<br> 0
									</div>
									<div class="col">
										리스트<br> 0
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="menuText">
						<a href="/mypagemain?username=${ member.username }" class="menuTitle">마이페이지</a><br>
						<a href="/mypageorderdeliverylist?username=${ member.username }">주문 배송 목록</a><br>
						<a href="/pointtest">포인트</a><br>
						<a href="/activitylisttest">활동내역</a><br>
						<a href="/inquirylisttest">문의내역</a><br>
						<a href="/mypageuserupdate?username=${ member.username }">회원정보</a><br>
						<br>
						<a href="/librarytest" class="menuTitle">서재</a>
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
											<a href="/mypagemain?username=${ member.username }" class="menuTitle">마이페이지</a><br>
											<a href="/mypageorderdeliverylist?username=${ member.username }">주문 배송 목록</a><br>
											<a href="/pointtest">포인트</a><br>
											<a href="/activitylisttest">활동내역</a><br>
											<a href="/inquirylisttest">문의내역</a><br>
											<a href="/mypageuserupdate?username=${ member.username }">회원정보</a><br>
											<br>
											<a href="/librarytest" class="menuTitle">서재</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</nav>
				</div>
				
			</div>

			<div class="col-md-9">
				<!-- 탭 메뉴 -->
				<ul class="nav nav-tabs d-flex" id="myTab" role="tablist">
					<li class="nav-item" role="presentation">
						<button class="nav-link active" id="first-tab"
							data-bs-toggle="tab" data-bs-target="#first" type="button"
							role="tab" aria-controls="first" aria-selected="true"
							style="color: #325341; font-weight: bolder;">추천</button>
					</li>
					<li class="nav-item" role="presentation">
						<button class="nav-link" id="second-tab" data-bs-toggle="tab"
							data-bs-target="#second" type="button" role="tab"
							aria-controls="second" aria-selected="false"
							style="color: #325341; font-weight: bolder;">알림</button>
					</li>

				</ul>

				<!-- 내용 -->
				<div class="tab-content d-flex justify-content-center row"
					id="myTabContent">

					<!-- 1번 탭 -->
					<div class="tab-pane fade show active col" id="first"
						role="tabpanel" aria-labelledby="first-tab">
						<div class="accordion row flex-nowrap justify-content-evenly"
							id="accordionExample">

							<div class="card recCard recCard1 col-4">
								<a href="#"> <img alt="" src="logo/logo.png" class="rounded"
									width="100%" height="83%">
								</a>
							</div>
							<div class="card recCard recCard2 col-4">
								<a href="#"> <img alt="" src="logo/logo.png" class="rounded"
									width="100%" height="83%">
								</a>
							</div>
							<div class="card recCard recCard3 col-4">
								<a href="#"> <img alt="" src="logo/logo.png" class="rounded"
									width="100%" height="83%">
								</a>
							</div>

						</div>
					</div>

					<!-- 2번 탭 -->
					<div class="tab-pane fade col" id="second" role="tabpanel"
						aria-labelledby="second-tab">
						<div class="row" style="height: 16.5vw">
							<div style="margin-top: 40px"
								class="d-flex justify-content-center">
								<img src="icon/attention.png" width="40px" height="40px">
							</div>
							<div class="d-flex justify-content-center">알림 소식이 없습니다.</div>

						</div>
					</div>

				</div>

				<div class="row">
					<div class="row categoryText">포인트</div>
					<div class="row p-3">
						<a href="#" class="aTag">
							<div class="card pointCard p-3">
								<div class="row flex-nowrap justify-content-evenly">
									<div class="col">
										<img alt="" src="icon/loyal-customer.png" width="40"
											height="40">
									</div>
									<div class="col align-self-center text-end">${ member.point }</div>
									<div class="col align-self-center">포인트</div>
								</div>
							</div>
						</a>
					</div>
					<div class="row">
						<div class="col categoryText">서재</div>
						<div class="col text-end moreText align-self-center p-3">
							<a href="#"> 더보기 > </a>
						</div>
					</div>
					<div class="row">
						<div class="col-4 p-3">
							<div class="card libList p-3">
								<span>#나의 보관함</span> <span>담겨있는 상품/콘텐츠가 없습니다.</span>
							</div>
						</div>
						<div class="col-8 addListBox">
							<div class="card addList p-3">리스트 추가</div>
						</div>
					</div>
					<div class="row">
						<div class="col-4 categoryText">이어보기</div>
						<div class="col-8 categoryText">바로가기</div>
					</div>
					<div class="row">
						<div class="col-4 p-3 ">
							<div class="card p-3 continue">이어보기 상세</div>
						</div>
						<div class="col-8 p-3">
							<div class="row">
								<div class="card p-3 addHref">바로가기 추가</div>
							</div>
							<div class="row">
								<div class="col card p-3 goGuide">
									<div>
										eBook부터 종이책까지<br> 넓은 독서 생활의 시작
									</div>
									<div class="explText"></div>
									<div class="text-end">
										<a href="#">이용안내 ></a>
									</div>
								</div>
								<div class="col card p-3 goLibrary">
									<div>
										기억하고 기록하는<br> 나만의 공간
									</div>
									<div class="explText fs-5" style="color: #424874">서재</div>
									<div class="text-end">
										<a href="#">서재 ></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>


	</main>
</body>
</html>