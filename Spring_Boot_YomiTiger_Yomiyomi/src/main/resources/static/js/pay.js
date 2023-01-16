const collapseElementList = document.querySelectorAll('.collapse')
const collapseList = [...collapseElementList].map(collapseEl => new bootstrap.Collapse(collapseEl))

$(".accordion-item .accordion-header").click(function(){
	$(this).toggleClass('active')
	/*$(this).addClass("active");
	$(this).siblings(".accordion-item .accordion-header").removeClass("active");
	$(this).siblings(".accordion-item .accordion-collapse").stop().slideUp();*/
	$(this).next().stop().slideToggle();
});