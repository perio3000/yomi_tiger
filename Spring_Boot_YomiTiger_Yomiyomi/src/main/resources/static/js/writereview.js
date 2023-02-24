$(document).ready(function(){
	
	$("#insertBtn").click(function(){
		let title = $("#inputTitle").val();
		let content = $("#inputText").val();
		let user_id = $("#user_id").val();
		let item_id = $("#item_id").val();
		let order_id = $("#order_id").val();
		
		let form ={
				title : title,
				content : content,
				user_id : user_id,
				item_id : item_id,
				order_id : order_id
		};
		
		$.ajax({
			type : "POST",
			url : "/insertReview",
			cashe : false,
			contentType : 'application/json; charset=utf-8', //MIME 타입
			data : JSON.stringify(form),
			success : function(result) {
				console.log(result);
				
				window.location.href = "/store/detail?id=" + result;
				
			},
			error : function(e) {
				console.log(e);
			}
		});
	});
});