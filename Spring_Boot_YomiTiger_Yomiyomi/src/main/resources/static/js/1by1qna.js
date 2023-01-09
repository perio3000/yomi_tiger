/**
 * 
 */
$(document).ready(function(){
	$("#flexRadioDefault1").click(function(){
		$("#phoneTextarea1").css("display", "block");
		$("#emailTextarea2").css("display", "none");
	})
	$("#flexRadioDefault2").click(function(){
		$("#emailTextarea2").css("display", "block");
		$("#phoneTextarea1").css("display", "none");
	})
})