$(document).ready(function() {

});

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
