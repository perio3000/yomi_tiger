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
<title>아이디 비밀번호 찾기</title>
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


<link rel="stylesheet" type="text/css" href="css/reset.css">
<link rel="stylesheet" type="text/css" href="css/findidpw.css">
</head>
<body>
	<section>
		<div class="container">
			<div class="global-cont">
				<div class="inner-cont">
					<img alt="logo" src="logo/logo.png">
					<div class="find">
						<span class="active find-id">아이디 찾기</span> 
						<span class="find-pw">비밀번호 찾기</span>
					</div>
					<div class="find-id-pw">
						<form class="find-id-form active">
							<div class="formst">
								<label>이름</label>
								<input type="text" id="" placeholder="이름을 입력해 주세요."> 
							</div>
							<div class="formst">
								<label>생년월일</label>
								<input type="password" id="" placeholder="생년월일 8자리를 입력해 주세요.">  
							</div>
							<div class="formst">
								<label>이메일</label>
								<input type="text" id="" placeholder="이메일을 입력해 주세요.">  
							</div>
							<div class="formst">
								<input type="submit" value="확인">
							</div>
						</form>
						<form class="find-pw-form">
							<div class="formst">
								<label>아이디</label>
								<input type="text" id="" placeholder="아이디를 입력해 주세요."> 
							</div>
							<div class="formst">
								<label>이름</label>
								<input type="text" id="" placeholder="이름을 입력해 주세요."> 
							</div>
							<div class="formst">
								<label>생년월일</label>
								<input type="password" id="" placeholder="생년월일 8자리를 입력해 주세요.">  
							</div>
							<div class="formst">
								<label>이메일</label>
								<input type="text" id="" placeholder="이메일을 입력해 주세요.">  
							</div>
							<div class="formst">
								<input type="submit" value="인증번호 발송">
							</div>
						</form>
						
					</div>
				</div>
			</div>
		</div>
	</section>

	<footer> 푸터 </footer>
	
	<script type="text/javascript">
	let spanOption = document.querySelectorAll(".find span");

	spanOption.forEach(function (span) {
	    span.addEventListener("click", function (e) {
	        
	        //Remove class active
	        e.target.parentElement.querySelectorAll(".active").forEach(function (element) {
	            element.classList.remove("active");
	        });
	        //Add class active
	        e.target.classList.add("active");
	      
	       if (e.target.classList.contains("find-id")) {
	         
	        document.querySelectorAll(".find-id-pw form").forEach(function (element) {
	            element.classList.remove("active");
	        });
	         
	        document.querySelector(".find-id-form").classList.add("active");
	        
	       } else {
	         
	        document.querySelectorAll(".find-id-pw form").forEach(function (element) {
	            element.classList.remove("active");
	        });
	         
	        document.querySelector(".find-pw-form").classList.add("active");
	       }
	    })
	})
	</script>
</body>
</html>