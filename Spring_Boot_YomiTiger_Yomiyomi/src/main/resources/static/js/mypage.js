// 탭메뉴
let key = "${param.key}";

if(key === "first"){
	
	$("#second-tab").removeClass("active");
	$("#third-tab").removeClass("active");
	$("#fourth-tab").removeClass("active");
	$("#first-tab").addClass("active");
	
	$("#second").removeClass("show active");
	$("#third").removeClass("show active");
	$("#fourth").removeClass("show active");
	$("#first").addClass("show active");
	
}else if(key === "second"){
	
	$("#third-tab").removeClass("active");
	$("#first-tab").removeClass("active");
	$("#fourth-tab").removeClass("active");
	$("#second-tab").addClass("active");
	
	$("#first").removeClass("show active");
	$("#third").removeClass("show active");
	$("#fourth").removeClass("show active");
	$("#second").addClass("show active");
	
}else if(key === "third"){
	
	$("#first-tab").removeClass("active");
	$("#second-tab").removeClass("active");
	$("#fourth-tab").removeClass("active");
	$("#third-tab").addClass("active");
	
	$("#second").removeClass("show active");
	$("#first").removeClass("show active");
	$("#fourth").removeClass("show active");
	$("#third").addClass("show active");
}else if(key === "fourth"){
	
	$("#first-tab").removeClass("active");
	$("#second-tab").removeClass("active");
	$("#third-tab").removeClass("active");
	$("#fourth-tab").addClass("active");
	
	$("#second").removeClass("show active");
	$("#first").removeClass("show active");
	$("#third").removeClass("show active");
	$("#fourth").addClass("show active");
}

//클릭시 해당 탭으로 이동
function secondTab(){
	$("#second-tab").click();
}

function thirdTab(){
	$("#third-tab").click();
}

function fourthTab(){
	$("#fourth-tab").click();
}



$(document).ready(function(){
	$("input:radio[name=category]").click(function() {
		$("#searchForm").submit();
	});
	
	$("#sortDropdown").change(function() {
		$("#searchForm").submit();
	});
	
	$("#yearDropdown").change(function() {
		$("#searchForm").submit();
	});
	
	$("#monthDropdown").change(function() {
		$("#searchForm").submit();
	});
	
	$("#viewDropdown").change(function() {
		$("#searchForm").submit();
	});
	
	let query = window.location.search;
	let param = new URLSearchParams(query);
	let id = param.get('pageNum');
	let liLen = $(".page_item").length;
	
	if(param.get('category') == null){
		$(".bookBtn").prop("checked", true);
	}

	for(var i = 0; i <= liLen+1; i++){
		if(id-1 == $($(".page_item")[i]).index()){
			$($(".page_item")[i]).addClass("active");
		}else if(id == null){
			$($(".page_item")[0]).addClass("active");
		}
	}
	
	//소셜로그인의 경우 비밀번호 변경창 숨김
	let email = $("#staticEmail").val();
    let pattern_email = /^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]+$/;
	pattern_email = new RegExp(pattern_email);	
	
	if (pattern_email.test(email) == false) {
		$(".changePassword").css("display", "none");
	}	
	
	
//	주문 배송 목록 진행상태 표시
	$(".preText").text($(".준비중").length)
	$(".ingText").text($(".배송중").length);
	$(".endText").text($(".배송완료").length);
	$(".canText").text($(".취소").length);
	$(".refText").text($(".교환환불").length);

//	목록이 없을 경우 메세지 띄우기
	if($("input[name=preList]").length == 0){
		$(".nonPreList").css("display", "block");
	};
	
	if($("input[name=ingList]").length == 0){
		$(".nonIngList").css("display", "block");
	};
	
	if($("input[name=comList]").length == 0){
		$(".nonComList").css("display", "block");
	};
	
//	문의내역 답변완료 목록 불러오기
	$("#inquiryForm").submit(function(event) {
		//prevendDefault()는 href로 연결해 주지 않고 
		//단순히 click에 대한 처리를 하도록 해준다.
		event.preventDefault();

		let group = $("#reply_group").val();
		
		/*
		$.ajax({
		     type : `http method type`,
		     url : `url`,
		     data : `서버에 전송할 데이터`,
		     contentType : "전송할 데이터 타입",
		     //기본 값 : "application / x-www-form-urlencoded; charset = UTF-8"  
		     dataType : '서버로 부터 수신할 데이터 타입',
		     //아무것도 지정하지 않으면 jQuery는 응답의 MIME 유형을 기반으로 해석을 시도
		     error : `에러 발생시 수행할 함수`,
		     success : `성공시 수행할 함수`
		   });
		 */
		console.log(group);

		$.ajax({
			type : "GET",
			url : "/inquiry/" + group,
			cashe : false,
			contentType : 'application/json; charset=utf-8', //MIME 타입
			data : group,
			dataType : "json",
			success : function(result) {
				console.log(result);
				
				$(".replyTitle"+group).text("");
				$(".replyBody"+group).text("");
				
				$(".replyTitle"+group).append(result[0].content);
				$(".replyBody"+group).append(result[1].content);
				
			},
			error : function(e) {
				console.log(e);
			}
		});

	});
	
//	회원정보 수정
	$("#updateForm").submit(function(event) {
		//prevendDefault()는 href로 연결해 주지 않고 
		//단순히 click에 대한 처리를 하도록 해준다.
		event.preventDefault();
		
//		let pw = $("#inputPassword").val();
//        let number = pw.search(/[0-9]/g);
//        let english = pw.search(/[a-z]/ig);
//        let spece = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
//        let reg = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;
//		
//		if($("#inputPassword").val() == ""){
//			alert("비밀번호를 입력해주세요.");
//			return false;
//		}else if($("#inputPassword2").val() == ""){
//			alert("비밀번호 확인을 입력해주세요.");
//			return false;
//		}else if(pw.length < 8 || pw.length > 20) {
//            alert("8자리 ~ 20자리 이내로 입력해주세요.");
//            return false;
//        }else if(pw.search(/\s/) != -1) {
//            alert("비밀번호는 공백 없이 입력해주세요.");
//            return false;
//        }else if(number < 0 || english < 0 || spece < 0) {
//            alert("영문,숫자,특수문자를 혼합하여 입력해주세요.");
//            return false;
//        }else if((number < 0 && english < 0) || (english < 0 && spece < 0) || (spece < 0 && number < 0)) {
//            alert("영문,숫자, 특수문자 중 2가지 이상을 혼합하여 입력해주세요.");
//            return false;
//        }else if(/(\w)\1\1\1/.test(pw)) {
//            alert('같은 문자를 4번 이상 사용하실 수 없습니다.');
//            return false;
//        }else if($("#inputPassword").val() != $("#inputPassword2").val()) {
//            alert('비밀번호와 비밀번호 확인의 입력내용이 일치하지 않습니다.');
//            return false;
//        }else{
		
			let id = $("#userId").val();
			let username = $("#staticEmail").val();
//			let password = $("#inputPassword").val();
			let name = $("#name").val();
			let tel = $("#tel").val();
			let city = $("#address1").val();
			let street = $("#address2").val();
			let location = $("#address3").val();
			let postnumber = $("#address4").val();
	
			let form = {
				id : id,
				username : username,
//				password : password,
				name : name,
				tel : tel,
				city : city,
				street : street,
				location : location,
				postnumber : postnumber
			};
	
			console.log(JSON.stringify(form));
	
			$.ajax({
				type : "PUT",
				url : "/userUpdate/" + id,
				cashe : false,
				contentType : 'application/json; charset=utf-8', //MIME 타입
				data : JSON.stringify(form),
				success : function(result) {
					console.log(result);
					window.location.href= "/logout?logout";
					alert("회원정보가 변경되었습니다.")
				},
				error : function(e) {
					console.log(e);
				}
			});
//        }

	});
    
})

//회원정보 전화번호 변경
function changeTel(){
	$("#tel").val($("#inputTel").val());
}

//회원정보 이름 변경
function changeName(){
	$("#name").val($("#inputName").val());
}

//회원정보 주소 변경
function changeAddress(){
	$("#address1").val($("#sample6_address").val());
	$("#address2").val($("#sample6_extraAddress").val());
	$("#address3").val($("#sample6_detailAddress").val());
	$("#address4").val($("#sample6_postcode").val());
}

//휴대번호 자동 - 넣기
function inputPhoneNumber(obj) {

    var number = obj.value.replace(/[^0-9]/g, "");
    var phone = "";

    if (number.length < 4) {
        return number;
    } else if (number.length < 7) {
        phone += number.substr(0, 3);
        phone += "-";
        phone += number.substr(3);
    } else if (number.length < 11) {
        phone += number.substr(0, 3);
        phone += "-";
        phone += number.substr(3, 3);
        phone += "-";
        phone += number.substr(6);
    } else {
        phone += number.substr(0, 3);
        phone += "-";
        phone += number.substr(3, 4);
        phone += "-";
        phone += number.substr(7);
    }
    obj.value = phone;
}

//카카오 주소 검색 api
function sample6_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                // 조합된 참고항목을 해당 필드에 넣는다.
                document.getElementById("sample6_extraAddress").value = extraAddr;
            
            } else {
                document.getElementById("sample6_extraAddress").value = '';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('sample6_postcode').value = data.zonecode;
            document.getElementById("sample6_address").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("sample6_detailAddress").focus();
        }
    }).open();
}