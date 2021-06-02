$(function() {
  
  $(".edu-button").click(function() {
    
    $(this).addClass("button-click");
    $(this).siblings().removeClass("button-click");
  
});



// 셀렉스박스
$(".select-ul").click(function() {
  
  var is_open = $(this).hasClass("open");
  if (is_open) {
    $(this).removeClass("open");
$(".fa-angle-up").css('display', 'none');
    $(".fa-angle-down").css('display', 'block');
  } else {
    $(this).addClass("open");
$(".fa-angle-down").css('display', 'none');
    $(".fa-angle-up").css('display', 'block');
  }

});

// 선택했을때 선택한게 올라가고 꺼짐
$(".job-select-ul li").click(function() {

  var selected_value = $(this).html();
  var first_li = $(".job-select-ul li:first-child").html();

  $(".job-select-ul li:first-child").html(selected_value);
  $(this).html(first_li);
  
  
});

$(".edu-select-ul li").click(function() {

  var selected_value = $(this).html();
  var first_li = $(".edu-select-ul li:first-child").html();

  $(".edu-select-ul li:first-child").html(selected_value);
  $(this).html(first_li);
  
  
});

$(".army-select-ul li").click(function() {

  var selected_value = $(this).html();
  var first_li = $(".army-select-ul li:first-child").html();

  $(".army-select-ul li:first-child").html(selected_value);
  $(this).html(first_li);
  
  
});

$(".hope-select-ul li").click(function() {

  var selected_value = $(this).html();
  var first_li = $(".hope-select-ul li:first-child").html();

  $(".hope-select-ul li:first-child").html(selected_value);
  $(this).html(first_li);
  
  
});

$(".pofol-select-ul li").click(function() {

  var selected_value = $(this).html();
  var first_li = $(".pofol-select-ul li:first-child").html();

  $(".pofol-select-ul li:first-child").html(selected_value);
  $(this).html(first_li);
  
  
});

// 밖에 눌렀을때 꺼지게
$(document).mouseup(function(event) {

  var target = event.target;
  var select = $(".select-ul");

  if (!select.is(target) && select.has(target).length === 0) {
    select.removeClass("open");
  }
  
  $(".fa-angle-down").css('display', 'block');
  $(".fa-angle-up").css('display', 'none');

});

  });

// 경력사항 추가 삭제
$(function() {
  
  $(".career-add-1").click(function() {
    
    $(".career-2").css('display','block');
    $(".career-add-1").css('display','none');
  
});
  
  $(".career-add-2").click(function() {
    
    $(".career-3").css('display','block');
    $(".career-add-2").css('display','none');
    $(".career-remove-2").css('display','none');
  
});
  
  $(".career-remove-2").click(function() {
    
    $(".career-2").css('display','none');
    $(".career-add-1").css('display','block');
    
  });
  
    $(".career-remove-3").click(function() {
    
    $(".career-remove-2").css('display','block');
    $(".career-3").css('display','none');
    $(".career-add-2").css('display','block');
    
  });
  });

// 자격면허 추가 삭제
$(function() {
  
  $(".licen-add-1").click(function() {
    
    $(".licen-2").css('display','block');
    $(".licen-add-1").css('display','none');
  
});
  
  $(".licen-add-2").click(function() {
    
    $(".licen-3").css('display','block');
    $(".licen-remove-2").css('display','none');
    $(".licen-add-2").css('display','none');
  
});
  
  $(".licen-remove-2").click(function() {
    
    $(".licen-2").css('display','none');
    $(".licen-add-1").css('display','block');
  
  });
  
    $(".licen-remove-3").click(function() {
    
    $(".licen-remove-2").css('display','block');
    $(".licen-3").css('display','none');
    $(".licen-add-2").css('display','block');
    
  });
  
    $(".licen-add-3").click(function() {
    
    $(".licen-4").css('display','block');
    $(".licen-remove-3").css('display','none');
    $(".licen-add-3").css('display','none');
  
});
  
  $(".licen-remove-3").click(function() {
    
    $(".licen-3").css('display','none');
    
  });
  
    $(".licen-remove-4").click(function() {
    
    $(".licen-remove-3").css('display','block');
    $(".licen-4").css('display','none');
    
  });
  
    $(".licen-add-4").click(function() {
    
    $(".licen-5").css('display','block');
    $(".licen-remove-4").css('display','none');
    $(".licen-add-4").css('display','none');
  
});
  
  $(".licen-remove-4").click(function() {
    
    $(".licen-4").css('display','none');
    
  });
  
    $(".licen-remove-5").click(function() {
    
    $(".licen-remove-4").css('display','block');
    $(".licen-5").remove();
    
  });
  });

// 스크롤 이동하자
$(function() {

  $(".job-button").click(function() {
    
    var jobscr = $(".job-info .sub-title").offset().top;
    
    $( 'html, body' ).stop().animate(
      { scrollTop : jobscr - 100 }, 500)
    
});
  
  $(".edu-button").click(function() {
    
    var eduscr = $(".edu-info .sub-title").offset().top;
    
    $( 'html, body' ).stop().animate(
      { scrollTop : eduscr - 100 }, 500)
    
});
  
  $(".career-button").click(function() {
    
    var careerscr = $(".career-info .sub-title").offset().top;
    
    $( 'html, body' ).stop().animate(
      { scrollTop : careerscr - 100 }, 500)
    
});
  
  $(".licen-button").click(function() {
    
    var licenscr = $(".licen-info .sub-title").offset().top;
    
    $( 'html, body' ).stop().animate(
      { scrollTop : licenscr - 100 }, 500)
    
});
  
  $(".skill-button").click(function() {
    
    var skillscr = $(".skill-info .sub-title").offset().top;
    
    $( 'html, body' ).stop().animate(
      { scrollTop : skillscr - 100 }, 500)
    
});
  
  $(".army-button").click(function() {
    
    var armyscr = $(".army-info .sub-title").offset().top;
    
    $( 'html, body' ).stop().animate(
      { scrollTop : armyscr - 100 }, 500)
    
});
  
  $(".hope-button").click(function() {
    
    var hopescr = $(".hope-info .sub-title").offset().top;
    
    $( 'html, body' ).stop().animate(
      { scrollTop : hopescr - 100 }, 500)
    
});
  
  $(".pofol-button").click(function() {
    
    var pofolscr = $(".pofol-info .sub-title").offset().top;
    
    $( 'html, body' ).stop().animate(
      { scrollTop : pofolscr - 100 }, 500)
    
});
  });