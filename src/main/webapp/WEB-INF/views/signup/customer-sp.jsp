<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="/js/signup.js" type="text/javascript"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
</head>
<body>
<!-- <button>을 쓰면 내 의도와 상관없이 submit 되어버림,고로 form태그 바깥으로 놔야함 --><!--안녕하세요 저는 카카오 맵 입니다-->
	<div>
            <form name="signupForm" method="post">
               <div>
                  <input type="text" name="customerId" id="customerId" onblur="confirmId()" placeholder="이메일">
                  <input type="hidden" name="id_confirm" value="">
                  <span id="id-msg"> </span>
                  
               </div>
               
               <div>
                  <input type="password" name="customerPw" id="pwd1" onblur="pwdChk1()" placeholder="암호">
                  <span id="pwd1-msg"></span>
               </div>
                              
               <div>
                  <input type="password" name="pwdChk" id="pwd2" onblur="pwdChk2()" placeholder="암호 재확인">
                  <span id="pwd2-msg"> </span>
               </div>         
            </form>
            <!-- form태그 바깥에 버튼을 두면 엔터키가 안먹힘 -->
            <div>
               <button onclick="submit()">회원가입</button>
            </div>
            <div class="back">뒤로가기</div>
         </div>
</body>
</html>