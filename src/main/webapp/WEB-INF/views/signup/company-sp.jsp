<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="/js/signup0.js" type="text/javascript"></script>
</head>
<body>
<!-- <button>을 쓰면 내 의도와 상관없이 submit 되어버림,고로 form태그 바깥으로 놔야함 -->
	<div>
		<div><h3>기업회원가입</h3></div>
		<div>
			<form name="signupForm0" method="post">
				<input name="id_confirm0" type="hidden" value="" >
				<input name="companyImg" type="hidden" value="기업" >
				<div>
					<label>아이디:</label>
					<input name="companyId" type="text"> <a href="javascript:confirmId0()">중복검사</a>
				</div>
				<div>
					<label>비밀번호:</label>
					<input name="companyPw" type="password">
				</div>
				<div>
					<label>비밀번호 재확인:</label>
					<input name="passwd_confirm0" type="password" >
				</div>
				<div>
					<label>기업명:</label>
					<input name="companyName" type="text" >
				</div>
				<div>
					<label>대표자명:</label>
					<input name="companyRa" type="text" >
				</div>
				<div>
					<label>설립일:</label>
					<input name="companyDate" type="date" >
				</div>
				<div>
					<label>기업형태:</label>
					<input name="companyCategory" type="text" >
				</div>
				<div>
					<label>업종:</label>
					<input name="companyJob" type="text" >
				</div>
				<div>
					<label>인사담당자 연락처:</label>
					<input name="companyTel" type="text" >
				</div>
				<div>
					<label>규모(사원 수):</label>
					<input name="companyScale" type="number" >명
				</div>
				<div>
					<label>위치(주소):</label>
					<input name="companyLocation" type="text" >
				</div>
				<div>
					<label>홈페이지 주소(url):</label>
					<input name="companyHomePage" type="text" >
				</div>
				<div>
					<label>기업개요 및 비전소개:</label>
					<textarea name="companyWriting" cols="40" rows="8"></textarea>
				</div>
			</form>
			<!-- form태그 바깥에 버튼을 두면 엔터키가 안먹힘 -->
			<div>
				<button onclick="submit()">기업회원가입</button>
			</div>
		</div>
		<div>
			<a href="/signup">회원가입 취소</a>
		</div>
	</div>
</body>
</html>