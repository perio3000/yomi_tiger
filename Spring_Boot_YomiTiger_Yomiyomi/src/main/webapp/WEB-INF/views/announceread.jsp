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
<title>공지사항</title>

<link rel="stylesheet" type="text/css" href="css/reset.css">
<link rel="stylesheet" type="text/css" href="css/announceread.css">
</head>
<body>
   <main class="container">
   	<br>
   	
   		<div class="row">
   			<div class="col-md-3">
	   			<a href="customercenter" class="title">
		   			고객센터
		   		</a>
		   		<br>
		   		<br>
		   		<div class="notice">메인</div>
		   		<!-- 파일 만들고 하이퍼링크 다시 걸어주기;v; 
		   			 이거 틀 몇페이지에는 이용할거니까 잘 냅두기-->
		   		<div>
					<a href="FAQ" class="qnaMenu">자주 묻는 질문</a><br>
					<a href="#" class="qnaMenu">회원</a><br>
					<a href="#" class="qnaMenu">도서/상품정보</a><br>
					<a href="#" class="qnaMenu">주문/결제</a><br>
					<a href="#" class="qnaMenu">배송</a><br>
					<a href="#" class="qnaMenu">반품/교환/환불</a><br>
					<a href="#" class="qnaMenu">세금계산서/증빙</a><br>
					<a href="#" class="qnaMenu">기타</a><br>
					<a href="#" class="qnaMenu">eBook</a><br>
					<br>
					<span class="notice">1:1문의</span><br>
					<a href="qna" class="qnaMenu">1:1문의 접수</a><br>
					<a href="#" class="qnaMenu">1:1문의 내역</a><br>
					<br>
					<a href="#" class="notice">공지사항</a><br>
					<br>
					<p class="customerInfo">고객센터 이용안내
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-headset" viewBox="0 0 16 16">
  							<path d="M8 1a5 5 0 0 0-5 5v1h1a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V6a6 6 0 1 1 12 0v6a2.5 2.5 0 0 1-2.5 2.5H9.366a1 1 0 0 1-.866.5h-1a1 1 0 1 1 0-2h1a1 1 0 0 1 .866.5H11.5A1.5 1.5 0 0 0 13 12h-1a1 1 0 0 1-1-1V8a1 1 0 0 1 1-1h1V6a5 5 0 0 0-5-5z"/>
						</svg></p>
						<a class="custmomerNum">0000-0000</a><a>(유료)</a>
						<p class="customerInfo2">평일 09:00 ~ 18:00</p>
						<p class="customerInfo2">(주말 및 공휴일 휴무)</p>
				</div>
   			</div>
   			
   			<div class="col-md-9">
   			<br><br><br>
   				<div class="col announceTitle">${announceread.title}</div>
   				<div class="col announceDate">공지사항&nbsp;&nbsp;<div class="vr"></div>&nbsp;&nbsp;${announceread.written_date}</div>
   				<br><hr>

   				<div class="col">${announceread.content}</div>

   				<br><hr>
   				<div class="row">
	   				<div class="col announcePrev">이전글</div>
	   				<div class="col-md-11 announcePrev"><a href="#">이전글 제목</a></div>
   				</div>
   				<hr>
   				<div class="row">
	   				<div class="col announceNext">다음글</div>
	   				<div class="col-md-11 announceNext"><a href="#">다음글 제목</a></div>
	   			</div>
	   			<hr><br>
	   			<div class="d-flex justify-content-center align-items-center">
   					<button type="button" class="btn btn-outline-primary btn-lg" id="listBtn" onclick="location='announcement'" style="width: 200px">공지사항 목록</button>
   				</div>
			</div>				
		</div>	
		<br><br>	
	</main>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>