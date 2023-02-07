

//숫자 3자리 콤마찍기
Number.prototype.formatNumber = function(){

	if(this==0) return 0;

	let regex = /(^[+-]?\d+)(\d{3})/;
	let nstr = (this + '');
	while (regex.test(nstr)) nstr = nstr.replace(regex, '$1' + ',' + '$2');
	return nstr;
};

//수량 변경
function fnCalCount(type, ths){
    var $input = $(ths).parents("td").find("input[name='p_num1']");
    var tCount = Number($input.val());
  
    
    if(type=='p'){
        $input.val(Number(tCount)+1);
        
    }else{
        if(tCount >0) $input.val(Number(tCount)-1);    
        }
}
//전체선택
$(document).ready(function() {
	$("#checkbox").click(function() {
		if($("#checkbox").is(":checked")) $("input[name=chk]").prop("checked", true);
		else $("input[name=chk]").prop("checked", false);
	});
	
	$("input[name=chk]").click(function() {
		var total = $("input[name=chk]").length;
		var checked = $("input[name=chk]:checked").length;
		
		if(total != checked) $("#checkbox").prop("checked", false);
		else $("#checkbox").prop("checked", true); 
	});
	
});



