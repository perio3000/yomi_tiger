$(document).ready(function() {
	$("input:radio[name=category]").click(function() {
		$("#searchForm").submit();
	});
	
	$("#sortDropdown").change(function() {
		$("#searchForm").submit();
	});
	
	$("#yearDropdown").change(function() {
		$("#searchForm").submit();
	});
	
	$("#monthDropdown").change(function() {
		$("#searchForm").submit();
	});
	
	$("#viewDropdown").change(function() {
		$("#searchForm").submit();
	});
	
	let query = window.location.search;
	let param = new URLSearchParams(query);
	let id = param.get('pageNum');
	let liLen = $(".page_item").length;
	
	if(param.get('category') == null){
		$(".bookBtn").prop("checked", true);
	}

	for(var i = 0; i <= liLen+1; i++){
		if(id-1 == $($(".page_item")[i]).index()){
			$($(".page_item")[i]).addClass("active");
		}else if(id == null){
			$($(".page_item")[0]).addClass("active");
		}
	}
});
 
 