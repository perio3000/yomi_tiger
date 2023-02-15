const collapseElementList = document.querySelectorAll('.collapse')
const collapseList = [...collapseElementList].map(collapseEl => new bootstrap.Collapse(collapseEl))

$(".accordion-item .accordion-header").click(function(){
	$(this).toggleClass('active')
	/*$(this).addClass("active");
	$(this).siblings(".accordion-item .accordion-header").removeClass("active");
	$(this).siblings(".accordion-item .accordion-collapse").stop().slideUp();*/
	$(this).next().stop().slideToggle();
});

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

$(document).ready(function(){
		
	let sum = 0;
	
	$("span[class^=price]").each(function(){       

        let eachPrice = $(this).text();
        let sumPrice = eachPrice.replace(",", "");
        
        sum += Number(sumPrice); 
    });

	$(".itemsPrice").append(sum.toLocaleString());
	$(".totalPrice").append((sum + 2500).toLocaleString());
	$(".plusPoint").append(sum / 100);
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

function payment(){

	const urlParams = new URL(location.href).searchParams;

	const orderList = urlParams.get('orderList');
	
    let priceText = $(".totalPrice").text();
    let totalPrice = priceText.replace(",","");
	let pattern_tel = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;
	pattern_tel = new RegExp(pattern_tel);
	let pattern_email = /^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]+$/;
	pattern_email = new RegExp(pattern_email);	
	
	
	if($(".isAuthenticated").val() == "true"){
		const data = {
				payMethod : $("input[type='radio']:checked").val(),
				orderNum : Number(createOrderNum()),
				name : $("#inputName").val(),
				orderName : $(".orderName").text(),
				amount : totalPrice,
				email : $("#inputEmail").val(),
				phone : $("#inputTel").val(),
				postcode : $("#sample6_postcode").val(),
				address : $("#sample6_address").val(),
				extraAddress : $("#sample6_extraAddress").val(),
				detailAddress : $("#sample6_detailAddress").val(),
				itemIdList : Number($("input[class^=inputId]").val()),
				amountList : $("span[class^=orderName]").length,
				point : Number($(".plusPoint").text()),
				username : $(".principal").val(),
				orderList: orderList
		};
		
		if(!data.payMethod){
			alert("결제수단을 선택해주세요.");
			return
		}
		if(!data.name){
			alert("수령인 이름을 입력해주세요.");
			return
		}
		if(!data.email){
			alert("이메일을 입력해주세요.");
			return
		}
		if(!data.phone){
			alert("휴대폰 번호를 입력해주세요.");
			return
		}
		if(!data.postcode || !data.address || !data.detailAddress){
			alert("주소를 입력해주세요.");
			return
		}
		if($('input:checkbox[id="check"]').is(":checked") == false){
			alert("주문내용 확인 및 동의를 확인해주세요.");
			return
		}
		if(pattern_tel.test(data.phone) == false) {
            alert('정확한 휴대폰 번호를 입력해주세요.');
            return
        }
		if (pattern_email.test(data.email) == false) {
			alert('정확한 이메일 주소를 입력하세요');
			return
		}
		
		paymentCard(data);
		
	}else{
		let pw = $("#inputPW").val();
        let number = pw.search(/[0-9]/g);
        let english = pw.search(/[a-z]/ig);
        let spece = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
        
		const data = {
				payMethod : $("input[type='radio']:checked").val(),
				orderNum : Number(createOrderNum()),
				name : $("#inputName").val(),
				orderName : $(".orderName").text(),
				amount : totalPrice,
				email : $("#inputEmail").val(),
				phone : $("#inputTel").val(),
				postcode : $("#sample6_postcode").val(),
				address : $("#sample6_address").val(),
				extraAddress : $("#sample6_extraAddress").val(),
				detailAddress : $("#sample6_detailAddress").val(),
				itemIdList : Number($("input[class^=inputId]").val()),
				amountList : $("span[class^=orderName]").length,
				password : $("#inputPW").val(),
				orderList: orderList
		};
		
		if(!data.payMethod){
			alert("결제수단을 선택해주세요.");
			return
		}
		if(!data.name){
			alert("수령인 이름을 입력해주세요.");
			return
		}
		if(!data.email){
			alert("이메일을 입력해주세요.");
			return
		}
		if(!data.phone){
			alert("휴대폰 번호를 입력해주세요.");
			return
		}
		if(!data.postcode || !data.address || !data.detailAddress){
			alert("주소를 입력해주세요.");
			return
		}
		if(!data.password){
			alert("비밀번호를 입력해주세요.");
			return
		}
		if($('input:checkbox[id="check"]').is(":checked") == false){
			alert("주문내용 확인 및 동의를 확인해주세요.");
			return
		}
		
		if(pw.length < 8 || pw.length > 20) {
            alert("8자리 ~ 20자리 이내로 입력해주세요.");
            return
        }
		if(pw.search(/\s/) != -1) {
            alert("비밀번호는 공백 없이 입력해주세요.");
            return
        }
		if(number < 0 || english < 0 || spece < 0) {
            alert("영문,숫자,특수문자를 혼합하여 입력해주세요.");
            return
        }
		if((number < 0 && english < 0) || (english < 0 && spece < 0) || (spece < 0 && number < 0)) {
            alert("영문,숫자, 특수문자 중 2가지 이상을 혼합하여 입력해주세요.");
            return
        }
		if(/(\w)\1\1\1/.test(pw)) {
            alert('같은 문자를 4번 이상 사용하실 수 없습니다.');
            return
        }
		if($("#inputPW").val() != $("#inputPW2").val()) {
            alert('비밀번호와 비밀번호 확인의 입력내용이 일치하지 않습니다.');
            return
        }
		if(pattern_tel.test(data.phone) == false) {
            alert('정확한 휴대폰 번호를 입력해주세요.');
            return
        }
		if (pattern_email.test(data.email) == false) {
			alert('정확한 이메일 주소를 입력하세요');
			return
		}
		
		paymentCard(data);
	}
}

//주문번호 만들기
function createOrderNum(){
	const date = new Date();
	const year = date.getFullYear();
	const month = String(date.getMonth() + 1).padStart(2, "0");
	const day = String(date.getDate()).padStart(2, "0");
	
	let orderNum = year + month + day;
	for(let i=0;i<10;i++) {
		orderNum += Math.floor(Math.random() * 8);	
	}
	return orderNum;
}

//카드 결제
function paymentCard(data) {
		
	IMP.init("imp63607421"); 
		
	IMP.request_pay({ // param
		pg: "html5_inicis.INIpayTest",
	  	pay_method: data.payMethod,
	  	merchant_uid: data.orderNum,
	  	name: data.orderName,
	  	amount: data.amount,
	   	buyer_email: data.email,
	   	buyer_name: data.name,
	  	buyer_tel: data.phone,
	  	buyer_addr: data.address + " " + data.extraAddress + " " + data.detailAddress,
	  	buyer_postcode: data.postcode 
  	}, 
	function (rsp) { // callback
		if (rsp.success) {
         // 결제 성공 시 로직,
	        console.log(rsp);
	        console.log(data);
	        
	        $.ajax({
            	type: "POST",
            	url: "/successPayment",
            	cashe: false,
	            contentType:'application/json; charset=utf-8', //MIME 타입
				data : JSON.stringify(data),
				success: function(result) {
					console.log(result);
					
					window.location.href = "/mypage/orderdeliverylist"
				},
	            error: function (e) {
	                console.log(e);
	            }
            });
		} else {
          // 결제 실패 시 로직,
			console.log(rsp);
			alert("결제에 실패 했습니다.");
		}
	});
}