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

			<div class="unknow-pay">
				<h3>비회원 주문/결제</h3>
			</div>
			<div class="pay-content-head">
				<div clas="pay-head-and-btn">
					<p>
						<i class="fa-solid fa-quote-left"></i> 비회원으로 주문시에는 쿠폰할인, 포인트 적립의
						혜택을 받을 수 없습니다. <i class="fa-solid fa-quote-right"></i>
					</p>
					<div class="pay-head-btn">
						<a class="btn btn-primary pay-btn1" href="#" role="button">회원가입</a>
						<a class="btn btn-primary pay-btn2" href="#" role="button">로그인</a>
					</div>
				</div>
			</div>


			<div class="pay-order-info">
				<div class="pay-orderer-head">
					<h3>주문자 정보 입력</h3>
				</div>

				<div class="pay-orderer-form">
					<form class="row g-3">
						<div class="col-12">
							<input type="text" class="form-control" id="inputName"
								placeholder="이름을 입력해주세요.">
						</div>
						<div class="col-12">
							<input type="email" class="form-control" id="inputEmail"
								placeholder="이메일 주소를 입력해주세요.">
						</div>
						<div class="col-12">
							<input type="text" class="form-control" id="inputTel"
								placeholder="휴대폰 번호를 '-'없이 입력해주세요."> <label
								for="inputTel" class="form-label">입력하신 이메일과 휴대폰번호로 주문에
								관한 문자 및 메일이 발송됩니다.</label>
						</div>
						<p class="form-pw">주문조회 비밀번호 입력</p>
						<div class="col-12">
							<input type="text" class="form-control" id="inputPW"
								placeholder="비밀번호를 입력해주세요."> <label for="inputPW"
								class="form-label">영문/숫자/특수문자 6~10자리로 입력</label>
						</div>
						<div class="col-12">
							<input type="text" class="form-control"
								placeholder="비밀번호를 한번 더 입력해주세요.">
						</div>
					</form>
				</div>
			</div>

			<!---------------------------------- 배송정보-------------------------------------->
			<div class="pay-order-info">
				<div class="pay-orderer-head">
					<h3>배송지 정보</h3>
				</div>

				<div class="pay-orderer-form">
					<form class="row g-3">
						<div class="col-12">
							<a class="btn btn-info" href="#" role="button"> 
								<i class="fa-solid fa-pen-to-square"></i>배송지 입력
							</a>
						</div>
					</form>
				</div>
			</div>
			<!--------------------------------주문상품정보-------------------------------------->
			<div class="accordion" id="accordionExample">
				<div class="accordion-item pay-accordion-style">
					<h2 class="accordion-header" id="headingOne">
						<button class="accordion-button order-pay-accordion-btn" type="button"
							data-bs-toggle="collapse" data-bs-target="#collapseOne"
							aria-expanded="true" aria-controls="collapseOne">
							<table class="order-product">
								<tr>
									<td>주문상품</td>
									<td><span>총</span><span class="pay-count">2</span><span>개</span></td>
								</tr>
							</table>
						</button>
					</h2>
					<div id="collapseOne" class="accordion-collapse collapse show"
						aria-labelledby="headingOne" data-bs-parent="#accordionExample">
						<div class="accordion-body">
							<form <%--action="" method="post" --%>>
								<table>
									<tr>
										<td><img alt="구매도서" src="https://image.yes24.com/goods/108825091/XL"></td>
										<td>[해외도서] 공허한 십자가 </td>
										<td>1개</td>
										<td><span class="price">15,000</span><span>원</span></td>
									</tr>
									<tr>
										<td><img alt="구매도서" src="data:image/jpeg;base64,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"></td>
										<td>[국내도서] 모든 것은 기본에서 시작한다 </td>
										<td>1개</td>
										<td><span class="price">18,000</span><span>원</span></td>
									</tr>
								</table>
							</form>
						</div>
					</div>
				</div>
			</div>
			<!--------------------------------결제수단-------------------------------------->
			<div class="pay-order-info">
				<div class="pay-orderer-head">
					<h3>결제수단</h3>
				</div>
				<div class="paytype-btns">
					<div class="form-check">
						<input class="form-check-input" type="radio"
							name="flexRadioDefault" id="flexRadioDefault2" checked> 
						<label class="form-check-label" for="flexRadioDefault2"> 
							다른 결제 수단
						</label>
					</div>
					<div class="paytypes">
						<button type="button" class="btn btn-outline-dark">신용카드</button>
						<button type="button" class="btn btn-outline-dark"><img src="logo/naver_pay/npay_32.png" alt="네이버페이"></button>
						<button type="button" class="btn btn-outline-dark"><img src="logo/kakao_pay_icon/카카오페이.png"></button>
						<button type="button" class="btn btn-outline-dark sizing"><img src="logo/samsungpay.png"></button>
						<button type="button" class="btn btn-outline-dark">온라인입금</button>
						<button type="button" class="btn btn-outline-dark">실시간 계좌이체</button>
						<button type="button" class="btn btn-outline-dark"><img src="logo/toss.png"></button>
					</div>
				</div>
			</div>


		</div>


		<!-- ---------------------------------사이드바------------------------------------------------- -->
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
								비회원 개인정보 수집 및 이용동의</button>
						</h2>
						<div id="flush-collapseOne" class="accordion-collapse collapse"
							aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
							<div class="accordion-body pay-accordion-body">
								<p class ="accordion-body-head">수집하는 개인정보의 항목</p>
								<ol>
									<li>① “요미요미”는 비회원구매, 원활한 고객상담, 각종 서비스의 제공을 위해 비회원 주문 이용 시
										아래와 같은 개인정보를 수집하고 있습니다.
										<ul>
											<li>ο 필수수집항목 : 주문자 정보 (이름, 연락처, SMS수신여부, 이메일, 주문 비밀번호), 배송지 정보 (배송방법, 배송주소, 수신자 이름, 휴대폰번호, 영수증)</li>
											<li>ο 선택수집항목: 주문자연락처, 수신자명, 수신자연락처(수신자 다를시)</li>
											<li>ο 수집목적 : 상품배송을 위한 배송지 확인</li>
											<li>ο 보유 및 이용기간 : 배송완료시점(단, 관계법령에 따름)</li>
										</ul>
									</li>
									
									<li>② 서비스 이용과정이나 사업처리 과정에서 아래와 같은 정보들이 자동으로 생성되어 수집될 수 있습니다. 
										<ul><li>- IP Address, 쿠키, 방문 일시, OS종류, 브라우져 종류 서비스 이용 기록, 불량 이용 기록</li></ul>
									</li>
									
									<li>③ 부가 서비스 및 맞춤식 서비스 이용 또는 이벤트 응모 과정에서 해당 서비스의 이용자에 한해서만
										아래와 같은 정보들이 수집될 수 있습니다.
										<ul>
											<li>- 개인정보 추가 수집에 대해 동의를 받는 경우</li>
										</ul>
									</li>
									<li> ④ 유료 서비스 이용 과정에서 아래와 같은 정보들이 수집될 수 있습니다.
										<ul>
											<li>- 신용카드 결제 시 : 카드사명, 카드번호 등</li>
											<li>- 휴대전화 결제 시 : 이동전화번호, 통신사, 결제승인번호, 이메일주소 등</li>
											<li>- 계좌이체 시 : 은행명, 계좌번호 등</li>
											<li>- 상품권 이용 시 : 상품권 번호</li>
											<li>- 환불시 : 환불계좌정보(은행명, 계좌번호, 예금주명)</li>
										</ul>
									</li>
								</ol>
								
								<p class ="accordion-body-head">개인정보의 수집 및 이용목적</p>
								“요미요미"는 수집한 개인정보를 다음의 목적을 위해 활용합니다. 이용자가 제공한 모든 정보는 하기 목적에 필요한
								용도 이외로는 사용되지 않으며, 이용 목적이 변경될 시에는 사전동의를 구할 것입니다.
								<ol>
									<li>① 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산
										<ul>
											<li>- 컨텐츠 제공, 특정 맞춤 서비스 제공, 물품배송 또는 청구서 등 발송, 금융거래 본인 인증
												및 금융 서비스, 구매 및 요금 결제, 요금추심 등</li>
										</ul>
									</li>
									<li>② 비회원 관리
										<ul>
											<li>- 비회원 구매 서비스 이용에 따른 본인 확인, 개인 식별, 분쟁 조정을 위한 기록보존,
												불만처리 등 민원처리, 고지사항 전달</li>
										</ul>
									</li>
								</ol>

								<p class ="accordion-body-head">개인정보 보유 및 이용기간</p>
								   이용자의 개인정보는 원칙적으로 회원탈퇴 시 지체없이 파기합니다. 
								  단, 다음의 정보에 대해서는 아래의 이유로 명시한 기간 동안 보존합니다. 
								 <ol>
									 <li> ① 회사 내부 방침에 의한 정보보유 사유
									   - 보존 항목 : 아이디(ID), 회원번호
									   - 보존 근거 : 서비스 이용의 혼선 방지
									   - 보존 기간 : 영구 
									 </li>
									 <li>② 관계 법령에 의한 정보보유 사유 ‘상법’, ‘전자상거래 등에서의 소비자보호에 관한 법률’ 
									   등 관계 법령의 규정에 의하여 보존할 필요가 있는 경우 관계 법령에서 정한 일정한 기간 동안 개인정보를 보관합니다. 
									   이 경우 회사는 보관하는 정보를 그 보관의 목적으로만 이용하며 보존 기간은 아래와 같습니다. 
									   <ol>
											<li>1. 계약 또는 청약철회 등에 관한 기록
												<ul>
													<li>- 보존 근거 : 전자상거래 등에서의 소비자보호에 관한 법률</li>
													<li>- 보존 기간 : 5년</li>
												</ul>
											</li>
											<li>2. 대금결제 및 재화 등의 공급에 관한 기록
												<ul>
													<li>- 보존 근거 : 전자상거래 등에서의 소비자보호에 관한 법률</li>
													<li>- 보존 기간 : 5년</li>
												</ul>
											</li>
											<li>3. 소비자의 불만 또는 분쟁처리에 관한 기록
												<ul>
													<li>- 보존 근거 : 전자상거래 등에서의 소비자보호에 관한 법률</li>
													<li>- 보존 기간 : 3년</li>
												</ul>
											</li>
											<li>4. 웹사이트 방문기록
												<ul>
													<li>- 보존 근거 : 통신비밀보호법</li>
													<li>- 보존 기간 : 3개월</li>
												</ul>
											</li>
										</ol>
									</li>
								   </ol>
								    <p class ="accordion-body-head">개인정보의 위탁에 대한 안내 </p>
								    요미요미는 배송, 요금정산 등 기본서비스 제공을 위한 개인정보 처리업무 외에는 외부업체에 위탁하고 있지 않으며, 
								    관계법령에 따라 위탁계약 시 개인정보가 안전하게 관리될 수 있도록 필요한 사항들을 규정하고 있습니다.
							</div>
						</div>
					</div>
					<div class="accordion-item">
						<h2 class="accordion-header" id="flush-headingTwo">
							<button class="accordion-button collapsed" type="button"
								data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo"
								aria-expanded="false" aria-controls="flush-collapseTwo">
								주문내역 확인 동의</button>
						</h2>
						<div id="flush-collapseTwo" class="accordion-collapse collapse"
							aria-labelledby="flush-headingTwo"
							data-bs-parent="#accordionFlushExample">
							<div class="accordion-body pay-accordion-last">
								주문할 상품의 상품명, 가격, 배송정보 등을 최종 확인하였으며, 구매에 동의하십니까? <br>
								(전자상거래법 제 8조 2항)
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