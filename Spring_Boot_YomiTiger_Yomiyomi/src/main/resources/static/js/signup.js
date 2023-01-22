
$(document).ready(function() {
	// 전체선택
	$("#defaultCheck1").click(function() {
		if($("#defaultCheck1").is(":checked")) $("input[name=chk]").prop("checked", true);
		else $("input[name=chk]").prop("checked", false);
	});
	
	$("input[name=chk]").click(function() {
		var total = $("input[name=chk]").length;
		var checked = $("input[name=chk]:checked").length;
		
		if(total != checked) $("#defaultCheck1").prop("checked", false);
		else $("#defaultCheck1").prop("checked", true); 
	});
	
	//유효성 검사
	$("#signupForm").submit(function(event) {
		//prevendDefault()는 href로 연결해 주지 않고 
		//단순히 click에 대한 처리를 하도록 해준다.
		event.preventDefault();
		
		let pw = $("#password").val();
        let number = pw.search(/[0-9]/g);
        let english = pw.search(/[a-z]/ig);
        let spece = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
        let reg = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;
        let pattern_name = /^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/;
    	pattern_name = new RegExp(pattern_name);
    	let pattern_tel = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;
    	pattern_tel = new RegExp(pattern_tel);
    	
		if($("#email").val() == ""){
			alert("이메일을 입력해주세요.");
			return false;
		}else if($("#password").val() == ""){
			alert("비밀번호를 입력해주세요.");
			return false;
		}else if($("#password2").val() == ""){
			alert("비밀번호 확인을 입력해주세요.");
			return false;
		}else if($("#name").val() == ""){
			alert("이름을 입력해주세요.");
			return false;
		}else if($("#tel").val() == ""){
			alert("휴대폰 번호를 입력해주세요.");
			return false;
		}else if($("#check1").is(":checked") == false || $("#check2").is(":checked") == false || $("#check3").is(":checked") == false){
			alert("이용약관을 확인해주세요.");
			return false;
		}else if($("#idCheck").val() != "사용 가능한 아이디"){
			alert("이메일 중복 확인을 해주세요.");
			return false;
		}else if(pw.length < 8 || pw.length > 20) {
            alert("8자리 ~ 20자리 이내로 입력해주세요.");
            return false;
        }else if(pw.search(/\s/) != -1) {
            alert("비밀번호는 공백 없이 입력해주세요.");
            return false;
        }else if(number < 0 || english < 0 || spece < 0) {
            alert("영문,숫자,특수문자를 혼합하여 입력해주세요.");
            return false;
        }else if((number < 0 && english < 0) || (english < 0 && spece < 0) || (spece < 0 && number < 0)) {
            alert("영문,숫자, 특수문자 중 2가지 이상을 혼합하여 입력해주세요.");
            return false;
        }else if(/(\w)\1\1\1/.test(pw)) {
            alert('같은 문자를 4번 이상 사용하실 수 없습니다.');
            return false;
        }else if($("#password").val() != $("#password2").val()) {
            alert('비밀번호와 비밀번호 확인의 입력내용이 일치하지 않습니다.');
            return false;
        }else if(pattern_name.test($("#name").val()) == false) {
            alert('정확한 이름을 입력해주세요.');
            return false;
        }else if(pattern_tel.test($("#tel").val()) == false) {
            alert('정확한 휴대폰 번호를 입력해주세요.');
            return false;
        }else{
            let username = $("#email").val();
            let password = $("#password").val();
            let name = $("#name").val();
            let tel = $("#tel").val();

            let form={
        		username: username,
        		password: password,
        		name: name,
        		tel:tel               
            };
        	
        	
        	$.ajax({
    			type : "POST",
    			url : "/signupMember",
    			cashe : false,
    			contentType : 'application/json; charset=utf-8', //MIME 타입
    			data: JSON.stringify(form), 
    			success : function(result) {
    				console.log(result);
    				window.location.href = "/";
    			},
    			error : function(e) {
    				console.log(e);
    			}
    		});
        }

	});
	
});

//아이디 중복 체크
function usernameCheck(){
	
	let username = $('#email').val();
	
	let pattern_email = /^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]+$/;
	pattern_email = new RegExp(pattern_email);	
	
	if($('#email').val() == ""){
        alert("이메일을 입력해주세요.");
    }
	else if (pattern_email.test(username) == false) {
		alert('정확한 이메일 주소를 입력하세요');
	}
    else{
    	$.ajax({
			type : "GET",
			url : "/idcheck/" + username,
			cashe : false,
			contentType : 'application/json; charset=utf-8', //MIME 타입
			data : username,
			dataType : "json",
			success : function(result) {
				console.log(result);
	            if(result == 0){
	                alert('사용 가능한 아이디 입니다.');
	                $('#idCheck').val("사용 가능한 아이디");
	            }
	            else{
	                alert('이미 존재하는 아이디 입니다.');
	                $('#idCheck').val(1);
	            }
			},
			error : function(e) {
				console.log(e);
			}
		});
    }
};

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