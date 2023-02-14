//수량 변경
function fnCalCount(type, ths){
    var $input = $(ths).parents("div").find("input[name='p_num1']");
    var tCount = Number($input.val());
  
    
    if(type=='p'){
        $input.val(Number(tCount)+1);
        
    }else{
        if(tCount > 1) $input.val(Number(tCount)-1);    
        }
}

$(document).ready(function(){
	
	let title = $(".titleText").text();

	$.ajax({
		method: "GET",
		url: "https://dapi.kakao.com/v3/search/book",
		data: {query: title},
		headers: {Authorization: "KakaoAK bc4cda6f8f7a42949e52b295bbbaca0f"},
	}).done(function(result){
		
		let detailUrl = result.documents[0].url;
		
		$(".isbn").text(result.documents[0].isbn);

		$.ajax({
			method: "POST",
			url: "/detailtext",
			data: detailUrl,
			success: function(result2){
				
				$(".detailText").append(result2);
			}
		});
		
	});
	
	$("#cartBtn").click(function(){	
		if($(".isAuthenticated").val() == "true"){
			let item_id = $(".itemId").val();
			let username = $(".userId").val();
			let amount = $("#p_num1").val();
			let cartObj = {
					item_id:item_id,
					username:username,
					amount:amount
			};
			
			$.ajax({
				type: "POST",
				url: "/insertCart",
				cashe: false,
	            contentType:'application/json; charset=utf-8', //MIME 타입
				data : JSON.stringify(cartObj),
				success: function(result) {       
					console.log(result);
					              
	            },
	            error: function (e) {
	                console.log(e);
	            }
			});
		}else{
			
			window.sessionStorage.setItem("bookId" + $(".idNum").val(), $(".idNum").val() + "/" + $("#p_num1").val());
			
		}
		
	});
	
	
	
});

function toBuy(){
	let item_id = $(".idNum").val();
	
	if($(".isAuthenticated").val() == "true"){
		let item_id = $(".itemId").val();
		let username = $(".userId").val();
		let amount = $("#p_num1").val();
		let cartObj = {
				item_id:item_id,
				username:username,
				amount:amount
		};
		
		$.ajax({
			type: "POST",
			url: "/insertCart",
			cashe: false,
            contentType:'application/json; charset=utf-8', //MIME 타입
			data : JSON.stringify(cartObj),
			success: function(result) {       
				console.log(result);
				              
            },
            error: function (e) {
                console.log(e);
            }
		});
	}else{
		
		window.sessionStorage.setItem("bookId" + $(".idNum").val(), $(".idNum").val() + "/" + $("#p_num1").val());
		
	}
	
	window.location.href = "/store/pay?orderList="+item_id;
};

