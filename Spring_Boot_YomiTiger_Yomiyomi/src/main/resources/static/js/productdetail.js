//수량 변경
function fnCalCount(type, ths){
    var $input = $(ths).parents("div").find("input[name='p_num1']");
    var tCount = Number($input.val());
  
    
    if(type=='p'){
        $input.val(Number(tCount)+1);
        
    }else{
        if(tCount > 1) $input.val(Number(tCount)-1);    
        }
}/**
 * 
 */