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
<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script> -->
<script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">

<meta charset="UTF-8">
<title>공지사항</title>

<link rel="stylesheet" type="text/css" href="/css/reset.css">
<link rel="stylesheet" type="text/css" href="/css/announceread.css">
</head>
<body>
   <main class="container">
   	<br>
   	
   		<div class="row">
   			
   			
   			<div class="col">
   			<br><br><br>
   				<div class="col announceTitle">${ detail[0].title }</div>
   				<div class="col announceDate">이벤트&nbsp;&nbsp;<div class="vr"></div>&nbsp;&nbsp;${ detail[0].written_date }</div>
   				<br><hr>
				<div class="col">이벤트 기간 : ${ detail[0].event_start } ~ ${ detail[0].event_end }</div><br>
				<div class="col">
					<c:forEach var="img" items="${ detail }">
						<img src="${ img.file_path }">
					</c:forEach>
				</div><Br>
   				<div class="col">${ detail[0].content }</div>

   				<br><hr>
   				<%-- <div class="row">
	   				<div class="col announcePrev">이전글</div>
	   				<div class="col-md-11 announcePrev"><a href="/announceread?id=${read_prev.id}">${read_prev.title} </a></div>
   				</div>
   				<hr>
   				<div class="row">
	   				<div class="col announceNext">다음글</div>
	   				<div class="col-md-11 announceNext"><a href="/announceread?id=${read_next.id}">${read_next.title}</a></div>
	   			</div>
	   			<hr> --%><br>
	   			<div class="d-flex justify-content-center align-items-center">
   					<button type="button" class="btn btn-outline-primary btn-lg" id="listBtn" onclick="location='/notice/events'" style="width: 200px">이벤트 목록</button>
   				</div>
			</div>				
		</div>	
		<br><br>	
	</main>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>