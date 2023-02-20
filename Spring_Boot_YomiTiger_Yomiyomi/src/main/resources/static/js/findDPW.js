$(document).ready(function (){
		
	$("#findIdForm").submit(function(event) {
	    //prevendDefault()는 href로 연결해 주지 않고 
	    //단순히 click에 대한 처리를 하도록 해준다.
	    event.preventDefault();
	    
	   	let name = $("#findIdName").val();
	   	let tel = $("#findIdTel").val();
	   	
	   	if(name == ""){
	   		$(".noResult").remove();
	   		$(".modal-body").append(`<p class="noResult">이름을 입력해주세요.<p>`);
	   		return
	   	}
	   	if(tel == ""){
	   		$(".noResult").remove();
	   		$(".modal-body").append(`<p class="noResult">전화번호를 입력해주세요.<p>`);
	   		return
	   	}
	   	if(name != "" && tel != ""){
	   		let form={
		    		name : name,
		    		tel : tel
		         };
		    
		    $.ajax({
		        type : "POST",
		        url : "/findId",
		        cashe:false,
		        contentType:'application/json; charset=utf-8', //MIME 타입
		        data: JSON.stringify(form), 
		        success: function (result) {       
					console.log(result);
					$(".noResult").remove();
					$(".result").remove();
					$(".resultSizeChild").remove();
					
					$(".resultSize").append(`<span class="resultSizeChild"> (${result.length}개)</span>`);
					
					if(result.length == 0){
						$(".modal-body").append(`<p class="noResult">조회 결과가 없습니다.<p>`);
					}
					
					for(let i = 0; i < result.length; i++){
						$(".modal-body").append(`								
							<p class="result">${result[i].username}<p>
						`)
					}
		        },
		        error: function (e) {
		            console.log(e);
		        }
		    });
		    
	   	}
	});
	
	$("#findPwForm").submit(function(event) {
	    //prevendDefault()는 href로 연결해 주지 않고 
	    //단순히 click에 대한 처리를 하도록 해준다.
	    event.preventDefault();
	    let email = $("#findPwId").val();
	    let pattern_email = /^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]+$/;
		pattern_email = new RegExp(pattern_email);	
		var timer;
		
		if (pattern_email.test(email) == false) {
			$(".noResult").remove();
	   		$(".modal-body").append(`<p class="noResult">이메일을 잘못 입력하셨습니다.</p><p class="noResult">(소셜 로그인 계정인 경우 비밀번호 변경이 불가합니다.)</p>`);
	   		return
		}	
		else if(email == ""){
   		
	   		$(".noResult").remove();
	   		$(".modal-body").append(`<p class="noResult">아이디(이메일)를 입력해주세요.<p>`);
	   		return
	   	}
	   	else{
	   		var highestIntervalId = setInterval(";");
	   		for (var i = 0 ; i < highestIntervalId ; i++) {
	   		  clearInterval(i);
	   		}
	   		$(".id_span_timer").remove();
	   		$(".formst2").append(`<span id="id_span_timer"></span>`);
	   		
		    $.ajax({
		        type : "GET",
		        url : "/mailConfirm/" + email,
		        cashe:false,
		        contentType:'application/json; charset=utf-8', //MIME 타입 
		        success: function (result) {       
					console.log(result);
					$(".encodedCode").val(result);
					
					var timer;
					
					$(".noResult").remove();
					
					var seconds = 300;

					timer = setInterval(function(){
						var min = parseInt((seconds)/60);
					    var sec = seconds%60 < 10 ? "0" + seconds%60 : seconds%60;

					    $("#id_span_timer").html(min+":" + sec);

					    seconds--;
					    
					    if(seconds == 0){
					    	$(".encodedCode").val("");
					    	alert("인증 시간 초과");
					    	$("#id_span_timer").html("인증시간이 초과되었습니다. 다시 시도해주세요.");
					    	clearInterval(timer);
					    }
					},1000);
					
		        },
		        error: function (e) {
		            console.log(e);
		        }
		    });
		    
	   	}
	});
	
	$("#confirmForm").submit(function(event){
		event.preventDefault();
		
		let veriNum = $("#veriNum").val();
		let encodedCode = $(".encodedCode").val();
		
		if(veriNum == ""){
	   		alert("인증번호를 입력해주세요.");
	   		return
	   	}
	   	else{
	   		
		    $.ajax({
		        type : "GET",
		        url : "/confirm/" + veriNum + "/" + encodedCode,
		        cashe:false,
		        contentType:'application/json; charset=utf-8', //MIME 타입 
		        success: function (result) {       
					console.log(result);
					
					if(result == "true"){
						alert("인증에 성공하였습니다.");
						window.location.href = "/member/pwChange";
					}
					else{
						alert("인증에 실패하였습니다.");
					}
		        },
		        error: function (e) {
		            console.log(e);
		        }
		    });
	   	}
	})
	
});

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


