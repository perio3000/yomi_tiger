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
<script src="js/productdetail.js"></script>
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
				<span class="detailNotice">정가</span><br><br>
				<span class="detailNotice">판매가</span><br><br>
				<span class="detailNotice">마일리지</span><br><br>
				<span class="detailNotice">배송료</span><br><br>
				<span class="detailNotice">배송 예상일</span><br><br>
				<span class="detailNotice">수량</span>
			</div>
			<div class="col-md-5">
				<span class="cost">15,000원</span><br><br>
				<span class="dcCost">13,500원 (10% 할인)</span><br><br>
				<span class="mileage">5%</span><br><br>
				<span class="deliveryFee">무료</span><br><br>
				<span class="deliveryDate">오후 1시 이전까지 주문 시 당일 출고</span><br><br>
				
				<!-- 수량 +,- 버튼 모르겠어서 일단 셀렉트로 넣었습니다... 무능한 이정향 ;v; -->
				<select id="bookCount" class="form-select form-select mb-3" aria-label="Default select example" style="width:100px;">
				  <option selected>수량</option>
				  <option value="1">1</option>
				  <option value="2">2</option>
				  <option value="3">3</option>
				  <option value="4">4</option>
				  <option value="5">5</option>
				  <option value="6">6</option>
				  <option value="7">7</option>
				  <option value="8">8</option>
				  <option value="9">9</option>
				  <option value="10">10</option>
				</select>
				<input class="btn" type="button" id="cartBtn" value="장바구니">
				<input class="btn" type="button" id="buyBtn" value="구매하기">
				<input class="btn" type="button" id="presentBtn" value="선물하기">
				<input class="btn" type="button" id="likeBtn" value="♡찜하기">
			</div>
		</div><br><hr>
		
		<div class="row">
			<div class="col-md-2">
				<span class="detailTitle">기본정보</span>
			</div>
			<div class="col-md-10">
				<div class="d-flex align-items-center" style="height:40px;">
					<span class="detailNotice">
						328쪽&nbsp;&nbsp;<div class="vr"></div>&nbsp;&nbsp;117*175mm&nbsp;&nbsp;<div class="vr"></div>
						&nbsp;230g&nbsp;&nbsp;<div class="vr"></div>&nbsp;&nbsp;ISBN : 9791133487554
					</span>
				</div>
				<hr>
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-2">
				<span class="detailTitle">책소개</span>
			</div>
			<div class="col-md-10">
				<div class="d-flex align-items-center">
					<span class="detailNotice">
						2000년부터 발표된 그의 주옥같은 글들. 독자들이 자발적으로 만든 제본서는 물론, 전자책과 앱까지 나왔던 《세이노의 가르침》이 드디어 전국 서점에서 독자들을 마주한다. 
						여러 판본을 모으고 저자의 확인을 거쳐 최근 생각을 추가로 수록하였다. 정식 출간본에만 추가로 수록된 글들은 목차와 본문에 별도 표시하였다.
					</span>
				</div>
				<hr>
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-2">
				<span class="detailTitle">목차</span>
			</div>
			<div class="col-md-10">
				<div class="d-flex align-items-center">
					<span class="detailNotice">
						※ 이 책에 새롭게 추가된 내용은 글꼭지 앞에 넣은 별표(*) 표시로 확인하시기 바랍니다.
						<br><br>
						서문 _6
						<br><br>
						1부 아무것도 가진 게 없다고 느껴질 때
						<br><br>
						앞길이 보이지 않을 때<br>
						*삶이 그대를 속이면 분노하라<br>
						*천재 앞에서 주눅 들지 말라<br>
						*스트레스의 뿌리를 없애라<br>
						*실패하면 제로 점으로 내려가라<br>
						*미래를 미리 계산하지 마라<br>
						*건강을 잃으면 모든 것을 잃는다고?<br>
						*10분 이상 고민하지 말라<br>
						<br><br>
						내 학력이 초라하게 느껴질 때<br>
						*학력이나 학벌이 빈약한 경우 어떻게 해야 하나<br>
						*학벌 좋은 사람들이 알아야 할 것<br>
						*부자가 되려면 학교 공부를 열심히 해야 하는가<br>
						*고학력은 부자가 되는 데 도움이 되는가<br>
					</span>
				</div>
				<hr>
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-2">
				<span class="detailTitle">저자 및 <br>역자 소개</span>
			</div>
			<div class="col-md-10">
				<div class="d-flex align-items-center">
					<span class="detailNotice">
						<span class="authorName">세이노</span> (지은이) 
						<br><br>
						필명 세이노는 현재까지 믿고 있는 것들에 대해 No라고 말하라(Say No)는 뜻이다. 2023년 기준 순자산 천억 원대 자산가다.
						1955년생. 의사의 장남으로 태어나 서너 살 유년기부터 아버지의 가르침을 받았다. 아버지가 전 재산을 사기로 모두 날린 후 사망하면서 친부모를 모두 여의고 고교시절부터 생활고에 크게 시달렸다.
						고교 3학년 때 건강과 가난 때문에 휴학하고 친구 아버님과 친구들의 투자를 받아 사업을 했으나 실패 후 복학하여 고교를 4년 만에 졸업하고 입대했다.
						<br><br>
						최근작 : <세이노의 가르침>
					</span>
				</div>
				<hr>
			</div>
		</div>
			
		<div class="row">
			<div class="col-md-2">
				<span class="detailTitle">출판사 소개</span>
			</div>
			<div class="col-md-10">
				<div class="d-flex align-items-center">
					<span class="detailNotice">
						<span class="publisherName">데이원</span><br> 
						최근작 : <세이노의 가르침>,<웹소설의 모든 것>,<마음 가는 대로 해라>등 총 7종<br>
						대표분야 : 외국에세이 1위 (브랜드 지수 426점), 성공학 1위 (브랜드 지수 35,490점) 
					</span>
				</div>
				<hr>
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-2">
				<span class="detailTitle">후기</span>
			</div>
			<div class="col-md-10">
				<div class="d-flex align-items-center">
					<span class="detailNotice">
						이 책을 구매한 고객들의 후기입니다.
					</span>
				</div>
				<br>
					<a class="bookReview" href="">책 리뷰</a><br>
					<a class="bookReview" href="">책 리뷰</a><br>
					<a class="bookReview" href="">책 리뷰</a><br>
					<a class="bookReview" href="">책 리뷰</a><br>
					<a class="bookReview" href="">책 리뷰</a><br>
			</div>
		</div>
	</main>
	<br><br>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>