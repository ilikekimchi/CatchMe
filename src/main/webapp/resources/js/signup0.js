  // 1 == '1' => value(값)이 같으면 true, |  1 === '1' => type과 value 가 같아야 하므로 false
   // confirmId 에서 사용한 코드들 = 에이젝, 즉 에이젝을 사용함
   function confirmId0(){
      // 에이젝을 사용하기 위한 객체생성
      const form = document.signupForm0;
      
      if(form.companyId.value == ""){
         $('#pid-msg').html("필수 입력 사항입니다.");
         return false;
      }

      var chk = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
      if(!chk.test(form.customerId.value)){
         $('#pid-msg').html("올바르지 않은 형식입니다.");
         $('#companyId').css('border', '1px solid red');
         return false;
      }

      const xhr = new XMLHttpRequest();
      
      // AJAX(페이지 전체가 아니라 필요한 부분만을 갱신할 수 있도록 서버에 요청하는것) 비동기적 **
      // 비동기방식(true),에이젝의 제대로된 성능을 내려면 비동기 방식 채용
      xhr.open("GET", "confirmId0?companyId=" + form.companyId.value, true);  
      
      xhr.onreadystatechange = function() {
         // DONE(처리가 됨)인 상태가 된다면..
         if(xhr.readyState == XMLHttpRequest.DONE) {
            
            // AJAX 요청이 정상적으로 처리되었는지 아닌지만을 검사하기 위해 응답 코드가 200 인지 확인
            // 200(성공): 서버가 요청을 제대로 처리했다는 뜻이다. 
            if(xhr.status == 200) {
               if(xhr.responseText == 'OK') { 
                  $("#pid-msg").html("");
                  $('#companyId').css('border', '1px solid green');
                  form.id_confirm0.value = form.companyId.value;
               } else {
                  $("#pid-msg").html("사용할 수 없는 이메일입니다.");
                  $('#companyId').css('border', '1px solid red');
               }
            }
         }   
      };      
      xhr.send();   
   }
   
   function pwdChk1(){
      const form = document.signupForm;
      var chk = /^[a-zA-Z0-9~!@#$%^&*()_+|<>?:{}]{8,20}$/;

      if(form.companyPw.value == ""){
         $('#ppwd1-msg').html("필수 입력 사항입니다.");
         return false;
      }

      if(!chk.test(form.companyPw.value)){
         $("#ppwd1-msg").html("8~20내 문자, 숫자, 특수문자를 혼합하여 사용하세요.");
         $('#companyPw').css('border', '1px solid red');
      }else{
         $("#ppwd1-msg").html("");
         $('#companyPw').css('border', '1px solid green');
      }   
   }

   function pwdChk2(){
      const form = document.signupForm;

      if(form.passwd_confirm0.value == ""){
         $('#ppwd2-msg').html("필수 입력 사항입니다.");
         return false;
      }

      if(form.companyPw.value != form.passwd_confirm0.value){
         $('#passwd_confirm0').css('border', '1px solid red');
         $("#ppwd2-msg").html("암호가 불일치 합니다.");

      }else{
         $('#passwd_confirm0').css('border', '1px solid green');
         $("#ppwd2-msg").html("");
      }
            
   }


   // 벨리데이션(검증)하는 코드들
   function submit() {
      const form = document.signupForm0;
      
      if(form.companyId.value != form.id_confirm0.value) {
         alert('아이디 중복확인을 하세요');
         return;
      }
      
      if(form.companyId.value == "") {
         alert('아이디를 입력 해 주세요');
         form.companyId.focus();
         return;
      }
      
      if(form.companyPw.value == "") {
         alert('비밀번호를 입력 해 주세요');
         form.companyPw.focus();
         return;
      }
      if(form.passwd_confirm0.value == "") {
         alert('비밀번호 재확인을 입력 해 주세요');
         form.passwd_confirm0.focus();
         return;
      }
      
      if(form.companyPw.value != form.passwd_confirm0.value) {
         alert('비밀번호가 일치하지 않습니다');
         form.passwd_confirm0.value = "";
         form.passwd_confirm0.focus();
         return;
      }
      if(form.companyName.value == "") {
         alert('기업명을 입력 해 주세요');
         form.companyName.focus();
         return;
      }
      if(form.companyRa.value == "") {
         alert('대표자명을 입력 해 주세요');
         form.companyRa.focus();
         return;
      }
      if(form.companyTel.value == "") {
         alert('연락처를 입력 해 주세요');
         form.companyTel.focus();
         return;
      }
      if(form.companyMoney.value == "") {
         alert('연매출을 입력 해 주세요');
         form.companyMoney.focus();
         return;
      }
      if(form.companyScale.value == "") {
         alert('규모(사원 수)를 입력 해 주세요');
         form.companyScale.focus();
         return;
      }
      if(form.companyLocation.value == "") {
         alert('위치(주소)를 입력 해 주세요');
         form.companyLocation.focus();
         return;
      }
      if(form.companyWriting.value == "") {
         alert('한줄소개를 입력 해 주세요');
         form.companyWriting.focus();
         return;
      }
      form.submit();
   }