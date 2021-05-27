$(function() {

	$('#customerId').focus(function() {
		
		$('.email-ph').css('opacity', '0');
		$('.email-ph-t').css('opacity', '1');
		
		$('#id-msg').html("이메일형식의 아이디만 사용 가능");
		$('#id-msg').css('color', '#a4a3a3');
	})	
	
	$('#customerId').blur(function() {
		
		if($('#customerId').val() == '') {
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
	
	$('#nnm').focus(function() {
		
		$('.nnm-ph').css('opacity', '0');
		$('.nnm-ph-t').css('opacity', '1');
	})
	
	
	$('#nnm').blur(function() {
		
		if($('#nnm').val() == '') {
			$('.nnm-ph').css('opacity', '1');
			$('.nnm-ph-t').css('opacity', '0');
		}
	})
	
	
	$('.next').click(function() {
		$('.second').css('display', 'none');
		$('.third').css('display', 'block');
		
		$('.next').css('display', 'none');
		$('.signup-btn').css('display', 'block');

		$('#login-info').css({'border':"3px solid #4c4c4c", "color":"#4c4c4c"});
		$('#profile').css({'border': "3px solid #4876ef", "color":"#4876ef"});
	})
})