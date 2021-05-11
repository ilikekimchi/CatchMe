<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="/js/signup0.js" type="text/javascript"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
	
<link href="../css/signup-cp.css" rel="stylesheet" />

<script src="/js/company-sp.js" type="text/javascript"></script>
</head>
<body>
<!-- <button>을 쓰면 내 의도와 상관없이 submit 되어버림,고로 form태그 바깥으로 놔야함 -->
	<div class="container">
		<h2 class="logo">
			<a href="/">
				<span>CatchMe</span>
			</a>
		</h2>
		<div class="signup-container">
			<h3 id="member">기업회원</h3>
			<div>
				<form name="signupForm0" method="post">
					<input name="companyImg" type="hidden" value="기업" >
					<div class="email-form">
						<input name="id_confirm0" type="hidden" value="" >
						<input name="companyId" type="text" id="companyId"> <!-- <a href="javascript:confirmId0()">중복검사</a> -->
						<label class="email-ph">이메일</label>
						<span class="email-ph-t">이메일</span>
						<span id="id-msg" class="msg"> </span>
					</div>
					<div class="pw-form">
						<label>비밀번호</label>
						<input name="companyPw" type="password">
					</div>
					<div class="pw-cf-form">
						<label>비밀번호 확인</label>
						<input name="passwd_confirm0" type="password" >
					</div>
					<div style="display: none;">
						<label>기업명</label>
						<input name="companyName" type="text" >
					</div>
					<!-- <div style="display: none;">
						<label>대표자명</label>
						<input name="companyRa" type="text" >
					</div>
					<div style="display: none;">
						<label>연락처</label>
						<input name="companyTel" type="text" >
					</div>
					<div style="display: none;">
						<label>연매출</label>
						<input name="companyMoney" type="number" >원
					</div>
					<div style="display: none;">
						<label>규모(사원 수)</label>
						<input name="companyScale" type="number" >명
					</div>
					<div style="display: none;">
						<label>위치(주소)</label>
						<input name="companyLocation" type="text" >
					</div>
					<div style="display: none;">
						<label>홈페이지 주소(url)</label>
						<input name="companyHomePage" type="text" >
					</div>
					<div style="display: none;">
						<label>한줄소개</label>
						<input name="companyWriting" type="text" >
					</div> -->
				</form>
				<!-- form태그 바깥에 버튼을 두면 엔터키가 안먹힘 -->
				<button onclick="submit()" class="signup-btn" >회원가입</button>
			</div>
		</div>
	</div>
</body>
</html>