$(function() {
		
		
		 $(".customer-id, .customer-pwd").on("propertychange change keyup paste input", function() {
            
			if($('.customer-id').val() != '' && $('.customer-pwd').val() != '') {
				$('.login-ch').addClass('login-ready');
				$('.login-ch').attr('disabled', false);
			} else {
				
				$('.login-ch').removeClass('login-ready');
				$('.login-ch').attr('disabled', true);
			}
            
          });
           $(".company-id, .company-pwd").on("propertychange change keyup paste input", function() {
            
			if($('.company-id').val() != '' && $('.company-pwd').val() != '') {
				$('.login-ch').addClass('login-ready');
				$('.login-ch').attr('disabled', false);
			} else {
				
				$('.login-ch').removeClass('login-ready');
				$('.login-ch').attr('disabled', true);
			}
            
          });
		
		
		$('.go-mypage').click(function() {

			$('.login-modal').toggleClass('active');

		})
		
		/*$('').click(function() {
			$('.login-modal').removeClass('active');
		})
		*/
		
		$('.customer').click(function() {
		
			$(this).addClass('click1');
			$(this).removeClass('out');
			
			$('.company').addClass('out');
			$('.company').removeClass('click1');
			
			$('.customer-form').css('display', 'block');
			$('.company-form').css('display', 'none');
			
		})
		
		$('.company').click(function() {
		
			$(this).addClass('click1');
			$(this).removeClass('out');
			
			$('.customer').addClass('out');
			$('.customer').removeClass('click1');
			
			$('.customer-form').css('display', 'none');
			$('.company-form').css('display', 'block');
		})
		
		/*$('html').click(function(e) { 
		if(!$(e.target).hasClass("login-modal") && !$(e.target).hasClass("member")) {
			 
			 $('.login-modal').removeClass('active');
			
		}*/
});