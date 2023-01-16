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
<title>yomiyomi</title>
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
<link rel="stylesheet" type="text/css" href="css/cart.css">
<script src="js/cart.js"></script>
</head>
<body>
	
	<section>
		<div class="cart">
			<div class="cart-head">장바구니 (2)</div>
			<table class="cart-list">
				<form>
					<thead>
						<tr>
							<th class="cart-list-head"><input id="checkbox"
								type="checkbox" checked="checked" onclick='selectAll(this)'></th>
							<th class="cart-list-head" colspan="4">전체선택</th>
						</tr>
					</thead>

					<tbody>
						<tr>
							<td class="st" colspan="5"></td>
						</tr>
						<tr class="cart-list-detail">
							<td><input type="checkbox" name="chk"></td>
							<td class="cart-img"><img
								src="data:image/jpeg;base64,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"
								alt="주술회전"></td>
							<td>
								<p class="bookname">[일본도서] 주술회전 11권</p> <span class="price">5000원</span>
							</td>
							<td class="cart-style"><span class="price">5000원</span><br>
								<div class="updown">
									<span onclick="fnCalCount('m',this)"><i
										class="fa-solid fa-minus"></i></span> <input type="text"
										name="p_num1" id="p_num1" size="2" maxlength="4" class="p_num"
										value="1"> <span onclick="fnCalCount('p',this)"><i
										class="fa-solid fa-plus"></i></span>
								</div></td>
							<td class="cart-style-del">
								<div class="del"><button type="button" class="btn-close" aria-label="Close"></button></div>
								<div class="ship">무료</div>
							</td>
						</tr>

						<tr class="cart-list-detail">
							<td><input type="checkbox" name="chk"></td>
							<td class="cart-img"><img
								src="https://image.aladin.co.kr/product/23590/14/cover500/k212638327_1.jpg"
								alt="원피스"></td>
							<td>
								<p class="bookname">[해외도서] 원피스 95권</p><span class="price">50,000원</span>
							</td>
							<td class="cart-style"><span class="price">50,000원</span><br>
								<div class="updown">
									<span onclick="fnCalCount('m',this)"><i
										class="fa-solid fa-minus"></i></span> <input type="text"
										name="p_num1" id="p_num1" size="2" maxlength="4" class="p_num"
										value="1"> <span onclick="fnCalCount('p',this)"><i
										class="fa-solid fa-plus"></i></span>
								</div></td>
							<td class="cart-style-del">
								<div class="del"><button type="button" class="btn-close" aria-label="Close"></button></div>
								<div class="ship">무료</div>
							</td>
						</tr>
					</tbody>

					<tfoot>
						<tr>
							<td colspan="5">
								<button class="cart-list-optionbtn">선택상품 삭제</button>
								<button class="cart-list-optionbtn">선택상품 찜</button>
							</td>
						</tr>
					</tfoot>
				</form>
			</table>
			<div class="accordion accordion-flush" id="accordionFlushExample">
				<div class="accordion-item">
					<h2 class="accordion-headers" id="flush-headingOne">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#flush-collapseOne"
							aria-expanded="false" aria-controls="flush-collapseOne">
							장바구니 유의사항</button>
					</h2>
					<div id="flush-collapseOne" class="accordion-collapse collapse"
						aria-labelledby="flush-headingOne"
						data-bs-parent="#accordionFlushExample">
						<div class="accordion-body">
							<ul>
								<li>• 장바구니 상품은 최대 30일간 저장됩니다.</li>
								<li>• 가격, 옵션 등 정보가 변경된 경우 주문이 불가할 수 있습니다.</li>
								<li>• 상품별 배송일정이 서로 다를시 가장 늦은 일정의 상품 기준으로 모두 함께 배송됩니다.</li>
								<li>• 배송지 수정시 예상일이 변경 될 수 있습니다.</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
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
						<li class="list-group-item right"> 0원</li>
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
		</aside>
	</section>
	


	<footer> 푸터 </footer>
</body>
</html>