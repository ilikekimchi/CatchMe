$(function() {
		
		let id;
		let pwd;
		
		 $("#id, #pwd").on("propertychange change keyup paste input", function() {
            
			if($('#id').val() != '' && $('#pwd').val() != '') {
				$('.login-ch').addClass('ready');
			} else {
				
				$('.login-ch').removeClass('ready');
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
			
		})
		
		$('.company').click(function() {
		
			$(this).addClass('click');
			$(this).removeClass('out');
			
			$('.customer').addClass('out');
			$('.customer').removeClass('click');
			
		})

	})