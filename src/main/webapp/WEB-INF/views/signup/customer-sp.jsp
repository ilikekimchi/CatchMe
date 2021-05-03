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
			<div>
				<input name="id_confirm" type="hidden" value="" >
				<input name="customerCheck" type="hidden" value="0" >
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
					<label>닉네임:</label>
					<input name="customerNnm" type="text" >
				</div>
				<div>
					<label>생년월일:</label>
					<input name="customerBirthday" type="date">
				</div>
				<div>
                	<label for="">성별:</label>
                	<label><input type="radio" name="customerGender" value="m">남</label>
                	<label><input type="radio" name="customerGender" value="f">여</label>
            	</div>
            </div>
            
            
           <!-- 3단계 내정보(프로필, 이력서 X) 일단 null -->
			<div>
				<div>
					<label>이름:</label>
					<input name="customerName" type="text" >
				</div>
				<div>
					<label>전화번호:</label>
					<input name="customerPhone" type="text" >
				</div>
				<div>
					<label>주소:</label>
					<input name="customerAddress" type="text">
				</div>
            </div>	  
           <!-- 3단계 내정보(프로필, 이력서 X) 일단 null -->       	
           
			</form>
			<!-- form태그 바깥에 버튼을 두면 엔터키가 안먹힘 -->
			<div>
				<button onclick="submit()">회원가입</button>
			</div>
		</div>
		<div>
			<a href="/signup">회원가입 취소</a>
		</div>
	</div>
</body>
</html>