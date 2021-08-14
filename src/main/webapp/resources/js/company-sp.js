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
	
	$('#pwd1').focus(function() {
		
		$('.pwd-ph').css('opacity', '0');
		$('.pwd-ph-t').css('opacity', '1');
		
		$('#pwd1-msg').html("8~16자리 영문 대소문자, 숫자, 특수문자 중 3가지 이상 조합");
		$('#pwd1-msg').css('color', '#a4a3a3');
	})
	
	
	$('#pwd1').blur(function() {
		
		if($('#pwd1').val() == '') {
			$('.pwd-ph').css('opacity', '1');
			$('.pwd-ph-t').css('opacity', '0');
		}
	})
	
	$('#pwd2').focus(function() {
		
		$('.pwd-cf-ph').css('opacity', '0');
		$('.pwd-cf-ph-t').css('opacity', '1');
	})
	
	
	$('#pwd2').blur(function() {
		
		if($('#pwd2').val() == '') {
			$('.pwd-cf-ph').css('opacity', '1');
			$('.pwd-cf-ph-t').css('opacity', '0');
		}
	})
	
	$('#name').focus(function() {
		
		$('.name-ph').css('opacity', '0');
		$('.name-ph-t').css('opacity', '1');
	})
	
	
	$('#name').blur(function() {
		
		if($('#name').val() == '') {
			$('.name-ph').css('opacity', '1');
			$('.name-ph-t').css('opacity', '0');
		}
	})
	
})