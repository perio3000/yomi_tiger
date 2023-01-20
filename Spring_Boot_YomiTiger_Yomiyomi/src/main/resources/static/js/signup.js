// 전체선택
$(document).ready(function() {
	$(".form-check-input").click(function() {
		if($("input[name=chkAll]").is(":checked")) $("input[name=chk]").prop("checked", true);
		else $("input[name=chk]").prop("checked", false);
	});
	
	$("input[name=chk]").click(function() {
		var total = $("input[name=chk]").length;
		var checked = $("input[name=chk]:checked").length;
		
		if(total != checked) $(".form-check-input").prop("checked", false);
		else $(".form-check-input").prop("checked", true); 
	});
});