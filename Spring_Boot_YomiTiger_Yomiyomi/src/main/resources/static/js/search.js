/**
 * 
 */
//초기화 버튼
function resetbtn(){
	$("input[id='reset']").prop('checked', false);
}


//탭 이동
$(document).ready(function(){
	
	$('ul.tab>li').click(function(){
		var tab_id = $(this).attr('data-tab');

		$('ul.tab>li').removeClass('current');
		$('.tab-content').removeClass('current');

		$(this).addClass('current');
		$("#"+tab_id).addClass('current');
	})

});

//아코디언 기능
function collapse(element) {
	var before = document.getElementsByClassName("search-active")[0]               // 기존에 활성화된 버튼
	/*	if (before && document.getElementsByClassName("search-active")[0] != element) {  // 자신 이외에 이미 활성화된 버튼이 있으면
		before.nextElementSibling.style.maxHeight = null;   // 기존에 펼쳐진 내용 접고
		before.classList.remove("search-active");                  // 버튼 비활성화
	}
	element.classList.toggle("search-active");         // 활성화 여부 toggle
	 */
	var content = element.nextElementSibling;
	if (content.style.maxHeight != 0) {         // 버튼 다음 요소가 펼쳐져 있으면
		content.style.maxHeight = null;         // 접기
	} else {
		content.style.maxHeight = content.scrollHeight + "px";  // 접혀있는 경우 펼치기
	}
}

//좋아요
function addLike(){
	
	const pushHeartBtn = document.querySelectorAll(".heartBtn");

	for(const btns of pushHeartBtn){
		btns.addEventListener('click', function(event){
			btns.innerHTML ='<i class="fa-solid fa-heart"></i>';
			btns.style.color ='#ff7d7d';
		})
	}
}