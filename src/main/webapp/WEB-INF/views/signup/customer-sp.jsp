<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="/js/signup.js" type="text/javascript"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
	
<link href="../css/signup-ct.css" rel="stylesheet" />

<script src="/js/customer-sp.js" type="text/javascript"></script>
</head>
<body>
<!-- <button>을 쓰면 내 의도와 상관없이 submit 되어버림,고로 form태그 바깥으로 놔야함 --><!--안녕하세요 저는 카카오 맵 입니다-->
	<div class="container">
		<div class="seq">
			<div id="sign-info">
				<span>가입정보</span>
			</div>
			<div id="login-info">
				<span>로그인정보</span>
			</div>
			<div id="profile">
				<span>프로필</span>
			</div>
		</div>
	<div class="signup-container">
            <form name="signupForm" method="post">
	            <div class="second">
	               <div class="email-form">
	                  <input type="text" name="customerId" id="customerId" onblur="confirmId()">
	                  <input type="hidden" name="id_confirm" value="">
	                  <label class="email-ph">이메일</label>
	                  <span class="email-ph-t placeholder">이메일</span>
	                  <span id="id-msg" class="msg"> </span>                
	               </div>
	               
	               <div class="pw-form">
	                  <input type="password" name="customerPw" id="pwd1" onblur="pwdChk1()">
	                  <label class="pwd-ph">비밀번호</label>
	                  <span class="pwd-ph-t placeholder">비밀번호</span>
	                  <span id="pwd1-msg" class="msg"></span>
	               </div>
	                              
	               <div class="pw-cf-form">
	                  <input type="password" name="passwd_confirm" id="pwd2" onblur="pwdChk2()">
	                  <label class="pwd-cf-ph">비밀번호 확인</label>
	                  <span class="pwd-cf-ph-t placeholder">비밀번호 확인</span>
	                  <span id="pwd2-msg" class="msg"> </span>
	               </div>
	               
	               <div class="customerNnm-form">
						<input name="customerNnm" type="text" id="nnm">
						<label class="nnm-ph">닉네임</label>
	                  	<span class="nnm-ph-t placeholder">닉네임</span>
					</div>
					<div class="customerBirthday-form">
						<input name="customerBirthday" type="date">
						<label>생년월일</label>
					</div>
					<div class="customerGender-form">
	                	<label class="male"><input type="radio" name="customerGender" value="m">남</label>
	                	<label class="female"><input type="radio" name="customerGender" value="f">여</label>
	                	<label for="">성별</label>
	            	</div>
	            </div>
	            
	            <!-- 3단계 내정보(프로필, 이력서 X) 일단 null -->
				<div class="third" style="display: none;">
					<div class="name-form">
						<input name="customerName" type="text" >
						<label class="name-ph">이름</label>
	                  	<span class="name-ph-t placeholder">이름</span>
					</div>
					<div class="phone-form">
						<input name="customerPhone" type="text" >
						<label class="phone-ph">핸드폰번호</label>
	                  	<span class="phone-ph-t placeholder">핸드폰번호</span>
					</div>
					<div class="address-form">
						<input name="customerAddress" type="text">
						<label class="address-ph">주소</label>
	                  <span class="address-ph-t placeholder">주소</span>
					</div>
	            </div>	  
	           <!-- 3단계 내정보(프로필, 이력서 X) 일단 null -->    
            </form>
            <!-- form태그 바깥에 버튼을 두면 엔터키가 안먹힘 -->
           	<button onclick="submit()" class="signup-btn" style="display: none;">회원가입</button>
           	<span class="next">프로필 작성</span>
            <a href="../signup" class="back">뒤로가기</a>
         </div>
       </div>
</body>
</html>