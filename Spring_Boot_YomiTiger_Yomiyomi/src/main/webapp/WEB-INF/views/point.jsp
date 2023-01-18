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

	<jsp:include page="header.jsp"></jsp:include>
	
	<main class="container">
		<div class="row" id="breadcrumb">
			<nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="#">Home</a></li>
					<li class="breadcrumb-item"><a href="/mypage_main?username=${ member.username }">마이페이지</a></li>
					<li class="breadcrumb-item active" aria-current="page">포인트</li>
				</ol>
			</nav>
		</div>
		
		<div class="row">
			<div class="col-md-3">
				<div class="row">
					<div class="text-center profileContainer">
						<div>
							<img src="icon/user.png" class="rounded-circle" width="100px" height="100px">
						</div>
						<div class="name">
							'${ member.name }'님
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
						<a href="/mypage_main?username=${ member.username }" class="menuTitle">마이페이지</a><br>
						<a href="/mypage_orderdeliverylist?username=${ member.username }">주문 배송 목록</a><br>
						<a href="/mypage_point?username=${ member.username }">포인트</a><br>
						<a href="/mypage_activitylist?username=${ member.username }">활동내역</a><br>
						<a href="/mypage_inquirylist?username=${ member.username }">문의내역</a><br>
						<a href="/mypage_userupdate?username=${ member.username }">회원정보</a><br>
						<br>
						<a href="/mypage_library?username=${ member.username }" class="menuTitle">서재</a>
					</div>
				</div>
				
				<!-- 오프캔버스 메뉴 -->
				<div class="d-flex justify-content-center">
					<nav class="navbar menuBtn">
						<div class="container-fluid">
							<button class="navbar-toggler" type="button"
								data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar"
								aria-controls="offcanvasNavbar">
								<span class="navbar-toggler-icon"></span>
							</button>
							<div class="offcanvas offcanvas-start" tabindex="-1"
								id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
								<div class="offcanvas-header">
									<button type="button" class="btn-close"
										data-bs-dismiss="offcanvas" aria-label="Close"></button>
								</div>
								<div class="offcanvas-body">
									<div class="p-4">
										<div class="menuText2">
											<a href="/mypage_main?username=${ member.username }" class="menuTitle">마이페이지</a><br>
											<a href="/mypage_orderdeliverylist?username=${ member.username }">주문 배송 목록</a><br>
											<a href="/mypage_point?username=${ member.username }">포인트</a><br>
											<a href="/mypage_activitylist?username=${ member.username }">활동내역</a><br>
											<a href="/mypage_inquirylist?username=${ member.username }">문의내역</a><br>
											<a href="/mypage_userupdate?username=${ member.username }">회원정보</a><br>
											<br>
											<a href="/mypage_library?username=${ member.username }" class="menuTitle">서재</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</nav>
				</div>
				
			</div>
			
			<div class="col-md-9">
				<div class="fs-1 fw-bolder">
					포인트
				</div>
				<br><hr><br>
				<div>
					<div class="card pointCard2 p-5">
						<div class="row flex-nowrap justify-content-evenly">
							<div class="col">
								<img alt="" src="icon/loyal-customer.png" width="40" height="40">
							</div>
							<div class="col align-self-center text-end">${ member.point }</div>
							<div class="col align-self-center">포인트</div>
						</div>
					</div>
				</div><br><br><br>
				
				<div class="row">
					<div class="fs-3 fw-bolder col">
						포인트 적립 내역
					</div>
					
					<div class="col">
						<!-- Button trigger modal -->
						<button type="button" class="btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#staticBackdrop" style="display: flex; align-items: center; float: right;">
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
									<form:form action="mypage_pointsearch" method="get">
										<input type="hidden" name="username" value="${ member.username }">
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
											    <input type="date" name="startdate">
											    <div class="input-group-addon">&nbsp;/종료일&nbsp;</div>
											    <input type="date" name="enddate">
											</div>
											
										</div>
										<div class="modal-footer">
											<button type="reset" class="btn btn-secondary" data-bs-dismiss="modal" style="display: flex; align-items: center;">
												<img src="icon/sync_white.png" width="25px" height="25px">&nbsp;초기화
											</button>
											<button type="submit" class="btn btn-primary" data-bs-dismiss="modal">적용</button>
										</div>
									</form:form>
								</div>
							</div>
						</div>
					</div>
					
					<div style="margin-top: 40px">
						<table class="table table-hover text-center">
							<thead>
								<tr>
									<th>상세내용</th>
									<th>등록일</th>
									<th>구분</th>
									<th>포인트</th>
									<th>총 포인트</th>
								</tr>
							</thead>
							
							<tbody class="">
								
								<c:forEach var="pointList" items="${ point }">
									<tr>
										<td class="align-middle"><img src="${ pointList.thumbnail }" width="100px" height="140px"><br> 가격 : ${ pointList.price } 원</td>
										<td class="align-middle">${ pointList.point_date }</td>
										<td class="align-middle">${ pointList.point_state }</td>
										<td class="align-middle">${ pointList.point }</td>
										<td class="align-middle">${ pointList.total_point }</td>	
									</tr>
								</c:forEach>
							</tbody>
						</table>
						
						<c:if test="${ empty point}">
							<div class="ifNoPoint fs-4 text-center" style="margin: 100px 0 100px 0;">
								포인트 적립 내역이 없습니다.
							</div>
						</c:if>
						
						
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
					
					<div class="p-4" style="background-color: #F4EEFF; border-radius: 15px; margin: 40px 0 40px 0">
						<div style="font-size: 16px; font-weight: bolder; margin-bottom: 10px;">통합포인트 안내</div>
					
						• 요미요미(인터넷, 매장)에서 적립 및 사용이 가능합니다.<br>
						• 포인트를 사용한 금액을 제외한 실 결제금액에 한해 포인트를 적립해 드립니다.<br>
						• 포인트는 비현금성으로 현금이나 예치금으로 전환되지 않습니다.<br>
						• 주문취소나 반품시에는 적립된 포인트 차감됩니다.<br><br>
					
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