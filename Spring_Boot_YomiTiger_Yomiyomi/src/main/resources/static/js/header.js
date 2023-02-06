

function logout(){
	$("#logoutForm").submit();
};

function menuOpen(){
	if($(".menuBody").css("display") == "none"){
		$(".menuBody").css("display", "block");
	}
	else{
		$(".menuBody").css("display", "none");
	}
};

$(document).ready(function(){
	$(".search_control").focus(function(){
		$(".searchBody").css("display", "block");		
	});
	
	$(".search_control").focusout(function(){
		setTimeout(function() { 
			$(".searchBody").css("display", "none");
		}, 200);
	});
	
	$(".search_control").keyup(function(){
		let keyword = $(".search_control").val();
		let type = $(".selectCategory2").val();
		
		if(keyword != ""){
			$.ajax({
				type : "GET",
				url : "/searchpre/" + keyword + "/" + type + "/1/20",
				cashe : false,
				contentType : 'application/json; charset=utf-8', //MIME 타입
	//			data : {"keyword":keyword,"type":type},
				dataType : "json",
				success : function(result) {
					
					$(".searchBodyUl>li").remove();
					
					for(var i = 0; i < result.length; i++){
						$(".searchBodyUl").append(`
							<li class="col text-center">
								<a class="bookName" href="/store/detail?id=${result[i].id}">
									<img src="${result[i].thumbnail}" width="168px" height="216px"></a><br>
								<a class="bookName" href="/store/detail?id=${result[i].id}">${result[i].title}</a><br>
								<span class="bookAuthor">${result[i].authors}, ${result[i].publisher}</span><br>
								<span class="bookCost"><span class="bookprice">${result[i].price}</span>원</span>
							</li>
						`);
					}
				},
				error : function(e) {
				}
			});
		};
	});
});