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
	   	
	   	if(email == ""){
	   		$(".noResult").remove();
	   		$(".modal-body").append(`<p class="noResult">아이디(이메일)를 입력해주세요.<p>`);
	   		return
	   	}
	   	else{
		    
		    $.ajax({
		        type : "GET",
		        url : "/mailConfirm/" + email,
		        cashe:false,
		        contentType:'application/json; charset=utf-8', //MIME 타입
		        data: email, 
		        success: function (result) {       
					console.log(result);
					$(".noResult").remove();
					$(".formst").remove();
					$(".veriBtn").remove();
									
					$(".modal-body").append(`								
						<div class="formst">
							<label>인증번호 입력</label>
							<input type="text" id="veriNum" placeholder="인증번호를 입력해 주세요.">
						</div>
					`);
					
					$(".modal-footer").append(`
							<button type="button" class="btn btn-primary veriBtn">인증</button>
					`);
		        },
		        error: function (e) {
		            console.log(e);
		        }
		    });
		    
	   	}
	});
	
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