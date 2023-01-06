let key = "${param.key}";

if(key === "first"){
	
	$("#second-tab").removeClass("active");
	$("#third-tab").removeClass("active");
	$("#first-tab").addClass("active");
	
	$("#second").removeClass("show active");
	$("#third").removeClass("show active");
	$("#first").addClass("show active");
	
}else if(key === "second"){
	
	$("#third-tab").removeClass("active");
	$("#first-tab").removeClass("active");
	$("#second-tab").addClass("active");
	
	$("#first").removeClass("show active");
	$("#third").removeClass("show active");
	$("#second").addClass("show active");
	
}else if(key === "third"){
	
	$("#first-tab").removeClass("active");
	$("#second-tab").removeClass("active");
	$("#third-tab").addClass("active");
	
	$("#second").removeClass("show active");
	$("#first").removeClass("show active");
	$("#third").addClass("show active");
}