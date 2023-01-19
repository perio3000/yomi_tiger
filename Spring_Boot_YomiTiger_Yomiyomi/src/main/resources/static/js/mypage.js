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
	$(".preText").text($(".준비중").length)
	$(".ingText").text($(".배송중").length);
	$(".endText").text($(".배송완료").length);
	$(".canText").text($(".취소").length);
	$(".refText").text($(".교환환불").length);
	
	if($("input[name=preList]").length == 0){
		$(".nonPreList").css("display", "block");
	};
	
	if($("input[name=ingList]").length == 0){
		$(".nonIngList").css("display", "block");
	};
	
	if($("input[name=comList]").length == 0){
		$(".nonComList").css("display", "block");
	};
	

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
    
})
