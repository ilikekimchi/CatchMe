$(function() {

	$('#companyId').focus(function() {
		
		$('.email-ph').css('opacity', '0');
		$('.email-ph-t').css('opacity', '1');
		
		$('#id-msg').html("이메일형식의 아이디만 사용 가능");
		$('#id-msg').css('color', '#a4a3a3');
	})	
	
	$('#companyId').blur(function() {
		
		if($('#companyId').val() == '') {
			$('.email-ph').css('opacity', '1');
			$('.email-ph-t').css('opacity', '0');
		}
	})
	
	
})