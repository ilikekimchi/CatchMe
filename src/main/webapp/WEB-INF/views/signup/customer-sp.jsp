<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="/js/signup.js" type="text/javascript"></script>
</head>
<body>
<!-- <button>을 쓰면 내 의도와 상관없이 submit 되어버림,고로 form태그 바깥으로 놔야함 -->
	<div>
		<div><h3>회원가입</h3></div>
		<div>
			<form name="signupForm" method="post">
				<input name="id_confirm" type="hidden" value="" >
				<div>
					<label>아이디:</label>
					<input name="customerId" type="text"> <a href="javascript:confirmId()">중복검사</a>
				</div>
				<div>
					<label>비밀번호:</label>
					<input name="customerPw" type="password">
				</div>
				<div>
					<label>비밀번호 재확인:</label>
					<input name="passwd_confirm" type="password" >
				</div>
				<div>
					<label>이름:</label>
					<input name="customerName" type="text" >
				</div>
				<div>
					<label>닉네임:</label>
					<input name="customerNnm" type="text" >
				</div>
			</form>
			<!-- form태그 바깥에 버튼을 두면 엔터키가 안먹힘 -->
			<div>
				<button onclick="submit()">회원가입</button>
			</div>
		</div>
	</div>
</body>
</html>