$(document).on("click",".skill-remove", function() {
  $(this).parent().remove();
});

$(document).ready(function() {
  $(".skill-add").click(function() {
  
    var res = $(this).parent().children().eq(1).val();   
    
    var ul = $(".skill .skill-list ul");
    
    ul.append("<li class='skill-li'>" + res + "<button class='skill-remove'></button>" + "</li>");
    
    $(".skill_add").val('');
    
  });
});


$(function () {
  
  function addArea(target, area1, area_code, position) {
    let html = "<li class='area1' value='" + area_code + "'>" + area1 +"</li>";
       
       if(position)
          $(target).append(html);
       else
          $(target).prepend(html);

}

function addArea2(target, area2, area_seq, position) {
    let html = "<li class='area2' value='" + area_seq + "'>" + area2 +"</li>";
       
       if(position)
          $(target).append(html);
       else
          $(target).prepend(html);

}

function addJob(target, job_large, job_code, position) {
    let html = "<li class='job-search-menu' value='" + job_code + "'>" + job_large +"</li>";
       
       if(position)
          $(target).append(html);
       else
          $(target).prepend(html);

}

function addJobSmall(target, job_small, job_seq, position) {
    let html = "<li class='job-small-search-menu' value='" + job_seq + "'>" + job_small +"</li>";
       
       if(position)
          $(target).append(html);
       else
          $(target).prepend(html);
}

  $('.area-list').click(function () {
  
    $('.area-list').css('visibility', 'visible');
 
 var data = {
    area1 : "area1",
    areaCode : "area_code"
 }
 
 $.ajax({
    type: "GET",
    url: "/area",
    contentType: "application/json",
    success: function(result) {
       
       
       if(result.length < 1) {
          $(".area-list").html("<li class='area-search-menu'>등록된 지역이 없습니다</li>");
       } else {
          $(".area-list").empty();
          
          result.forEach(element => {
             addArea($(".area-list"), element.area1, element.areaCode, true);
          });
       }
 
    },
    error: function() {
       alert('AJAX 실패');
    }
 });
 
})

$(document).on("click", ".area1", function(){
 
 let areaCode = $(this).val();
 
  console.log(areaCode);
  
 $.ajax({
    type: "POST",
    url: "/area",
    contentType: "application/json",
    data: JSON.stringify(areaCode),
    success: function(result) {
      
      console.log(result);



       if(result.length < 1) {
          $(".area2-list").html("<li class='area2'>등록된 지역이 없습니다</li>");
       } else {
          $(".area2-list").empty();
          
          result.forEach(element => {
             addArea2($(".area2-list"), element.area2, element.areaSeq, true);
          });
       }
 
    },
    error: function() {
       alert('AJAX 실패');
    }
 });
 
})



  $('.job-list').click(function () {

    $('.job-list').css('visibility', 'visible');

//  $('.search-area').css('height', '406px');
//  $('.region-search').css('color', '#4c4c4c');
//  $('.job-search').css('color', '#4876ef');
 
//  $('.job-list').css('display','block');
//  $('.area-list').css('display','none');
//  $('.area2-list').css('display','none');
 
 var data = {
    jobLarge : "job_large",
    jobCode : "job_code"
 }
 
 console.log(data);
 
 $.ajax({
    type: "GET",
    url: "/job",
    contentType: "application/json",
    success: function(result) {
       
       console.log(result);
       
       if(result.length < 1) {
          $(".job-list").html("<li class='job-search-menu'>등록된 직업이 없습니다</li>");
       } else {
         $(".job-list").empty();
          
          result.forEach(element => {
            addJob($(".job-list"), element.jobLarge, element.jobCode, true);

          });
        
       }
 
    },
    error: function() {
       alert('AJAX 실패');
    }
 });
})

$(document).on("click", ".job-search-menu", function(){
 
 var jobClick = $(this);

 $('.job-search-menu').not(jobClick).css('color','#4c4c4c');
 
 let jobCode = $(this).val();
 
 $.ajax({
    type: "POST",
    url: "/job",
    contentType: "application/json",
    data: JSON.stringify(jobCode),
   success: function (result) {
      
       
       if(result.length < 1) {
          $(".job-small-list").html("<li class='area-search-menu'>등록된 직무가 없습니다</li>");
       } else {
          $(".job-small-list").empty();
          
          result.forEach(element => {
             addJobSmall($(".job-small-list"), element.jobSmall, element.jobSeq, true);
          });
       }
 
    },
    error: function() {
       alert('AJAX 실패');
    }
 });
 
})
 

  $(".edu-button").click(function() {
    
    $(this).addClass("button-click");
    $(this).siblings().removeClass("button-click");
  
  });

  $(".reset").click(function () {
    sessionStorage.clear();
  });
  


  $(".test").click(function () {
        
    for (let i = 0; i < sessionStorage.length; i++) {

      let key = sessionStorage.key(i);

      alert(`${key} : ${sessionStorage.getItem(key)}`);
    }

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
  
  $(".job-small-list").click(function () {
    $('.job-small-list').css('visibility', 'visible');
  });

  $(".area2-list").click(function () {
    $('.area2-list').css('visibility', 'visible');
  });

// 선택했을때 선택한게 올라가고 꺼짐  잡리스트
$(document).on("click", ".job-list li", function() {

    var selected_value = $(this).html();

  $(".job-list-view").html(selected_value);
  
  $('.job-list').css('visibility', 'hidden');

  var li_code = "";

  li_code = $(this).val();
  
  $(".jobCode").val(li_code);
  $(".jobLarge").val(selected_value);

});
  
  $(document).on("click", ".job-small-list li", function() {

    var selected_value = $(this).html();

    $(".job-small-list-view").html(selected_value);

    $('.job-small-list').css('visibility', 'hidden');

    li_code = $(this).val();
  
    $(".jobSeq").val(li_code);
    $(".jobSmall").val(selected_value);
  
  });
  
// 지역 리스트
  $(document).on("click", ".area-list li", function() {

    var selected_value = $(this).html();

  $(".area-list-view").html(selected_value);
  
  $('.area-list').css('visibility', 'hidden');

  var li_code = "";

  li_code = $(this).val();
  
  $(".areaCode").val(li_code);
  $(".area1").val(selected_value);

});
  
  $(document).on("click", ".area2-list li", function() {

    var selected_value = $(this).html();

    $(".area2-list-view").html(selected_value);

    $('.area2-list').css('visibility', 'hidden');

    li_code = $(this).val();

    console.log(li_code);
  
    $(".areaSeq").val(li_code);
    $(".area2").val(selected_value);
  
});

$(".edu-select-ul li").click(function() {

  var selected_value = $(this).html();
  var first_li = $(".edu-select-ul li:first-child").html();

  $(".edu-select-ul li:first-child").html(selected_value);
  $(this).html(first_li);

  $(".profileSchoolState").val(selected_value);
  
  
});

$(".army-select-ul li").click(function() {

  var selected_value = $(this).html();
  var first_li = $(".army-select-ul li:first-child").html();

  $(".army-select-ul li:first-child").html(selected_value);
  $(this).html(first_li);
  
  $(".profileArmy").val(selected_value);
  
});

$(".hope-select-ul li").click(function() {

  var selected_value = $(this).html();
  var first_li = $(".hope-select-ul li:first-child").html();

  $(".hope-select-ul li:first-child").html(selected_value);
  $(this).html(first_li);

  var li_value = "";

  if (selected_value == "이력서 비공개") {
    li_value = 1;
  } else if (selected_value == "적극적인 이직") {
    li_value = 2;
  } else if (selected_value == "유연한 이직") {
    li_value = 3;
  }

    $(".profileState").val(li_value);
  
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