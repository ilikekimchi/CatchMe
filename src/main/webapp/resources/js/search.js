$(function() {
   
   function addArea(target, area1, area_code, position) {
         let html = "<li class='area' value='" + area_code + "'>" + area1 +"</li>";
            
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
   
   $('.region-search').click(function() {
      
      $('.search-area').css('height', '406px');
      $('.region-search').css('color', '#4876ef');
      $('.job-search').css('color', '#4c4c4c');
      
      $('.area-list').css('display','block');
      $('.job-list').css('display','none');
      $('.job-small-list').css('display','none');
      
      
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
   
   $(document).on("click", ".area", function(){
      
      $('.area2-list').css('display','block');
      
      var areaClick = $(this);
      
      $(areaClick).css('color','#4876ef');
      
      $('.area').not(areaClick).css('color','#4c4c4c');
      
      let areaCode = $(this).val();
      
      $.ajax({
         type: "POST",
         url: "/area",
         contentType: "application/json",
         data: JSON.stringify(areaCode),
         success: function(result) {
            
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
   
   $(document).on("click", ".area", function() {
   
      var area = $(this).text();
      
      $('.region-search').text(area);
      
   })
   
   $(document).on("click", ".area2", function() {
   
      var area2 = $(this).text();
      
      $('.region-search').css('top','11.5px');
      
      $('.region-search').append(' · ');
      
      $('#region-value').val(area2);
   })
      
   
   $('.job-search').click(function() {
      
      $('.search-area').css('height', '406px');
      $('.region-search').css('color', '#4c4c4c');
      $('.job-search').css('color', '#4876ef');
      
      $('.job-list').css('display','block');
      $('.area-list').css('display','none');
      $('.area2-list').css('display','none');
      
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
      
      $('.job-small-list').css('display','block');
      
      var jobClick = $(this);
      
      $(jobClick).css('color','#4876ef');
      
      $('.job-search-menu').not(jobClick).css('color','#4c4c4c');
      
      let jobCode = $(this).val();
      
      $.ajax({
         type: "POST",
         url: "/job",
         contentType: "application/json",
         data: JSON.stringify(jobCode),
         success: function(result) {
            
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
   
   $(document).on("click", ".job-search-menu", function() {
   
      var job = $(this).text();
      
      $('.job-search').text(job);
      
   })
   
   $(document).on("click", ".job-small-search-menu", function() {
   
      var jobSmall = $(this).text();
      
      $('.job-search').css({'top' : '11.5px','left' : '207px'});
      
      $('.job-search').append(' · ');
      $('.job-search').append(jobSmall);
      
   })
   
   $('html').click(function(e) { 
      if(!$(e.target).hasClass("search-area") && !$(e.target).hasClass("region-search") && !$(e.target).hasClass("job-search") &&
          !$(e.target).hasClass("search-input") && !$(e.target).hasClass("area-list") && !$(e.target).hasClass("area") &&
          !$(e.target).hasClass("job-list") && !$(e.target).hasClass("job-search-menu") && !$(e.target).hasClass("area2-list") &&
           !$(e.target).hasClass("area2") && !$(e.target).hasClass("job-small-list") && !$(e.target).hasClass("job-small-search-menu")) {
          
         $('.search-area').css('height', '46px');
         $('.region-search').css('color', '#4c4c4c');
         $('.job-search').css('color', '#4c4c4c');
         
         $('.area-list').css('display','none');
         $('.area2-list').css('display','none');
         $('.job-list').css('display','none');
         $('.job-small-list').css('display','none');
         
      }
    });

   
});