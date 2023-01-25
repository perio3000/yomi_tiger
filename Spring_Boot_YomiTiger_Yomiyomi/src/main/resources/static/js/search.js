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