$(document).ready(function(){
	
	$("#pwChangeForm").submit(function(event){
		event.preventDefault();
		
		let pw = $("#newPw").val();
        let number = pw.search(/[0-9]/g);
        let english = pw.search(/[a-z]/ig);
        let spece = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
        
        if(pw.length < 8 || pw.length > 20) {
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
        }else if($("#newPw").val() != $("#newPwCheck").val()) {
            alert('비밀번호와 비밀번호 확인의 입력내용이 일치하지 않습니다.');
            return false;
        }else{
        	let form = {
        			password : pw,
        			username : $(".principal").val()
        	};
        	
        	$.ajax({
		        type : "PUT",
		        url : "/pwChange",
		        cashe:false,
		        contentType:'application/json; charset=utf-8', //MIME 타입
		        data: JSON.stringify(form), 
		        success: function (result) {       
					console.log(result);
					
					alert("비밀번호가 변경되었습니다.")
					
					window.location.href = "/logout?logout"
		        },
		        error: function (e) {
		            console.log(e);
		        }
		    });
        }
	});
});