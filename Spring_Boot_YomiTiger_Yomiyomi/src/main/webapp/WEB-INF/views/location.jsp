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
<link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
<jsp:include page="header.jsp"></jsp:include>

<meta charset="UTF-8">
<title>오프라인 매장</title>

<link rel="stylesheet" type="text/css" href="css/reset.css">
<link rel="stylesheet" type="text/css" href="css/location.css">
</head>
<body>
	<main class="container">
	<br><br>
		<div class="row">
			<div class="col-md-7">
				<div class="row title">오프라인 매장</div>
				<div class="row add">서울특별시 영등포구 영중로 56 신한빌딩 4층</div>
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d623.3874494393765!2d126.90486714183263!3d37.521087201529184!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357c9ee486f47657%3A0x5de60163d089d94a!2z7ISc7Jq47Yq567OE7IucIOyYgeuTse2PrOq1rCDsmIHspJHroZwgNTY!5e0!3m2!1sko!2skr!4v1673597550684!5m2!1sko!2skr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
			</div>
			
			<div class="col-md-5">
				<br><br>
				<div class="row notice">매장소개</div>
				<br>
				<div class="row contents">영업시간 : 09:30 ~ 21:00 (공휴일 휴무)</div>
				<br>
				<div class="row contents">주소 : 서울특별시 영등포구 영중로 56 (신한빌딩 4층)</div>
				<br>
				<div class="row contents">매장번호 : 02-1234-5678</div>
				<br><br>
				<div class="row">
					<div class="col-md-4 notice"><i class="ri-map-pin-2-fill ri-2x"></i>오시는 길</div>
				</div>
				<br>
				<div class="row contents" style="color: #0052A4; font-weight: bold;">1호선</div>
				<div class="row contents">영등포역 3번 출구 도보 10분</div>
				<br>
				<div class="row contents" style="color: #996CAC; font-weight: bold;">5호선</div>
				<div class="row contents">영등포시장역 3번 출구 도보 3분</div>
			</div>
		</div>
		<br><br>
	</main>
</body>
</html>