$(document).ready(function() {
	$("input:radio[name=category]").click(function() {
		$("#searchForm").submit();
	});
	
	$("#sortDropdown").change(function() {
		$("#searchForm").submit();
	});
	
	$("#yearDropdown").change(function() {
		$("#searchForm").submit();
	});
	
	$("#monthDropdown").change(function() {
		$("#searchForm").submit();
	});
	
	$("#viewDropdown").change(function() {
		$("#searchForm").submit();
	});
});
 
 