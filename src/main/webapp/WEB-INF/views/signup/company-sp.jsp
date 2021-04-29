<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="/js/signup0.js" type="text/javascript"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
</head>
<body>
<!-- <button>을 쓰면 내 의도와 상관없이 submit 되어버림,고로 form태그 바깥으로 놔야함 -->
	<div class="company-form">
         <div>
            <h3>기업회원가입</h3>
         </div>
         <div>
            <form name="signupForm0" method="post">
               <div>
                  <input type="text" name="companyId" id="companyId" onblur="confirmId0()" placeholder="이메일">
                  <input name="id_confirm0" type="hidden" value="">
                  <span id="pid-msg"> </span>
               </div>
               <div>
                  <input type="password" name="companyPw" id="companyPw" placeholder="암호">
                  <span id="ppwd1-msg"> </span>
               </div>
               <div>
                  <input type="password" name="passwd_confirm0" id="passwd_confirm0" placeholder="암호 재확인">
                  <span id="ppwd2-msg"> </span>
               </div>
               <div>
                  <input type="text" name="companyName" placeholder="기업명">
                  <span id=""> </span>
               </div>
               <div>
                  <input type="text" name="companyRa" placeholder="대표자명">
                  <span id=""> </span>
               </div>
               <div>
                  <input type="text" name="companyTel" placeholder="연락처">
                  <span id=""> </span>
               </div>
               <div>
                  <input type="number" name="companyMoney" placeholder="연매출">원
                  <span id=""> </span>
               </div>
               <div>
                  <input type="number" name="companyScale">명
                  <span id=""> </span>
               </div>
               <div>
                  <input type="text" name="companyLocation" placeholder="주소">
                  <span id=""> </span>
               </div>
               <div>
                  <input type="text" name="companyHomePage" placeholder="홈페이지">
                  <span id=""> </span>
               </div>
               <div>
                  <input type="text" name="companyWriting" placeholder="한줄소개">
                  <span id=""> </span>
               </div>
            </form>
            <!-- form태그 바깥에 버튼을 두면 엔터키가 안먹힘 -->
            <div>
               <button onclick="submit()">기업회원가입</button>
            </div>
         </div>
         <div class="back">뒤로가기</div>
      </div>
</body>
</html>