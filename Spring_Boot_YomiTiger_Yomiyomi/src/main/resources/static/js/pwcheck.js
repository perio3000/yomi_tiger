
$(document).ready(function(){
	
	$("#pwCheckForm").submit(function(event){
		event.preventDefault();
		
		let password = $("#pwCheck").val();
		let username = $(".principal").val();
		
		let form = {
				password : password,
				username : username
		};
		
		$.ajax({
			type : "POST",
			url : "/pwCheck",
			cashe : false,
			contentType : 'application/json; charset=utf-8', //MIME 타입
			data : JSON.stringify(form),
			success : function(result) {
				console.log(result);
				
				if(result == "true"){
					alert("인증에 성공하였습니다.");
					window.location.href = "/member/pwChange";
				}
				else{
					alert("인증에 실패하였습니다.");
				}
			},
			error : function(e) {
				console.log(e);
			}
		});
	});
});