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
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,-25" />
<script src="https://kit.fontawesome.com/ebf4d50ec6.js"
	crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>책 리스트</title>
<script type="text/javascript" src="/js/cart2.js"></script>
<link rel="stylesheet" type="text/css" href="/css/reset.css">
<link rel="stylesheet" type="text/css" href="/css/cart2.css">
</head>
<body>
	<main class="container">
		<input type="hidden" class="username" value="${ user }">
		<section>
	        <input type="hidden" id="hidden" value="">
	        <div id="section">
	            <div class="container">
	                <h1 class="cart-head">
	                    	장바구니
	                </h1>
	                <form name="orderform" id="orderform" method="post" class="orderform row" action="/store/pay" onsubmit="return false;">
	
	                        <div class="left_block col-lg-8">
	                            <div class="d-flex flex-row list_header">
	                                <div class="checks etrans d-flex align-items-center">
	                                    <input type="checkbox" id="check_box" checked="" onclick="javascript:basket.checkAll(this);">
	                                    <label for="check_box" class="check_box"></label>
	                                </div>
	                                <div class="align-self-end w-50">
	                                    <a href="javascript:void(0)" class="abutton ch_del_btn float-start ms-4" onclick="javascript:basket.delCheckedItem();">선택상품 삭제</a>
	                                </div>
	                                <div class="align-self-end w-50">
	                                    <a href="javascript:void(0)" class="abutton del_btn float-end me-3" onclick="javascript:basket.delAllItem();">장바구니 비우기</a>
	                                </div>
	                            </div><hr>
	                            <div id="left_block">
	                            
	                                
	                                
	                            </div>
	                        </div>
	                    <div class="right_block col-lg-4">
	                        <div class="order_price">주문 금액</div><hr><br>
	                        <div class="bigtext right-align sumcount" id="sum_p_num">상품갯수:
	                            <span class="sumCountText"></span>
	                            <!-- <script type="text/javascript" src="/js/cartAmount.js"></script> -->개
	                        </div><br><br>
	                        <div class="bigtext right-align box blue " id="">배송비: 
	                            <span class="">2,500</span>
	                            <!-- <script type="text/javascript" src="/js/cartPrice.js"></script> -->원
	                        </div>
	                        <div class="bigtext right-align box blue summoney" id="sum_p_price">합계금액: 
	                            <span class="sumPriceText"></span>
	                            <!-- <script type="text/javascript" src="/js/cartPrice.js"></script> -->원
	                        </div>
	                        <br>
	                        <hr>
	                        <div id="goorder" class="">
	                            <div class="clear"></div>
	                            <div class="buttongroup center-align cmd">
	                                <button type="submit" class="order_btn btn">선택한 상품 주문</button>
	                                <button onclick="history.back()" class="order_btn btn">쇼핑 계속하기</button>
	                            </div>
	                        </div>
	                    </div>
	                </form>
	            </div>
	        </div>
	
	    </section>

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

	</main>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>