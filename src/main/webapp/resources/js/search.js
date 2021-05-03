$(function() {
	
	$('.region-search').click(function() {
		
		$('.region').css('display', 'block');
		
	})
	
	$('.job-search').click(function() {
		
		$('.job').css('display', 'block');
		
	})
	
	$('html').click(function(e) { 
		if(!$(e.target).hasClass("region") && !$(e.target).hasClass("region-search") && !$(e.target).hasClass("job-search")) {
			 
			$('.region').css('display', 'none');
			
			$('.job').css('display', 'none');
			
		}
	 });

	/*$('.search-area input').focus(function() {
		
		$('.search-area').css('border', '1px solid #4876ef');
		
	})
	
	$('.search-area input').blur(function() {
		
		$('.search-area').css('border', '1px solid #bfbfbf');
		
	})*/

	
})