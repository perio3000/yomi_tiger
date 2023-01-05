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
<title>1:1 문의</title>

<link rel="stylesheet" type="text/css" href="reset.css">
</head>
<body>
   <main class="container">
   		<div class="row">
   			1:1 문의 접수
   		</div>
   		<div class="row">
   			<div class="col-md-2">
   				문의 유형<font color="blue">&nbsp;*</font>
   			</div>
   			<div class="col-md-10">
   				<select class="form-select" aria-label="Default select example">
  				<option selected>문의 유형을 선택해 주세요.</option>
  				<option value="1">머지</option>
 				<option value="2">머죠</option>
  				<option value="3">머야</option>
				</select>
   			</div>
   		</div>
   		<br>
   		<div class="row">
   			<div class="col-md-2">
   				내용<font color="blue">&nbsp;*</font>
   			</div>
   			<div class="col-md-10">
   				<div class="form-floating">
  					<textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea" ></textarea>
  					<label for="floatingTextarea">제목을 입력해 주세요.</label>
  					<!-- 높이 낮추고싶은데 그건 좀 나중에 해보겟읍니다. -->
				</div>
   			</div>
   			<br>
   			<div class="col-md-2"></div>
   			<div class="col-md-10">
   				<textarea class="form-control" placeholder="10자 이상의 문의 내용을 입력해 주세요." id="floatingTextarea" ></textarea>
  				<label for="floatingTextarea"></label>
   			</div>
   		</div>
   		<div class="row">
   			<div class="col-md-2">
   				사진 첨부
   			</div>
   			<div class="col-md-10">
   				사진들어갈건데<br>
   				네모만들어야해<br>
   				근데어케할지를<br>
   				모르겠으니까요
   			</div>
   		</div>
   		<div class="row">
   			<div class="col-md-2"></div>
   			<div class="col-md-10">
   			<font color="gray">* JPG, PNG, GIF 파일만 최대 3장 업로드 가능합니다.</font>
   			</div>
   		</div>
   </main>
</body>
</html>