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
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" href="logo/logo.png" />
<title>주문하기</title>
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
<link rel="stylesheet" type="text/css" href="css/pay.css">
<script src="js/pay.js"></script>

</head>
<body>
	<section>
		<div class="pay-content">
		</div>

		<aside class="aside">
			<div class="card text-center">
				<div class="card-body">
					<ul class="list-group list-group-horizontal">
						<li class="list-group-item">상품금액</li>
						<li class="list-group-item right">10,000 원</li>
					</ul>
					<ul class="list-group list-group-horizontal-sm">
						<li class="list-group-item">배송비</li>
						<li class="list-group-item right">+ 0원</li>
					</ul>
					<ul class="list-group list-group-horizontal-sm">
						<li class="list-group-item">쿠폰할인</li>
						<li class="list-group-item right">0원</li>
					</ul>
					<ul class="list-group list-group-horizontal-sm">
						<li class="list-group-item">포인트 사용</li>
						<li class="list-group-item right">0원</li>
					</ul>
					<div class="line"></div>
					<ul class="list-group list-group-horizontal">
						<li class="list-group-item">결제 예정 금액</li>
						<li class="list-group-item right">10,000 원</li>
					</ul>
					<ul class="list-group list-group-horizontal-sm">
						<li class="list-group-item">적립 예정 포인트</li>
						<li class="list-group-item right">+ 10P</li>

					</ul>
					<a href="#" class="btn btn-primary">주문하기 (2)</a>
				</div>
			</div>

			<div class="sidebar-info">
				<div class="check-wrap">
					<input class="check-keep" type="checkbox" id="check" name="check">
					<label for="check"></label><span>위 주문내용을 확인하였으며, 결제에 동의합니다.</span>
				</div>
				
				<div class="accordion accordion-flush" id="accordionFlushExample">
					<div class="accordion-item">
						<h2 class="accordion-header" id="flush-headingOne">
							<button class="accordion-button collapsed" type="button"
								data-bs-toggle="collapse" data-bs-target="#flush-collapseOne"
								aria-expanded="false" aria-controls="flush-collapseOne">
								Accordion Item #1</button>
						</h2>
						<div id="flush-collapseOne" class="accordion-collapse collapse"
							aria-labelledby="flush-headingOne"
							data-bs-parent="#accordionFlushExample">
							<div class="accordion-body">
								Placeholder content for this accordion, which is intended to
								demonstrate the
								<code>.accordion-flush</code>
								class. This is the first item's accordion body.
							</div>
						</div>
					</div>
					<div class="accordion-item">
						<h2 class="accordion-header" id="flush-headingTwo">
							<button class="accordion-button collapsed" type="button"
								data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo"
								aria-expanded="false" aria-controls="flush-collapseTwo">
								Accordion Item #2</button>
						</h2>
						<div id="flush-collapseTwo" class="accordion-collapse collapse"
							aria-labelledby="flush-headingTwo"
							data-bs-parent="#accordionFlushExample">
							<div class="accordion-body">
								Placeholder content for this accordion, which is intended to
								demonstrate the
								<code>.accordion-flush</code>
								class. This is the second item's accordion body. Let's imagine
								this being filled with some actual content.
							</div>
						</div>
					</div>
				</div>
			</div>
		</aside>
	</section>
	


	<footer> 푸터 </footer>
</body>
</html>