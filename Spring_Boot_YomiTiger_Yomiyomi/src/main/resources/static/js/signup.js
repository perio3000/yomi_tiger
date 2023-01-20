// 전체선택
$(document).ready(function() {
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

