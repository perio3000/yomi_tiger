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
<script type="text/javascript" src="js/FAQ.js"></script>
<meta charset="UTF-8">
<title>1:1 문의</title>

<link rel="stylesheet" type="text/css" href="css/reset.css">
<link rel="stylesheet" type="text/css" href="css/qna.css">
</head>
<body>
<!-- 옆쪽에 네비게이션? 그 부분도 만들어야함. -->
   <main class="container">
   		<div class="row title">
   			&nbsp;&nbsp;고객센터
   		</div>
		<div class="row notice">
			&nbsp; &nbsp; 자주 묻는 질문
		</div>
		<br>
		<!-- 검색창 넣어야되는데 어케하징? 지금은 그냥 텍스트랑 버튼만 넣어놨어요............-->
		<div class="row back">&nbsp;</div>
		<div class="row back">&nbsp;</div>
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-4">
				<input class="form-control" type="text" placeholder="질문을 검색해보세요." aria-label="default input example">
			</div>
			<div class="col-md-3">
			  	<button type="button" class="btn btn-primary">검색</button>
			</div>
		</div>
		<div class="row back">&nbsp;</div>
		<div class="row back">&nbsp;</div>
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-9">
				<!-- 링크 넣어서 그 페이지로 넘어가게 작업해야해. .. ....... -->
			</div>
		</div>
   </main>
</body>
</html>