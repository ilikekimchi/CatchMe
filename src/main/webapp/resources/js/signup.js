// 1 == '1' => value(값)이 같으면 true, |  1 === '1' => type과 value 가 같아야 하므로 false
   // confirmId 에서 사용한 코드들 = 에이젝, 즉 에이젝을 사용함
   function confirmId(){

      const form = document.signupForm;
      
      if(form.customerId.value == ""){
         $('#id-msg').html("필수 입력 사항입니다.");
         return false;
      }

      var chk = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;

      if(!chk.test(form.customerId.value)){
         $('#id-msg').html("올바르지 않은 형식입니다.");
         $('#customerId').css('border', '1px solid red');
         return false;
      }

      const xhr = new XMLHttpRequest();
      
      // AJAX(페이지 전체가 아니라 필요한 부분만을 갱신할 수 있도록 서버에 요청하는것) 비동기적 **
      // 비동기방식(true),에이젝의 제대로된 성능을 내려면 비동기 방식 채용
      xhr.open("GET", "confirmId?customerId=" + form.customerId.value, true);  
      
      xhr.onreadystatechange = function() {
         // DONE(처리가 됨)인 상태가 된다면..
         if(xhr.readyState == XMLHttpRequest.DONE) {
            
            // AJAX 요청이 정상적으로 처리되었는지 아닌지만을 검사하기 위해 응답 코드가 200 인지 확인
            // 200(성공): 서버가 요청을 제대로 처리했다는 뜻이다. 
            if(xhr.status == 200) {

               if(xhr.responseText == 'OK') { 
                  $("#id-msg").html("");
                  $('#customerId').css('border', '1px solid green');
                  form.id_confirm.value = form.customerId.value
               } else {
                  $("#id-msg").html("사용할 수 없는 이메일입니다.");
                  $('#customerId').css('border', '1px solid red');
               }
            }
         }   
      };
      xhr.send();   
   }

   // 암호 검증

   function pwdChk1(){
      const form = document.signupForm;
      var chk = /^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{8,20}$/;
      
      if(form.customerPw.value == ""){
         $('#pwd1-msg').html("필수 입력 사항입니다.");
         return false;
      }

      if(!chk.test(form.customerPw.value)){
         $("#pwd1-msg").html("8~20내 문자, 숫자, 특수문자를 혼합하여 사용하세요.");
         $('#pwd1').css('border', '1px solid red');
      }else{
         $("#pwd1-msg").html("");
         $('#pwd1').css('border', '1px solid green');
      }   
   }

   function pwdChk2(){
      const form = document.signupForm;

      if(form.pwdChk.value == ""){
         $('#pwd2-msg').html("필수 입력 사항입니다.");
         return false;
      }

      if(form.customerPw.value != form.pwdChk.value){
         $('#pwd2').css('border', '1px solid red');
         $("#pwd2-msg").html("암호가 불일치 합니다.");

      }else{
         $('#pwd2').css('border', '1px solid green');
         $("#pwd2-msg").html("");
      }
            
   }

   // 벨리데이션(검증)하는 코드들
   function submit() {
      const form = document.signupForm;

      if(form.customerId.value == "") {
         $('#id-msg').html("필수 입력 사항입니다.");
         $('#customerId').css('border', '1px solid red');
         form.customerId.focus();
         return;
      }
      
      if(form.customerId.value != form.id_confirm.value) {
         $('#id-msg').html("이메일 중복을 확인하세요.");
         $('#customerId').css('border', '1px solid red');
         return;
      }
      
      if(form.customerPw.value == "") {
         $("#pwd1-msg").html("필수 입력 사항입니다.");
         $('#pwd1').css('border', '1px solid red');
         form.customerPw.focus();
         return;
      }

      if(form.pwdChk.value == "") {
         $('#pwd2').css('border', '1px solid red');
         $("#pwd2-msg").html("암호를 재확인 하세요.");
         form.pwdChk.focus();
         return;
      }
      
      if(form.customerPw.value != form.pwdChk.value) {
         $('#pwd2').css('border', '1px solid red');
         $("#pwd2-msg").html("암호가 서로 불일치 합니다.");
         form.pwdChk.focus();
         return;
      }
      
      form.submit();
	}