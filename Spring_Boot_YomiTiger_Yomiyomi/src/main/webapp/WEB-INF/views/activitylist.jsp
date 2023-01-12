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
					<li class="breadcrumb-item active" aria-current="page">활동내역</li>
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
						<a href="/userupdatetest">회원정보</a><br>
						<br>
						<a href="/librarytest" class="menuTitle">서재</a>
					</div>
				</div>
			</div>
			
			<div class="col-md-9">
				<div class="row">
					<div class="fs-1 fw-bolder">
						활동내역
					</div>
				</div>
				
				<!-- 탭 메뉴 -->
                    <ul class="nav nav-tabs d-flex mt-3" id="myTab" role="tablist">
                        <li class="nav-item" role="presentation">
                            <button class="nav-link active" id="first-tab" data-bs-toggle="tab" data-bs-target="#first"
                                type="button" role="tab" aria-controls="first" aria-selected="true" style="color: #325341; font-weight: bolder;">전체</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="second-tab" data-bs-toggle="tab" data-bs-target="#second" type="button"
                                role="tab" aria-controls="second" aria-selected="false" style="color: #325341; font-weight: bolder;">좋아요</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="third-tab" data-bs-toggle="tab" data-bs-target="#third" type="button"
                                role="tab" aria-controls="third" aria-selected="false" style="color: #325341; font-weight: bolder;">댓글</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="fourth-tab" data-bs-toggle="tab" data-bs-target="#fourth" type="button"
                                role="tab" aria-controls="fourth" aria-selected="false" style="color: #325341; font-weight: bolder;">리뷰</button>
                        </li>
                    </ul>
                
                    <!-- 내용 -->
                    <div class="tab-content d-flex justify-content-center row" id="myTabContent">

                        <!-- 1번 탭 -->
                        <div class="tab-pane fade show active col" id="first" role="tabpanel" aria-labelledby="first-tab">
                        
                           	<div class="fs-5" style="margin-top: 20px;">
                        		2023.01.06
                        	</div>
	                        <div class="card">
								<div class="container px-4">
									<div class="row gx-4">
										<div class="col">
											<div class="p-2">
												<div style="display: flex; align-items: center;">
													<img alt="" src="icon/heart.png" width="20px" height="20px">
													<a href="#" onclick="secondTab()"><span style="line-height: 20px">좋아요</span></a>
												</div>
												<div class="row" style="padding: 10px 0 10px 0">
													<div class="col-3">
														<a href="#"><img alt="" src="https://contents.kyobobook.co.kr/sih/fit-in/234x0/pdt/9791167740847.jpg" width="100%" height="100%"></a>
													</div>
													<div class="col-3">
														<a href="#"><img alt="" src="https://contents.kyobobook.co.kr/sih/fit-in/234x0/pdt/9791167740847.jpg" width="100%" height="100%"></a>
													</div>
													<div class="col-3">
														<a href="#"><img alt="" src="https://contents.kyobobook.co.kr/sih/fit-in/234x0/pdt/9791167740847.jpg" width="100%" height="100%"></a>
													</div>
													<div class="col-3" style="display: flex; align-items: center;">
														<a href="#" onclick="secondTab()"><img alt="" src="icon/more.png" width="30px" height="30px"></a>
													</div>
												</div>
											</div>
											
											<div style="display: none;">
												<div class="d-flex justify-content-center" style="display: flex; align-items: center;">
													<img alt="" src="icon/warning.png" width="40px" height="40px">
													해당하는 내용이 없습니다.
												</div>
											</div>
											
										</div>
										<div class="col">
											<div class="p-2">
												<div style="display: flex; align-items: center;">
													<img alt="" src="icon/bubbles.png" width="20px" height="20px">
													<a href="#" onclick="thirdTab()"><span style="line-height: 20px">댓글</span></a>
												</div>
												<div class="row" style="padding: 10px 0 10px 0">
													<div class="col-3">
														<a href="#"><img alt="" src="https://contents.kyobobook.co.kr/sih/fit-in/234x0/pdt/9791167740847.jpg" width="100%" height="100%"></a>
													</div>
													<div class="col-3">
														<a href="#"><img alt="" src="https://contents.kyobobook.co.kr/sih/fit-in/234x0/pdt/9791167740847.jpg" width="100%" height="100%"></a>
													</div>
													<div class="col-3">
														<a href="#"><img alt="" src="https://contents.kyobobook.co.kr/sih/fit-in/234x0/pdt/9791167740847.jpg" width="100%" height="100%"></a>
													</div>
													<div class="col-3" style="display: flex; align-items: center;">
														<a href="#" onclick="thirdTab()"><img alt="" src="icon/more.png" width="30px" height="30px"></a>
													</div>
												</div>
											</div>
											
											<div style="display: none;">
												<div class="d-flex justify-content-center" style="display: flex; align-items: center;">
													<img alt="" src="icon/warning.png" width="40px" height="40px">
													해당하는 내용이 없습니다.
												</div>
											</div>
											
										</div>
										<div class="col">
											<div class="p-2">
												<div style="display: flex; align-items: center;">
													<img alt="" src="icon/text_bubble.png" width="20px" height="20px">
													<a href="#" onclick="fourthTab()"><span style="line-height: 20px">리뷰</span></a>
												</div>
												<div class="row" style="padding: 10px 0 10px 0">
													<div class="col-3">
														<a href="#"><img alt="" src="https://contents.kyobobook.co.kr/sih/fit-in/234x0/pdt/9791167740847.jpg" width="100%" height="100%"></a>
													</div>
													<div class="col-3">
														<a href="#"><img alt="" src="https://contents.kyobobook.co.kr/sih/fit-in/234x0/pdt/9791167740847.jpg" width="100%" height="100%"></a>
													</div>
													<div class="col-3">
														<a href="#"><img alt="" src="https://contents.kyobobook.co.kr/sih/fit-in/234x0/pdt/9791167740847.jpg" width="100%" height="100%"></a>
													</div>
													<div class="col-3" style="display: flex; align-items: center;">
														<a href="#" onclick="fourthTab()"><img alt="" src="icon/more.png" width="30px" height="30px"></a>
													</div>
												</div>
											</div>
											
											<div style="display: none;">
												<div class="d-flex justify-content-center" style="display: flex; align-items: center;">
													<img alt="" src="icon/warning.png" width="40px" height="40px">
													해당하는 내용이 없습니다.
												</div>
											</div>
								
										</div>
									</div>
								</div>
							</div>
							
							<div class="row">
					
								<div style="margin-top: 20px;">
									
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
									
							</div>
                           
                        </div>
                        
                        <!-- 2번 탭 -->
                        <div class="tab-pane fade col" id="second" role="tabpanel" aria-labelledby="second-tab">
                        
                        <div class="fs-5" style="margin-top: 20px;">
                        		2023.01.06
                        	</div>
	                        <div class="card">
								<div class="container px-4">
									<div class="row gx-4">
										<div class="col">
											<div class="p-2">
												<div style="display: flex; align-items: center;">
													<img alt="" src="icon/heart.png" width="20px" height="20px">
													<a href="#" onclick="likeTab()"><span style="line-height: 20px">좋아요</span></a>
												</div>
												<div class="row" style="padding: 10px 0 10px 0">
													<div class="col-3 mb-3">
														<a href="#"><img alt="" src="https://contents.kyobobook.co.kr/sih/fit-in/234x0/pdt/9791167740847.jpg" width="100%" height="100%"></a>
													</div>
													<div class="col-3 mb-3">
														<a href="#"><img alt="" src="https://contents.kyobobook.co.kr/sih/fit-in/234x0/pdt/9791167740847.jpg" width="100%" height="100%"></a>
													</div>
													<div class="col-3 mb-3">
														<a href="#"><img alt="" src="https://contents.kyobobook.co.kr/sih/fit-in/234x0/pdt/9791167740847.jpg" width="100%" height="100%"></a>
													</div>
													<div class="col-3 mb-3">
														<a href="#"><img alt="" src="https://contents.kyobobook.co.kr/sih/fit-in/234x0/pdt/9791167740847.jpg" width="100%" height="100%"></a>
													</div>
													<div class="col-3 mb-3">
														<a href="#"><img alt="" src="https://contents.kyobobook.co.kr/sih/fit-in/234x0/pdt/9791167740847.jpg" width="100%" height="100%"></a>
													</div>
												</div>
											</div>
										</div>
										
									</div>
								</div>
							</div>
							
							<div style="display: none;">
								<div class="d-flex justify-content-center" style="display: flex; align-items: center;">
									<img alt="" src="icon/warning.png" width="40px" height="40px">
									해당하는 내용이 없습니다.
								</div>
							</div>
							
							<div class="row">
					
								<div style="margin-top: 20px;">
									
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
									
							</div>

                        </div>
                        
                        <!-- 3번 탭 -->
                        <div class="tab-pane fade col" id="third" role="tabpanel" aria-labelledby="third-tab">
                        
                        <div class="fs-5" style="margin-top: 20px;">
                        		2023.01.06
                        	</div>
	                        <div class="card">
								<div class="container px-4">
									<div class="row gx-4">
										
										<div class="col">
											<div class="p-2">
												<div style="display: flex; align-items: center;">
													<img alt="" src="icon/bubbles.png" width="20px" height="20px">
													<a href="#" onclick="replyTab()"><span style="line-height: 20px">댓글</span></a>
												</div>
												<div class="row" style="padding: 10px 0 10px 0">
													<div class="col-3 mb-3">
														<a href="#"><img alt="" src="https://contents.kyobobook.co.kr/sih/fit-in/234x0/pdt/9791167740847.jpg" width="100%" height="100%"></a>
													</div>
													<div class="col-3 mb-3">
														<a href="#"><img alt="" src="https://contents.kyobobook.co.kr/sih/fit-in/234x0/pdt/9791167740847.jpg" width="100%" height="100%"></a>
													</div>
													<div class="col-3 mb-3">
														<a href="#"><img alt="" src="https://contents.kyobobook.co.kr/sih/fit-in/234x0/pdt/9791167740847.jpg" width="100%" height="100%"></a>
													</div>
													
												</div>
											</div>
										</div>
										
									</div>
								</div>
							</div>
							
							<div style="display: none;">
								<div class="d-flex justify-content-center" style="display: flex; align-items: center;">
									<img alt="" src="icon/warning.png" width="40px" height="40px">
									해당하는 내용이 없습니다.
								</div>
							</div>
							
							<div class="row">
					
								<div style="margin-top: 20px;">
									
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
									
							</div>

                        </div>
                        
                        <!-- 4번 탭 -->
                        <div class="tab-pane fade col" id="fourth" role="tabpanel" aria-labelledby="fourth-tab">
                        
                        <div class="fs-5" style="margin-top: 20px;">
                        		2023.01.06
                        	</div>
	                        <div class="card">
								<div class="container px-4">
									<div class="row gx-4">
										
										<div class="col">
											<div class="p-2">
												<div style="display: flex; align-items: center;">
													<img alt="" src="icon/text_bubble.png" width="20px" height="20px">
													<a href="#" onclick="reviewTab()"><span style="line-height: 20px">리뷰</span></a>
												</div>
												<div class="row" style="padding: 10px 0 10px 0">
													<div class="col-3 mb-3">
														<a href="#"><img alt="" src="https://contents.kyobobook.co.kr/sih/fit-in/234x0/pdt/9791167740847.jpg" width="100%" height="100%"></a>
													</div>
													<div class="col-3 mb-3">
														<a href="#"><img alt="" src="https://contents.kyobobook.co.kr/sih/fit-in/234x0/pdt/9791167740847.jpg" width="100%" height="100%"></a>
													</div>
													<div class="col-3 mb-3">
														<a href="#"><img alt="" src="https://contents.kyobobook.co.kr/sih/fit-in/234x0/pdt/9791167740847.jpg" width="100%" height="100%"></a>
													</div>
													<div class="col-3 mb-3">
														<a href="#"><img alt="" src="https://contents.kyobobook.co.kr/sih/fit-in/234x0/pdt/9791167740847.jpg" width="100%" height="100%"></a>
													</div>
													
												</div>
											</div>
										</div>
										
									</div>
								</div>
							</div>
							
							<div style="display: none;">
								<div class="d-flex justify-content-center" style="display: flex; align-items: center;">
									<img alt="" src="icon/warning.png" width="40px" height="40px">
									해당하는 내용이 없습니다.
								</div>
							</div>
							
							<div class="row">
					
								<div style="margin-top: 20px;">
									
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
									
							</div>

                        </div>
                    </div>

				
				
				
			</div>
		</div>
		
	</main>
</body>
</html>