/**
 * 
 */


let spanOption = document.querySelectorAll(".nav-item a");

spanOption.forEach(function (span) {
	span.addEventListener("click", function (e) {

		//Remove class active
		e.target.parentElement.querySelectorAll(".active").forEach(function (element) {
			element.classList.remove("active");
		});
		//Add class active
		e.target.classList.add("active");

		if (e.target.classList.contains("search-total")) {

			document.querySelectorAll(".find-id-pw form").forEach(function (element) {
				element.classList.remove("active");
			});

			document.querySelector(".find-id-form").classList.add("active");

		} else {

			document.querySelectorAll(".find-id-pw form").forEach(function (element) {
				element.classList.remove("active");
			});

			document.querySelector(".find-pw-form").classList.add("active");
		}
	})
})

//아코디언 기능
function collapse(element) {
	var before = document.getElementsByClassName("search-active")[0]               // 기존에 활성화된 버튼
	if (before && document.getElementsByClassName("search-active")[0] != element) {  // 자신 이외에 이미 활성화된 버튼이 있으면
		before.nextElementSibling.style.maxHeight = null;   // 기존에 펼쳐진 내용 접고
		before.classList.remove("search-active");                  // 버튼 비활성화
	}
	element.classList.toggle("search-active");         // 활성화 여부 toggle

	var content = element.nextElementSibling;
	if (content.style.maxHeight != 0) {         // 버튼 다음 요소가 펼쳐져 있으면
		content.style.maxHeight = null;         // 접기
	} else {
		content.style.maxHeight = content.scrollHeight + "px";  // 접혀있는 경우 펼치기
	}
}