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
<link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">

<meta charset="UTF-8">
<title>상세페이지</title>

<link rel="stylesheet" type="text/css" href="/css/reset.css">
<link rel="stylesheet" type="text/css" href="/css/productdetail.css">
</head>
<body>
	<main class="container">
	<br><br>
		<div class="row">
			<div class="col">
				<span class="detailTitle">책 제목</span>
			</div>
		</div>
		<div class="row">
			<div class="col">
				<span class="detailAuthor">저자 / 출판사 / 날짜</span>
			</div>
		</div>
		<hr><br>
		
		<div class="row">
			<div class="col-md-5">
				<img src="logo/book/bookcover1.jpeg" width="450px" height="550px"><br>
			</div>
			<div class="col-md-2">
				<span class="detailNotice">정가</span><br>
				<span class="detailNotice">판매가</span><br>
				<span class="detailNotice">마일리지</span><br>
				<span class="detailNotice">배송료</span>
			</div>
			<div class="col-md-5">
			
			</div>
		</div>
	</main>
	<br><br>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>