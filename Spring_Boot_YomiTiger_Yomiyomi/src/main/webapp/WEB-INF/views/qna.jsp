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
<script type="text/javascript" src="js/qna.js"></script>
<jsp:include page="header.jsp"></jsp:include>
<meta charset="UTF-8">
<title>1:1 문의</title>


<link rel="stylesheet" type="text/css" href="css/reset.css">
<link rel="stylesheet" type="text/css" href="css/qna.css">
</head>
<body>
   <main class="container">
   	<br>
   		<div class="row title">
   			&nbsp;1:1 문의 접수
   		</div>
   		<hr>
   		<div class="row">
   			<div class="col-md-2">
   				문의 유형<font color="#424874">&nbsp;*</font>
   			</div>
   			<div class="col-md-10">
   				<select class="form-select" aria-label="Default select example">
  				<option selected>문의 유형을 선택해 주세요.</option>
  				<option value="1">상품 문의</option>
 				<option value="2">배송 문의</option>
  				<option value="3">교환/환불 문의</option>
				</select>
   			</div>
   		</div>
   		<br>
   		<div class="row">
   			<div class="col-md-2">
   				내용<font color="#424874">&nbsp;*</font>
   			</div>
   			<div class="col-md-10">
  				<textarea class="form-control" placeholder="제목을 입력해 주세요." id="floatingTextarea2" style="height: 30px;"></textarea>
  				<label for="floatingTextarea2"></label>
			</div>
   			<br>
   			<div class="col-md-2"></div>
   			<div class="col-md-10">
   				<textarea class="form-control" placeholder="10자 이상의 문의 내용을 입력해 주세요." id="floatingTextarea2" style="height: 250px;"></textarea>
  				<label for="floatingTextarea2"></label>
   			</div>
   		</div>
   		<div class="row">
   			<div class="col-md-2">
   				사진 첨부
   			</div>
   			<div class="col-md-10">
   				<div class="input-group mb-3">
  					<input type="file" class="form-control" id="inputGroupFile02">
  					<label class="input-group-text" for="inputGroupFile02">Upload</label>
				</div>
   				<!-- 얘는 네모.. 어케하지? 나중에 물어봐야겠당 -->
   			</div>
   		</div>
   		<div class="row">
   			<div class="col-md-2"></div>
   			<div class="col-md-10">
   			<font color="gray">* JPG, PNG, GIF 파일만 최대 3장 업로드 가능합니다.</font>
   			</div>
   		</div>
   		<hr>
   		<div class="row notice">
   			&nbsp;&nbsp;문의에 대한 답변 등록 시 알려드립니다.
   		</div>
   		<br>
   		<div class="row">
   			<div class="col-md-2">
   				연락처<font color="#424874">&nbsp;*</font>
   			</div>
   			<div class="col-md-3">
  				<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1" checked>
  				<label class="form-check-label" for="flexRadioDefault1">
    			휴대폰 번호
  				</label>
			</div>
			<div class="col-md-3">
				<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2">
				<label class="form-check-label" for="flexRadioDefault2">
				이메일
  				</label>
			</div>
   		</div>
   		<div class="row">
   			<div class="col-md-2"></div>
   			<div class="col-md-10">
  				<textarea class="form-control" placeholder="휴대폰 번호를 '-' 제외 후 입력해 주세요." id="phoneTextarea1" style="height: 30px"></textarea>
 			 	<textarea class="form-control" placeholder="이메일 주소를 입력해 주세요.(예:abc@abc.com)" id="emailTextarea2" style="height: 30px"></textarea>
			</div>
   		</div>
   		<hr>
   		<br>
   		<div class="row">
   			<div class="col-md-4"></div>
   			<div class="col-md-6">
   				<button type="button" class="btn btn-secondary btn-lg" id="btnCancle" style="width: 200px">취소</button>
   				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   				<button type="button" class="btn btn-primary btn-lg" id="btnOk" style="width: 200px" onclick="location.href='qnalist'">문의접수</button>
   			</div>
   		</div>
   		<br><br>
   </main>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>