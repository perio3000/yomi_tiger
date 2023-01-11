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
<title>Insert title here</title>
<script type="text/javascript" src="js/mypage.js"></script>
<link rel="stylesheet" type="text/css" href="css/reset.css">
<link rel="stylesheet" type="text/css" href="css/mypage.css">
</head>
<body>
	<main class="container">
		<div class="row" id="breadcrumb">
			<nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="#">Home</a></li>
					<li class="breadcrumb-item"><a href="/mypagetest">마이페이지</a></li>
					<li class="breadcrumb-item active" aria-current="page">주문배송목록</li>
				</ol>
			</nav>
		</div>
		
		<div class="row">
			<div class="col-3">
				<div class="row">
					<div class="text-center profileContainer">
						<div>
							<img src="icon/user.png" class="rounded-circle" width="100px" height="100px">
						</div>
						<div class="name">
							'요미타이거'님
						</div>
						<div class="row d-flex justify-content-center">
							<div class="card profile p-3">
								<div class="row">
									<div class="col">
										찜<br> 0
									</div>
									<div class="col">
										리스트<br> 0
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<div class="row">
					<div class="menuText">
						<a href="/mypagetest" class="menuTitle">마이페이지</a><br>
						<a href="/orderdeliverylisttest">주문 배송 목록</a><br>
						<a href="/pointtest">포인트</a><br>
						<a href="/activitylisttest">활동내역</a><br>
						<a href="/inquirylisttest">문의내역</a><br>
						<a href="#">회원정보</a><br>
						<br>
						<a href="#" class="menuTitle">서재</a>
					</div>
				</div>
			</div>
			
			<div class="col-9">
				<div class="row">
					<div class="fs-1 fw-bolder col">
						주문/배송 목록
					</div>
					<br>
					<div class="col d-flex justify-content-end" style="display: flex; align-items: center;">
						<!-- Button trigger modal -->
						<button type="button" class="btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#staticBackdrop" style="display: flex; align-items: center;">
							<img alt="" src="icon/browser2.png" width="20px" height="20px">&nbsp;상세조회
						</button>
	
						<!-- Modal -->
						<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<h1 class="modal-title fs-3 fw-bolder" id="staticBackdropLabel">상세조회</h1>
										<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
									</div>
									<div class="modal-body">
										<div class="p-4" style="background-color: #F4EEFF; border-radius: 15px; margin: 20px 0 20px 0">
											• 조회기간 설정은 6개월 단위이며, 최대 5년까지 조회 가능합니다.<br>
											• 필터 이용 시 선택한 이용내역만 조회 가능합니다.
										</div>
										<div class="fs-5 fw-bolder" style="margin-bottom: 20px">
											기간조회
										</div>
										
										<div class="input-group input-daterange">
											<div class="input-group-addon">&nbsp;시작일&nbsp;</div>
										    <input type="date" name="start_date">
										    <div class="input-group-addon">&nbsp;/종료일&nbsp;</div>
										    <input type="date" name="end_date">
										</div>
										
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary" data-bs-dismiss="modal" style="display: flex; align-items: center;">
											<img src="icon/sync_white.png" width="25px" height="25px">&nbsp;초기화
										</button>
										<button type="button" class="btn btn-primary" data-bs-dismiss="modal">적용</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
						
				<div>
					<div class="card p-4 mt-5">
						<div class="row flex-nowrap justify-content-evenly">
							<div class="col-3" style="border-right: 2px solid gray;">
								<div class="fs-5">주문 내역</div>
								<div class="text-secondary">주문/배송 안내</div>
							</div>
							<div class="col" style="border-right: 2px solid gray;">
								<div class="fs-5">0</div>
								<div class="text-secondary">준비중</div>
							</div>
							<div class="col" style="border-right: 2px solid gray;">
								<div class="fs-5">0</div>
								<div class="text-secondary">배송중</div>
							</div>
							<div class="col" style="border-right: 2px solid gray;">
								<div class="fs-5">0</div>
								<div class="text-secondary">배송완료</div>
							</div>
							<div class="col" style="border-right: 2px solid gray;">
								<div class="fs-5">0</div>
								<div class="text-secondary">취소</div>
							</div>
							<div class="col">
								<div class="fs-5">0</div>
								<div class="text-secondary">교환/반품</div>
							</div>
						</div>
					</div>
				</div><br>
				
				<hr>
				
				<div class="row">
					
					<div style="margin-top: 20px;">
						<table class="table table-hover text-center table-bordered">
							<thead>
								<tr>
									<th>주문번호</th>
									<th>주문금액</th>
									<th>상품정보</th>
									<th>수량</th>
									<th>주문상태</th>
								</tr>
							</thead>
							
							<tbody>
								<!-- 주문배송목록1 -->
								<tr>
									<td class="align-middle">
										<div>
											<div class="fs-6">022008021154</div>
											<div class="text-secondary">(2023-01-09)</div>
										</div>
									</td>
									<td class="align-middle">
										<div>23,000원</div>
									</td>
									<td class="align-middle">
										<div class="row">
											<div class="col"><img alt="" src="https://contents.kyobobook.co.kr/sih/fit-in/234x0/pdt/9791167740847.jpg" width="140px" height="195px"></div>
											<div class="col d-flex align-items-center">
												<div class="">상품명</div>
											</div>
										</div>
									</td>
									<td class="align-middle">
										<div>1</div>
									</td>
									<td class="align-middle">
										<div>배송중</div>
									</td>
								</tr>
								
								<!-- 주문배송목록2 -->
								<tr>
									<td class="align-middle">
										<div>
											<div class="fs-6">022008021154</div>
											<div class="text-secondary">(2023-01-09)</div>
										</div>
									</td>
									<td class="align-middle">
										<div>23,000원</div>
									</td>
									<td class="align-middle">
										<div class="row">
											<div class="col"><img alt="" src="https://contents.kyobobook.co.kr/sih/fit-in/234x0/pdt/9791167740847.jpg" width="140px" height="195px"></div>
											<div class="col d-flex align-items-center">
												<div class="">상품명</div>
											</div>
										</div>
									</td>
									<td class="align-middle">
										<div>1</div>
									</td>
									<td class="align-middle">
										<div>배송중</div>
									</td>
								</tr>
								
								<!-- 주문배송목록3 -->
								<tr>
									<td class="align-middle">
										<div>
											<div class="fs-6">022008021154</div>
											<div class="text-secondary">(2023-01-09)</div>
										</div>
									</td>
									<td class="align-middle">
										<div>23,000원</div>
									</td>
									<td class="align-middle">
										<div class="row">
											<div class="col"><img alt="" src="https://contents.kyobobook.co.kr/sih/fit-in/234x0/pdt/9791167740847.jpg" width="140px" height="195px"></div>
											<div class="col d-flex align-items-center">
												<div class="">상품명</div>
											</div>
										</div>
									</td>
									<td class="align-middle">
										<div>1</div>
									</td>
									<td class="align-middle">
										<div>배송중</div>
									</td>
								</tr>
								
							</tbody>
						</table>
						
						<div class="ifNoPoint fs-4 text-center" style="margin: 100px 0 100px 0; display: none">
							해당 기간에 주문한 상품이 없습니다.
						</div>
						
						<div class="d-flex justify-content-center">
							<nav aria-label="Page navigation example">
								<ul class="pagination">
									<li class="page-item">
										<a class="page-link" href="#" aria-label="Previous"> 
											<span aria-hidden="true" class="pageText">&laquo;</span>
										</a>
									</li>
									
									<li class="page-item">
										<a class="page-link" href="#" >
											<span class="pageText">1</span>
										</a>
									</li>
	
									<li class="page-item">
										<a class="page-link" href="#" aria-label="Next"> 
											<span aria-hidden="true" class="pageText">&raquo;</span>
										</a>
									</li>
								</ul>
							</nav>
						</div>

					</div>
					
					<div class="p-4" style="background-color: #F4EEFF; border-radius: 15px; margin: 40px 0 40px 0">
						<div style="font-size: 16px; font-weight: bolder; margin-bottom: 10px;">유의사항</div>
					
						• 배송조회는 택배사로 상품전달 후 조회 가능합니다.<br>
						• eBook은 구매 후 다운로드 시 이용할 수 있습니다.<br>
						• 주문한 상품이 품절될 경우 해당 상품은 자동 취소 신청되며, 취소금액은 승인 취소 또는 예치금으로 반환됩니다.<br>
						• 반환된 예치금은 예치금 환불신청시, 신청계좌로 환불해 드립니다.<br>

					</div>
					
					<div class="p-4" style="background-color: #F4EEFF; border-radius: 15px; margin: 0 0 40px 0">
						<div style="font-size: 16px; font-weight: bolder; margin-bottom: 10px;">카드결제(간편결제,법인카드 포함) 취소 안내</div>
					
						• 카드결제 취소 기간 안내<br>
						&nbsp;&nbsp;- 전체취소 : 당일 취소/환불 처리<br>
						&nbsp;&nbsp;- 부분취소 : 영업일 기준 3~5일 소요(당일 취소 포함)<br>
						• 카드사 정책에 따라 주문당일 부분취소한 경우 당일 취소 및 환불 불가합니다.<br>
						• 부분취소한 경우 카드사 승인 취소는 약 3~5일 소요됩니다.<br>
						• 카드사에서 부분취소를 지원하지 않는 카드의 경우 승인취소가 아닌 예치금으로 환불됩니다.<br>
						• 주문취소시 오류가 발생하거나 환불이 정상 처리되지 않을 경우 1:1로 문의 주시기 바랍니다.<br><br>
					
						<div style="font-size: 16px; font-weight: bolder; margin-bottom: 10px;">포인트 만료기간 안내</div>

						• 포인트는 만료되지 않습니다.<br>
						• 영구적으로 적립됩니다.
					</div>
					
				</div>
				
			</div>
		</div>
		
	</main>
</body>
</html>