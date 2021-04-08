$(function() {
	
	$('.region-search').click(function() {
		
		$('.region').css('display', 'block');
		
	})
	
	$('html').click(function(e) { 
		if(!$(e.target).hasClass("region") && !$(e.target).hasClass("region-search")) {
			 
			$('.region').css('display', 'none');
			
		}
	 });

	$('.search-area input').focus(function() {
		
		$('.search-area').css('border', '1px solid #4876ef');
		
	})
	
	$('.search-area input').blur(function() {
		
		$('.search-area').css('border', '1px solid #bfbfbf');
		
	})

	
})