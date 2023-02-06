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

		$.ajax({
			method: "POST",
			url: "/detailtext",
			data: detailUrl,
			success: function(result2){
				
				$(".detailText").append(result2);
			}
		});
		
	});
	

	
});