$(document).ready(function() {
	$("input:radio[name=type]").click(function() {
		$("#categoryForm").submit();
	});
	
	const searchParams = new URLSearchParams(location.search);

	for (const param of searchParams) {
		if(param[1] == "all"){
			$(".bookBtn").prop("checked", true);
		}else if(param[1] == "nat"){
			$(".bookBtn1").prop("checked", true);
		}else if(param[1] == "int"){
			$(".bookBtn2").prop("checked", true);
		}else if(param[1] == "ebo"){
			$(".bookBtn3").prop("checked", true);
		}
	};
	

});
 
 