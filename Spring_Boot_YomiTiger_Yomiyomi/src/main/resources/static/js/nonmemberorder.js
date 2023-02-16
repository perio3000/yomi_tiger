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

$(document).ready(function(){
	$("#nonMemberOrderForm").submit(function(event) {
	    //prevendDefault()는 href로 연결해 주지 않고 
	    //단순히 click에 대한 처리를 하도록 해준다.
	    event.preventDefault();
	    
	   	let name = $(".nonMemberName").val();
	   	let phone = $(".nonMemberPhone").val();
	   	let password = $(".nonMemberPassword").val();

	    let form={
	    		name : name,
	    		phone : phone,
	    		password : password
	         };
	    
	    $.ajax({
	        type : "POST",
	        url : "/nonMemberOrderList",
	        cashe:false,
	        contentType:'application/json; charset=utf-8', //MIME 타입
	        data: JSON.stringify(form), 
	        success: function (result) {       
				console.log(result);
				$(".noResult").remove();
				$(".tbodyChild").remove();
				
				if(result.length == 0){
					$(".modal-body").append(`<p class="noResult">조회 결과가 없습니다.<p>`);
				}
				
				for(let i = 0; i < result.length; i++){
					$(".tbody").append(`								
						<tr class="tbodyChild">
							<td class="align-middle">
								<div>
									<div class="fs-6">${ result[i].id }</div>
									<div class="text-secondary">(${ result[i].order_date })</div>
								</div>
							</td>
							<td class="align-middle">
								<div>${ result[i].total_price }원</div>
							</td>
							<td class="align-middle">
								<div class="row">
									<div class="col"><img alt="" src="${ result[i].thumbnail }" width="140px" height="195px"></div>
									<div class="col d-flex align-items-center">
										<div class="">${ result[i].title } 등</div>
									</div>
								</div>
							</td>
							<td class="align-middle">
								<div>${ result[i].amount }</div>
							</td>
							<td class="align-middle">
								<div class="${ result[i].delivery_state }">${ result[i].delivery_state }</div>
							</td>
						</tr>
					`)
				}
	        },
	        error: function (e) {
	            console.log(e);
	        }
	    });
	    
	    
	 });
});

