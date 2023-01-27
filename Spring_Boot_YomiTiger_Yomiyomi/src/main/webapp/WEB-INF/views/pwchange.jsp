<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="/logo/logo.png" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
<jsp:include page="header.jsp"></jsp:include>

<meta charset="UTF-8">
<title>비밀번호 찾기</title>

<link rel="stylesheet" type="text/css" href="/css/reset.css">
<link rel="stylesheet" type="text/css" href="/css/pwchange.css">
</head>
<body>
	<main class="container">
	<br><br>
		<div class="row">
			<div class="col-md-4">
				<div class="d-flex justify-content-end align-items-center" style="height:35px;">
					<span class="pwChange">기존 비밀번호</span>
				</div>
			</div>
			<div class="col-md-6">
				<input type="text" class="form-control" placeholder="기존 비밀번호를 입력해 주세요." id="prevPw" style="width: 400px;">
  				<label for="prevPw"></label>
			</div>			
			<div class="col-md-2">&nbsp;</div>
		</div>
		<div class="row">
			<div class="col-md-4">
				<div class="d-flex justify-content-end align-items-center" style="height:35px;">
					<span class="pwChange">새 비밀번호</span>
				</div>
			</div>
			<div class="col-md-6">
				<input type="text" class="form-control" placeholder="새 비밀번호를 입력해 주세요." id="newPw" style="width: 400px;">
  				<label for="newPw"></label>
				<span class="pwChangeNotice">* 비밀번호는 영어 대문자/소문자/특수문자 중 2가지 이상 이용. <br>&nbsp;&nbsp;&nbsp;&nbsp;최소 8글자 이상.</span>
			</div>			
			<div class="col-md-2">&nbsp;</div>
		</div>
		<div class="row">
			<div class="col-md-4">
				<div class="d-flex justify-content-end align-items-center" style="height:35px;">
					<span class="pwChange">비밀번호 확인</span>
				</div>
			</div>
			<div class="col-md-6">
				<input type="text" class="form-control" placeholder="새 비밀번호를 한번 더 입력해 주세요." id="newPwCheck" style="width: 400px;">
  				<label for="newPwCheck"></label>
			</div>			
			<div class="col-md-2">&nbsp;</div>
		</div>
		<br><br>
		<div class="d-grid gap-2 col-4 mx-auto">
		  <button class="btn btn-primary" type="button" id="pwChangeBtn">비밀번호 변경</button>
		</div>
	</main>
	<br><br>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>