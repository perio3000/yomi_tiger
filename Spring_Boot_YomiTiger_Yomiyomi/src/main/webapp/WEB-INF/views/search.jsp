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
<title>책검색</title>
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
<link rel="stylesheet" type="text/css" href="css/search.css">
<script src="js/search.js"></script>
</head>
<body>
	
	<section>
		<div class="search-contents-header">
			<div class="search-header">
				<div class="search-title">
					<p>
						<span class="searched-bookname">'주술회전'</span> 
						에 대한<span id="searched-count">152</span>개의 검색 결과
					</p>
				</div>
				<div class="search-banner">
					<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="true">
						<div class="carousel-indicators">
							<button type="button" data-bs-target="#carouselExampleIndicators"
								data-bs-slide-to="0" class="active" aria-current="true"
								aria-label="Slide 1"></button>
							<button type="button" data-bs-target="#carouselExampleIndicators"
								data-bs-slide-to="1" aria-label="Slide 2"></button>
							<button type="button" data-bs-target="#carouselExampleIndicators"
								data-bs-slide-to="2" aria-label="Slide 3"></button>
							<button type="button" data-bs-target="#carouselExampleIndicators"
							data-bs-slide-to="3" aria-label="Slide 4"></button>
						</div>
						<div class="carousel-inner">
							<div class="carousel-item active">
								<img src="https://contents.kyobobook.co.kr/display/i_1200_150%20(5)_c7eec86864f542e19dcedfd40577ffbb.jpg" class="d-block w-100" alt="...">
							</div>
							<div class="carousel-item">
								<img src="https://contents.kyobobook.co.kr/display/i_1200_150_5c223d82931447098c9b9fba98231cd9_58fba04b7de14d8d995dc613edc019ea.jpg" class="d-block w-100" alt="...">
							</div>
							<div class="carousel-item">
								<img src="https://contents.kyobobook.co.kr/display/i_1200_150_4c8ef027e8074ae78358e2b1ee9e5138.jpg" class="d-block w-100" alt="...">
							</div>
							<div class="carousel-item">
								<img src="https://contents.kyobobook.co.kr/display/bnM_i06_3f3c072dc9424637af5e3203d65d966b.jpg" class="d-block w-100" alt="...">
							</div>
						</div>
						<button class="carousel-control-prev" type="button"
							data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
							<span class="carousel-control-prev-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Previous</span>
						</button>
						<button class="carousel-control-next" type="button"
							data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Next</span>
						</button>
					</div>
				</div>
			</div>
		</div>

		<div class="search-contents">
			<div class="search-nav">
				<ul class="nav nav-tabs nav-justified">
					<li class="nav-item"><a
						class="nav-link search-nav-link search-total active"
						aria-current="page" href="#">통합검색<span>(1,502)</span></a></li>
					<li class="nav-item"><a
						class="nav-link search-domestic search-nav-link" href="#">국내도서<span>(30)</span></a></li>
					<li class="nav-item"><a
						class="nav-link search-overseas search-nav-link" href="#">해외도서<span>(100)</span></a></li>
					<li class="nav-item"><a
						class="nav-link search-ebook search-nav-link" href="#">eBook<span>(445)</span></a></li>
				</ul>
			</div>

			<div class="view-contents">
			
				<div class="search-sidebar">
					<div class="search-sidebar-head">
						<p>필터 <span><i class="fa-sharp fa-solid fa-rotate-right"></i>초기화</span></p>
					</div>
					
					<div class="search-sidebar-benefits">
						<button type="button" class="collapsible"
							onclick="collapse(this);">혜택/조건</button>
						<div class="content">
							<label><input type="checkbox" name="check" value="check">쿠폰</label>
							<label><input type="checkbox" name="check" value="check">이벤트</label>
							<label><input type="checkbox" name="check" value="check">무료배송</label>
							<label><input type="checkbox" name="check" value="check">품절판매제외</label>	
						</div>
						<button type="button" class="collapsible"
							onclick="collapse(this);">가격</button>
						<div class="content">
							<label><input type="radio" name="radio" value="radio">~1만원</label>
							<label><input type="radio" name="radio" value="radio">1만원~3만원</label>
							<label><input type="radio" name="radio" value="radio">3만원~10만원</label>
							<label><input type="radio" name="radio" value="radio">10만원~</label>
							<div class="col-box">
								<input type="text" name="searchPrice" value="" placeholder="최소가격 끌고와야함">
								<span>~</span>
								<div class="col-price-box">
									<input type="text" name="searchPrice" value="" placeholder="최대가격끌고와야함">
									<button class="btn btn-light" type="submit">적용</button>
								</div>
								
							</div>
						</div>
						<button type="button" class="collapsible"
							onclick="collapse(this);">발행일</button>
						<div class="content">
							<label><input type="radio" name="radio" value="radio">전체</label>
							<label><input type="radio" name="radio" value="radio">3개월 이내</label>
							<label><input type="radio" name="radio" value="radio">6개월 이내</label>
							<label><input type="radio" name="radio" value="radio">1년 이내</label>
							<label><input type="radio" name="radio" value="radio">3년 이내</label>
							<label><input type="radio" name="radio" value="radio">5년 이내</label>
						</div>
					</div>
					
				</div>
				
				
				<div class="search-view">
				
					<div class="view-mid-head">
						<p>
							전체 <span>152</span>건
						</p>

						<div class="search-item">
						
							<div class="dropdown">
								<button class="btn btn-secondary dropdown-toggle label" type="button"
									data-bs-toggle="dropdown" aria-expanded="false">
									인기순</button>
								<ul class="dropdown-menu">
									<li><a class="dropdown-item" href="#">판매량순</a></li>
									<li><a class="dropdown-item" href="#">최신순</a></li>
									<li><a class="dropdown-item" href="#">상품명순</a></li>
									<li><a class="dropdown-item" href="#">낮은가격순</a></li>
									<li><a class="dropdown-item" href="#">높은가격순</a></li>
								</ul>
							</div>
							
							<div class="dropdown">
								<button class="btn btn-secondary dropdown-toggle label" type="button"
									data-bs-toggle="dropdown" aria-expanded="false">
									20개씩 보기</button>
								<ul class="dropdown-menu">
									<li><a class="dropdown-item" href="#">50개씩 보기</a></li>
									<li><a class="dropdown-item" href="#">100개씩 보기</a></li>
								</ul>
							</div>

						</div>
					</div>
					
					<div class="search-result">
						<table>
							<tr>
								<td style="width:10%; text-align: center" class="checkbox"><input type="checkbox" name="check" value="check"></td>
								<td style="width:15%"><img src="https://contents.kyobobook.co.kr/pdt/9791136736697.jpg" alt="검색한 책"></td>
								<td style="width:60%; padding-left: 10px;">
									<p class="bookname">[국내도서] 주술회전 19권</p>
									<p class="bookauthor">Gege Akutami</p>
									<p class="publisher">
										서울 미디어 코믹스 (서울문화사)
										<span>&#183;</span>
										<span>2022년 06월 01일</span></p>
									<div class="bookprice">
										<p><span class="discount-price">5,400</span>원</p>
										<p><span class="discount-rate">10%</span></p>
										<p><span class="original-price">6,000원</span></p>
										<span style="font-size: 0.5em; margin-right: 10px">&#124;</span>
										<p><span class="points-earned">300</span>p (<span>5</span>%)</p>
									</div>
								</td>
								<td style="vertical-align: top">
									<div class="btns">
										<div class="search-heart"><i class="fa-regular fa-heart"></i></div>
										<div class="d-grid gap-2">
											<button class="btn btn-primary cart-btn" type="button">장바구니</button>
											<button class="btn btn-primary buy-btn" type="button">바로구매</button>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td style="width:10%; text-align: center" class="checkbox"><input type="checkbox" name="check" value="check"></td>
								<td style="width:15%"><img src="https://contents.kyobobook.co.kr/pdt/9791136736697.jpg" alt="검색한 책"></td>
								<td style="width:60%; padding-left: 10px;">
									<p class="bookname">[국내도서] 주술회전 19권</p>
									<p class="bookauthor">Gege Akutami</p>
									<p class="publisher">
										서울 미디어 코믹스 (서울문화사)
										<span>&#183;</span>
										<span>2022년 06월 01일</span></p>
									<div class="bookprice">
										<p><span class="discount-price">5,400</span>원</p>
										<p><span class="discount-rate">10%</span></p>
										<p><span class="original-price">6,000원</span></p>
										<span style="font-size: 0.5em; margin-right: 10px">&#124;</span>
										<p><span class="points-earned">300</span>p (<span>5</span>%)</p>
									</div>
								</td>
								<td style="vertical-align: top">
									<div class="btns">
										<div class="search-heart"><i class="fa-regular fa-heart"></i></div>
										<div class="d-grid gap-2">
											<button class="btn btn-primary cart-btn" type="button">장바구니</button>
											<button class="btn btn-primary buy-btn" type="button">바로구매</button>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td style="width:10%; text-align: center" class="checkbox"><input type="checkbox" name="check" value="check"></td>
								<td style="width:15%"><img src="https://contents.kyobobook.co.kr/pdt/9791136736697.jpg" alt="검색한 책"></td>
								<td style="width:60%; padding-left: 10px;">
									<p class="bookname">[국내도서] 주술회전 19권</p>
									<p class="bookauthor">Gege Akutami</p>
									<p class="publisher">
										서울 미디어 코믹스 (서울문화사)
										<span>&#183;</span>
										<span>2022년 06월 01일</span></p>
									<div class="bookprice">
										<p><span class="discount-price">5,400</span>원</p>
										<p><span class="discount-rate">10%</span></p>
										<p><span class="original-price">6,000원</span></p>
										<span style="font-size: 0.5em; margin-right: 10px">&#124;</span>
										<p><span class="points-earned">300</span>p (<span>5</span>%)</p>
									</div>
								</td>
								<td style="vertical-align: top">
									<div class="btns">
										<div class="search-heart"><i class="fa-regular fa-heart"></i></div>
										<div class="d-grid gap-2">
											<button class="btn btn-primary cart-btn" type="button">장바구니</button>
											<button class="btn btn-primary buy-btn" type="button">바로구매</button>
										</div>
									</div>
								</td>
							</tr>
							
						</table>
					</div>
					
					
					
				</div>
				
				
				
			</div>	
			
		</div>


	</section>
	


	<footer> 푸터 </footer>
</body>
</html>