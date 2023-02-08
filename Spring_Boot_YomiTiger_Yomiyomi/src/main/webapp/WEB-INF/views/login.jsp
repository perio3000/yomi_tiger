<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.security.SecureRandom" %>
<%@ page import="java.math.BigInteger" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="google-signin-client_id" content="305589923343-id0m33jrcjjgfv985bbj9rtgc0qc8vul.apps.googleusercontent.com.apps.googleusercontent.com">
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

						<%
							String clientId = "f12Ftt_0n5ohdIkldJsh";//애플리케이션 클라이언트 아이디값";
							String redirectURI = URLEncoder.encode("http://localhost:8282/auth/naver/callback", "UTF-8");
							SecureRandom random = new SecureRandom();
							String state = new BigInteger(130, random).toString();
							String apiURL = "https://nid.naver.com/oauth2.0/authorize?response_type=code" + "&client_id=" + clientId
									+ "&redirect_uri=" + redirectURI + "&state=" + state;
							session.setAttribute("state", state);
							
							String state2 = new BigInteger(130, random).toString();
							session.setAttribute("state2", state2);
						%>

						<div class="social-login">
							<a class="btn btn-social-icon btn-google" href="https://accounts.google.com/o/oauth2/v2/auth?
scope=https://www.googleapis.com/auth/analytics.readonly&
access_type=offline&
include_granted_scopes=true&state=state_parameter_passthrough_value&
redirect_uri=http://localhost:8282/login/oauth2/code/google&response_type=code&client_id=305589923343-id0m33jrcjjgfv985bbj9rtgc0qc8vul.apps.googleusercontent.com">
								<span class="fa fa-google"></span></a>
							<a class="btn btn-social-icon btn-naver" href="<%=apiURL%>">
								<span class="xi-naver xi-x"></span></a>
							<a class="btn btn-social-icon btn-kakakotalk" href="https://kauth.kakao.com/oauth/authorize?client_id=bc4cda6f8f7a42949e52b295bbbaca0f&redirect_uri=http://localhost:8282/auth/kakao/callback&response_type=code">
								<span class="xi-kakaotalk xi-x"></span></a>
						</div>

						<div class="clearfix"></div>
						<div class="policy">개인정보 보호를 위해 공용 PC에서 사용 시 SNS계정의 <br>로그아웃 상태를
							꼭 확인해 주세요.</div>
						<div class="sign-up-button">
							<button onclick="location.href='/member/signup'">회원가입</button>
						</div>
						<div class="divider"></div>
						<div class="Non-member-order"><a href="nonmemberorder">비회원 주문조회 ></a></div>
					</div>
				</div>
			</div>
		</div>
	</main>

	<footer> 푸터 </footer>
</body>
</html>