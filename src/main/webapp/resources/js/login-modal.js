$(function() {
		
		
		 $(".customer-id, .customer-pwd").on("propertychange change keyup paste input", function() {
            
			if($('.customer-id').val() != '' && $('.customer-pwd').val() != '') {
				$('.login-ch').addClass('ready');
				$('.login-ch').attr('disabled', false);
			} else {
				
				$('.login-ch').removeClass('ready');
				$('.login-ch').attr('disabled', true);
			}
            
          });
           $(".company-id, .company-pwd").on("propertychange change keyup paste input", function() {
            
			if($('.company-id').val() != '' && $('.company-pwd').val() != '') {
				$('.login-ch').addClass('ready');
				$('.login-ch').attr('disabled', false);
			} else {
				
				$('.login-ch').removeClass('ready');
				$('.login-ch').attr('disabled', true);
			}
            
          });
		
		
		$('.login').click(function() {

			$('.login-modal').toggleClass('active');

		})
		
		$('.container').click(function() {
			$('.login-modal').removeClass('active');
		})
		
		$('.customer').click(function() {
		
			$(this).addClass('click');
			$(this).removeClass('out');
			
			$('.company').addClass('out');
			$('.company').removeClass('click');
			
			$('.customer-form').css('display', 'block');
			$('.company-form').css('display', 'none');
			
		})
		
		$('.company').click(function() {
		
			$(this).addClass('click');
			$(this).removeClass('out');
			
			$('.customer').addClass('out');
			$('.customer').removeClass('click');
			
			$('.customer-form').css('display', 'none');
			$('.company-form').css('display', 'block');
		})

	})