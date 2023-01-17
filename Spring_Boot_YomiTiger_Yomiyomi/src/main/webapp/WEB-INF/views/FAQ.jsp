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
<jsp:include page="header.jsp"></jsp:include>
<title>FAQ</title>

<link rel="stylesheet" type="text/css" href="css/reset.css">
<link rel="stylesheet" type="text/css" href="css/FAQ.css">
</head>
<body>
   <main class="container">
   	<br>
   
  		<div class="row">
  			<div class="col-md-3">
   			<div class="row title">
	   			&nbsp;고객센터
	   		</div>
	   		<br>
	   		<div class="notice">메인</div>
	   		<!-- 파일 만들고 하이퍼링크 다시 걸어주기;v; 
	   			 이거 틀 몇페이지에는 이용할거니까 잘 냅두기-->
	   		<div class="">
				<a href="#" class="qnaMenu">자주 묻는 질문</a><br>
				<a href="#" class="qnaMenu">회원</a><br>
				<a href="#" class="qnaMenu">도서/상품정보</a><br>
				<a href="#" class="qnaMenu">주문/결제</a><br>
				<a href="#" class="qnaMenu">배송</a><br>
				<a href="#" class="qnaMenu">반품/교환/환불</a><br>
				<a href="#" class="qnaMenu">세금계산서/증빙</a><br>
				<a href="#" class="qnaMenu">기타</a><br>
				<a href="#" class="qnaMenu">eBook</a><br>
				<br>
				<a href="#" class="notice">1:1문의</a><br>
				<a href="1by1qna" class="qnaMenu">1:1문의 접수</a><br>
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
					<a class="customerInfo2">(주말 및 공휴일 휴무)</a>
			</div>
  			</div>
  			
   			<div class="col-md-9">
   			<br><br><br>
   				<div class="col-md-3 notice">자주 묻는 질문</div>
				
				<div class="d-flex justify-content-center align-items-center" style="height: 150px; background-color: #F4EEFF;">
					<div class="">
						<input class="form-control" type="text" placeholder="질문을 검색해보세요." aria-label="default input example">
					</div>
					<div class="">
					  	<button type="button" class="btn">검색</button>
					</div>
				</div>
				<br>
				<div class="d-flex justify-content-center align-items-center" style="height: 150px; border: 1px solid #F4EEFF;">
					<table class="table">
					  <tbody>
					    <tr>
					      <td><a href="#" class="qnaMenu">회원</a></td>
					      <td><a href="#" class="qnaMenu">도서/상품정보</a></td>
					      <td><a href="#" class="qnaMenu">주문/결제</a></td>
					    </tr>
					    <tr>
					      <td><a href="#" class="qnaMenu">배송</a></td>
					      <td><a href="#" class="qnaMenu">반품/교환/환불</a></td>
					      <td><a href="#" class="qnaMenu">세금계산서/증빙</a></td>
					    </tr>
					    <tr>
					      <td><a href="#" class="qnaMenu">기타</a></td>
					      <td><a href="#" class="qnaMenu">eBook</a></td>
					    </tr>
					  </tbody>
					</table>
   			  	</div>
   			  	
   				<div class="row notice">BEST 10</div>
   				<div class="accordion" id="accordionPanelsStayOpenExample">
   				
				  <div class="accordion-item">
				    <h2 class="accordion-header" id="panelsStayOpen-headingOne">
				      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true" aria-controls="panelsStayOpen-collapseOne">
						질문 1번
				      </button>
				    </h2>
				    <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show" aria-labelledby="panelsStayOpen-headingOne">
				      <div class="accordion-body">
						답변 1번
				      </div>
				    </div>
				  </div>
				  
				  <div class="accordion-item">
				    <h2 class="accordion-header" id="panelsStayOpen-headingTwo">
				      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="false" aria-controls="panelsStayOpen-collapseTwo">
				       	질문 2번
				      </button>
				    </h2>
				    <div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingTwo">
				      <div class="accordion-body">
						답변 2번
				      </div>
				    </div>
				  </div>
				  
				  <div class="accordion-item">
				    <h2 class="accordion-header" id="panelsStayOpen-headingThree">
				      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseThree" aria-expanded="false" aria-controls="panelsStayOpen-collapseThree">
						질문 3번
				      </button>
				    </h2>
				    <div id="panelsStayOpen-collapseThree" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingThree">
				      <div class="accordion-body">
						답변 3번
				      </div>
				    </div>
				  </div>
				  
				  <div class="accordion-item">
				    <h2 class="accordion-header" id="panelsStayOpen-headingFour">
				      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseFour" aria-expanded="false" aria-controls="panelsStayOpen-collapseFour">
						질문 4번
				      </button>
				    </h2>
				    <div id="panelsStayOpen-collapseFour" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingFour">
				      <div class="accordion-body">
						답변 4번
				      </div>
				    </div>
				  </div>
				  
				  <div class="accordion-item">
				    <h2 class="accordion-header" id="panelsStayOpen-headingFive">
				      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseFive" aria-expanded="false" aria-controls="panelsStayOpen-collapseFive">
						질문 5번
				      </button>
				    </h2>
				    <div id="panelsStayOpen-collapseFive" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingFive">
				      <div class="accordion-body">
						답변 5번
				      </div>
				    </div>
				  </div>
				  
				  <div class="accordion-item">
				    <h2 class="accordion-header" id="panelsStayOpen-headingSix">
				      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseSix" aria-expanded="false" aria-controls="panelsStayOpen-collapseSix">
						질문 6번
				      </button>
				    </h2>
				    <div id="panelsStayOpen-collapseSix" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingSix">
				      <div class="accordion-body">
						답변 6번
				      </div>
				    </div>
				  </div>
				
				<div class="accordion-item">
				    <h2 class="accordion-header" id="panelsStayOpen-headingSeven">
				      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseSeven" aria-expanded="false" aria-controls="panelsStayOpen-collapseSeven">
						질문 7번
				      </button>
				    </h2>
				    <div id="panelsStayOpen-collapseSeven" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingSeven">
				      <div class="accordion-body">
						답변 7번
				      </div>
				    </div>
				  </div>
				
				<div class="accordion-item">
				    <h2 class="accordion-header" id="panelsStayOpen-headingEight">
				      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseEight" aria-expanded="false" aria-controls="panelsStayOpen-collapseEight">
						질문 8번
				      </button>
				    </h2>
				    <div id="panelsStayOpen-collapseEight" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingEight">
				      <div class="accordion-body">
						답변 8번
				      </div>
				    </div>
				  </div>
				
				<div class="accordion-item">
				    <h2 class="accordion-header" id="panelsStayOpen-headingNine">
				      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseNine" aria-expanded="false" aria-controls="panelsStayOpen-collapseNine">
						질문 9번
				      </button>
				    </h2>
				    <div id="panelsStayOpen-collapseNine" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingNine">
				      <div class="accordion-body">
						답변 9번
				      </div>
				    </div>
				</div>
				
				<div class="accordion-item">
				    <h2 class="accordion-header" id="panelsStayOpen-headingTen">
				      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseTen" aria-expanded="false" aria-controls="panelsStayOpen-collapseTen">
						질문 10번
				      </button>
				    </h2>
				    <div id="panelsStayOpen-collapseTen" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingTen">
				      <div class="accordion-body">
						답변 10번
				      </div>
				    </div>
				  </div>
				</div>
			</div>
		</div>
	  <br><br>			
	</main>
</body>
</html>