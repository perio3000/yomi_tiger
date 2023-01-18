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
					<li class="breadcrumb-item active" aria-current="page">회원정보</li>
				</ol>
			</nav>
		</div>
		
		<div class="row">
			<div class="col-md-3">
				<div class="row">
					<div class="text-center profileContainer">
						<div>
							<img src="icon/user.png" class="rounded-circle" width="100px" height="100px">
						</div>
						<div class="name">
							'${ member.name }'님
						</div>
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
						<a href="/mypage_main?username=${ member.username }" class="menuTitle">마이페이지</a><br>
						<a href="/mypage_orderdeliverylist?username=${ member.username }">주문 배송 목록</a><br>
						<a href="/mypage_point?username=${ member.username }">포인트</a><br>
						<a href="/mypage_activitylist?username=${ member.username }">활동내역</a><br>
						<a href="/mypage_inquirylist?username=${ member.username }">문의내역</a><br>
						<a href="/mypage_userupdate?username=${ member.username }">회원정보</a><br>
						<br>
						<a href="/mypage_library?username=${ member.username }" class="menuTitle">서재</a>
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
											<a href="/mypage_main?username=${ member.username }" class="menuTitle">마이페이지</a><br>
											<a href="/mypage_orderdeliverylist?username=${ member.username }">주문 배송 목록</a><br>
											<a href="/mypage_point?username=${ member.username }">포인트</a><br>
											<a href="/mypage_activitylist?username=${ member.username }">활동내역</a><br>
											<a href="/mypage_inquirylist?username=${ member.username }">문의내역</a><br>
											<a href="/mypage_userupdate?username=${ member.username }">회원정보</a><br>
											<br>
											<a href="/mypage_library?username=${ member.username }" class="menuTitle">서재</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</nav>
				</div>
				
			</div>
			
			<div class="col-md-9">
				<div class="fs-1 fw-bolder">
					회원정보
				</div>
				<br>
				
				<!-- 탭 메뉴 -->
				<ul class="nav nav-tabs d-flex mt-3" id="myTab" role="tablist">
					<li class="nav-item" role="presentation">
						<button class="nav-link active" id="first-tab"
							data-bs-toggle="tab" data-bs-target="#first" type="button"
							role="tab" aria-controls="first" aria-selected="true"
							style="color: #325341; font-weight: bolder;">회원정보 수정</button>
					</li>
					<li class="nav-item" role="presentation">
						<button class="nav-link" id="second-tab" data-bs-toggle="tab"
							data-bs-target="#second" type="button" role="tab"
							aria-controls="second" aria-selected="false"
							style="color: #325341; font-weight: bolder;">로그인 설정</button>
					</li>
				</ul>

				<!-- 내용 -->
				<div class="tab-content d-flex justify-content-center row" id="myTabContent">

					<!-- 1번 탭 -->
					<div class="tab-pane fade show active col" id="first" role="tabpanel" aria-labelledby="first-tab">
					
						<form:form>
							<table class="table">
								<tr>
									<div class="mb-3 row mt-3">
										<label for="staticEmail" class="col-sm-2 col-form-label fw-bolder">아이디</label>
										<div class="col-sm-10">
											<input type="text" readonly class="form-control-plaintext"
												id="staticEmail" value="${ member.username }">
										</div>
									</div>
									
									<div class="mb-3 row">
										<label for="inputPassword1" class="col-sm-2 col-form-label fw-bolder">비밀번호</label>
										<div class="col-sm-10">
											<input type="password" class="form-control"
												id="inputPassword1">
											<div class="text-secondary">&#10003; 영문, 숫자, 특수문자 3가지 조합 / 8자리 이상 20자리 이하</div>
											<div class="text-secondary">&#10003; 공백 및 3자 이상의 연속 또는 중복 문자는 사용 불가</div>
										</div>
									</div>
									
									<div class="mb-3 row">
										<label for="inputPassword2" class="col-sm-2 col-form-label fw-bolder">비밀번호 확인</label>
										<div class="col-sm-10">
											<input type="password" class="form-control"
												id="inputPassword2">
										</div>
									</div>
									
									<div class="mb-3 row">
										<label for="name" class="col-sm-2 col-form-label fw-bolder">이름</label>
										<div class="col-sm-10 d-flex">
											<input type="text" readonly class="form-control-plaintext"
												id="name" value="${ member.name }">
											<a class="text-center updateBtn">변경</a>
										</div>
									</div>
									
									<div class="mb-3 row">
										<label for="tel" class="col-sm-2 col-form-label fw-bolder">전화번호</label>
										<div class="col-sm-10 d-flex">
											<input type="text" readonly class="form-control-plaintext"
												id="tel" value="${ member.tel }">
											<a class="text-center updateBtn">변경</a>
										</div>
									</div>
									
									<div class="mb-3 row">
										<label for="address" class="col-sm-2 col-form-label fw-bolder">주소</label>
										<div class="col-sm-10 d-flex">
											<input type="text" readonly class="form-control-plaintext"
												id="address" value="${ member.city } ${ member.street } ${ member.location } &#12306;${ member.postnumber }">
											<a class="text-center updateBtn">변경</a>
										</div>
									</div>
									
									<div class="mt-5 row">
										<div class="col-sm-6">
											<button type="reset" class="resetBtn">취소</button>
										</div>
										<div class="col-sm-6">
											<button type="submit" class="submitBtn">확인</button>
										</div>
									</div>
								</tr>
							</table>
						</form:form>
					
					</div>

					<!-- 2번 탭 -->
					<div class="tab-pane fade col" id="second" role="tabpanel" aria-labelledby="second-tab">
					
						<div class="fs-5 fw-bolder mt-3">로그인 설정</div>
						
						<div class="mb-3 row">
							<div class="col-sm-12 d-flex">
								<span class="text-secondary">자주 사용하시는 SNS(네이버, 카카오, 구글)계정을 설정하시면 간편하게 로그인하실 수 있습니다.&nbsp;</span>
								<a class="text-center loginSet">로그인 정보 관리</a>
							</div>
						</div>
						
						<div class="fs-5 fw-bolder mt-3">SNS 계정 로그인</div>
						
						<div class="mb-3 row">
							<div class="col-sm-12 d-flex">
								<span class="text-secondary">연동 해제 후에도 해당 SNS 계정 정보로 정상 이용 가능합니다.</span>
								
							</div>
						</div>

						<div class="container overflow-hidden text-center">
							<div class="row gy-5">
								<div class="col-6">
									<div class="row">
										<div class="col fs-5" style="display: flex; align-items: center;">
											<img alt="" src="logo/naver_login_icon/btnG_아이콘원형.png" width="50px" height="50px">&nbsp;네이버
										</div>
										<div class="col" style="display: flex; align-items: center;">
											<span>2022.12.12</span>&nbsp;
											<span>연동</span>&nbsp;
											<div class="form-check form-switch">
												<input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckChecked" checked>
											</div>
										</div>	
									</div>
								</div>
								<div class="col-6">
									<div class="row">
										<div class="col fs-5" style="display: flex; align-items: center;">
											<img alt="" src="logo/kakao_login_icon/kakao.png" width="50px" height="50px">&nbsp;카카오
										</div>
										<div class="col" style="display: flex; align-items: center;">
											<span>2022.12.12</span>&nbsp;
											<span>연동</span>&nbsp;
											<div class="form-check form-switch">
												<input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckChecked" checked>
											</div>
										</div>	
									</div>
								</div>
								<div class="col-6">
									<div class="row">
										<div class="col fs-5" style="display: flex; align-items: center;">
											<img alt="" src="logo/google_signin_buttons/google.png" width="50px" height="50px">&nbsp;구글
										</div>
										<div class="col" style="display: flex; align-items: center;">
											<span>2022.12.12</span>&nbsp;
											<span>연동</span>&nbsp;
											<div class="form-check form-switch">
												<input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckChecked" checked>
											</div>
										</div>	
									</div>
								</div>
								<div class="col-6">
									<div class="">
									
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