// 뭐예요 얘로 선택하는거 어케해요.

$('#year li > a').on('click', function() {
    // 버튼에 선택된 항목 텍스트 넣기 
    $('#yearDropdown').text($(this).text());
        
    // 선택된 항목 값(value) 얻기
    alert($(this).attr('value'));
});