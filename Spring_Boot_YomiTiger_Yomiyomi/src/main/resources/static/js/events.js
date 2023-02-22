$(document).ready(function(){
	$(".btn-group").click(function(){
		$("#searchEventForm2").submit();
	});
	
	let query = window.location.search;
	let param = new URLSearchParams(query);
	let id = param.get('pageNum');
	let liLen = $(".page_item").length;
	
	if(param.get('category') == 'ing'){
		$("#btnradio1").prop("checked", true);
	}
	else if(param.get('category') == 'end'){
		$("#btnradio2").prop("checked", true);
	}
	
	for(var i = 0; i <= liLen+1; i++){
		if(id-1 == $($(".page_item")[i]).index()){
			$($(".page_item")[i]).addClass("active");
		}else if(id == null){
			$($(".page_item")[0]).addClass("active");
		}
	}
});

function press(f){
    if(f.keyCode == 13){ //javascript에서는 13이 enter키를 의미함
        formname.submit(); //formname에 사용자가 지정한 form의 name입력
    }
}