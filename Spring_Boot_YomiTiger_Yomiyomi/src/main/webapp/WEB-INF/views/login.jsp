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
<title>yomiyomi</title>
<jsp:include page="header.jsp"></jsp:include>
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
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<script type="text/javascript" src="/js/login.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script type="text/javascript" src="/js/kakaologin.js"></script>

<link rel="stylesheet" type="text/css" href="css/reset.css">
<link rel="stylesheet" type="text/css" href="css/loginstyle.css">
</head>
<body onload="document.f.username.focus();">
	
	<main>
		<div class="container">
			<div class="global-cont">
				<div class="inner-cont">
				
					<div class="sign">
						<img alt="logo" src="logo/logo.png">
					</div>
					<c:url value="/login" var="loginUrl" />
					<div class="sign-in-up">
						<form:form class="sign-in-form active" action="${loginUrl}" method="post" name="f">
							<input type="text" placeholder="아이디를 입력해 주세요." id="username" name="username"> 
							<input type="password" placeholder="비밀번호를 입력해 주세요." id="password" name="password">
							<c:if test="${param.error != null}">
								<p>아이디와 비밀번호가 잘못되었습니다.</p>
							</c:if>
							<c:if test="${param.logout != null}">
								<p>로그아웃 하였습니다.</p>
							</c:if>
							<input type="submit" value="로그인">
							<span class="check"><input type="checkbox" id="idSaveCheck"><label>아이디 저장</label></span> 
							<a href="findIDPW">아이디/비밀번호 찾기</a> 
						</form:form>

						<div class="social-login">
							<a class="btn btn-social-icon btn-google"><span class="fa fa-google"></span></a>
							<a class="btn btn-social-icon btn-naver"><span class="xi-naver xi-x"></span></a>
							<a class="btn btn-social-icon btn-kakakotalk" href="javascript:kakaoLogin();"><span class="xi-kakaotalk xi-x"></span></a>
						</div>

						<div class="clearfix"></div>
						<div class="policy">개인정보 보호를 위해 공용 PC에서 사용 시 SNS계정의 <br>로그아웃 상태를
							꼭 확인해 주세요.</div>
						<div class="sign-up-button">
							<button onclick="location.href='/member/signup'">회원가입</button>
						</div>
						<div class="divider"></div>
						<div class="Non-member-order"><a href="#">비회원 주문조회 ></a></div>
					</div>
				</div>
			</div>
		</div>
	</main>

	<footer> 푸터 </footer>
</body>
</html>