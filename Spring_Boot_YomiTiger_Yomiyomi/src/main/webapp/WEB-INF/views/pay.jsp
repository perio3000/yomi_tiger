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

			<div class="pay-order-info">
				<div class="pay-orderer-head">
					<h3>배송지 정보</h3>
				</div>

				<div class="pay-orderer-form">
					<form class="row g-3">
						<div class="col-12">
							<a class="btn btn-info" href="#" role="button">
								<i class="fa-solid fa-pen-to-square"></i> 배송지 입력
							</a>
						</div>
					</form>
				</div>
			</div>
		</div>

		<!-- 배송정보 -->

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
									<li>① “교보문고”는 비회원구매, 원활한 고객상담, 각종 서비스의 제공을 위해 비회원 주문 이용 시
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