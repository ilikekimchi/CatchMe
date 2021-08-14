$(function() {
  
  $(".pay-li").click(function() {
    
    $(this).css('color', '#42495b');
    $(this).parent().css('border', '1px solid #42495b');
    $(".pay-table").css('display', 'block');
    $(".paid-table").css('display', 'none');
    
    $(".paid-li").css('color', '#bfbfbf');
    $(".paid-li").parent().css('border', '1px solid #bfbfbf');
  
});
  
  $(".paid-li").click(function() {
    
    $(this).css('color', '#42495b');
    $(this).parent().css('border', '1px solid #42495b');
    $(".paid-table").css('display', 'block');
    $(".pay-table").css('display', 'none');
    
    $(".pay-li").css('color', '#bfbfbf');
    $(".pay-li").parent().css('border', '1px solid #bfbfbf');
  
});
  
    $(".btn-1").click(function() {
    $(".nth-1 > a").removeClass('checked');
    $(this).addClass('checked');
    $(".price-click").html("5,500");
  
});
  
  $(".btn-2").click(function() {
    $(".nth-1 > a").removeClass('checked');
    $(this).addClass('checked');
    $(".price-click").html("11,000");
  
});
  
  $(".btn-3").click(function() {
    $(".nth-1 > a").removeClass('checked');
    $(this).addClass('checked');
    $(".price-click").html("22,000");
  
});
  
  $(".btn-4").click(function() {
    $(".nth-1 > a").removeClass('checked');
    $(this).addClass('checked');
    $(".price-click").html("33,000");
  
});
  
  $(".btn-5").click(function() {
    $(".nth-1 > a").removeClass('checked');
    $(this).addClass('checked');
    $(".price-click").html("55,000");
  
});
  
  $('a[href="#"]').click(function(e) {
	e.preventDefault();
});
  
    $(".kakao").click(function() {

    $("body").addClass('kakao-btn');
    var div = $('.kakao-pay');
div.css("position", "absolute");
div.css("top", Math.max(0, (($(window).height() - div.outerHeight()) / 2) + $(window).scrollTop()) + "px");
div.css("left", Math.max(0, (($(window).width() - div.outerWidth()) / 2) + $(window).scrollLeft()) + "px");
    $(".kakao-pay").css('display','block');
    $('.kakao-pay').fadeIn(200);

  
});
  
		 $(".tel, .year").on("input", function() {
            
			if($('.tel').val().length >= 11 &&            $('.year').val().length >=6) {
				$('.pay-btn button').addClass('ready');
				$('.pay-btn button').attr('disabled', false);
        $('.pay-btn button').css('color', '#333');
        $('.pay-btn button').css('cursor', 'pointer');
			} else {
				
				$('.pay-btn button').removeClass('ready');
				$('.pay-btn button').attr('disabled', true);
			}
            
          });
  
    $(".kakao-tap-1").click(function() {
    $(".kakao-tap-2").removeClass('kakao-click');
    $(this).addClass('kakao-click');
    $(".kakao-qr").css('display','block');
    $(".kakao-msg").css('display','none');
    $(".kakao-send").css('display','none');
  
});
  
    $(".kakao-tap-2").click(function() {
    $(".kakao-tap-1").removeClass('kakao-click');
    $(this).addClass('kakao-click');
    $(".kakao-qr").css('display','none');
    $(".kakao-msg").css('display','block');
    $(".kakao-send").css('display','none');
  
});
  
  $(".kakao-tap-3").click(function() {

    $('.kakao-pay').addClass('kakao-pay-cancle');
    $(".cancle-btn").css('display','block');
    $('.cancle-btn').fadeIn(200);
    
  });
  
    $(".kakao-msg .pay-btn").click(function() {
    
    $(".kakao-msg").css('display','none');
    $(".kakao-send").css('display','block');
    
  });
  
    $(".cancle-btn .no").click(function() {
    
    $(".kakao-pay").removeClass('kakao-pay-cancle');
    $(".cancle-btn").css('display','none');
    
  });
  
    $(".cancle-btn .yes").click(function() {
    
  var div = $('.pay-err');
div.css("position", "absolute");
div.css("top", Math.max(0, (($(window).height() - div.outerHeight()) / 2) + $(window).scrollTop()) + "px");
div.css("left", Math.max(0, (($(window).width() - div.outerWidth()) / 2) + $(window).scrollLeft()) + "px");
    $(".kakao-pay").removeClass('kakao-pay-cancle');
    $(".cancle-btn").css('display','none');
    $(".kakao-pay").css('display','none');
    $(".pay-err").css('display','block');
    
  });
  
   $(".err-btn").click(function() {
    
    $(".pay-err").css('display','none');
    $("body").removeClass('kakao-btn');
    
  });
  
  });




