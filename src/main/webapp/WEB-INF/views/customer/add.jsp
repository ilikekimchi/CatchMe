<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<div>
		<div><h3>이직자 등록(관리자 전용)</h3></div>
		<div>
			<form method="post">			
				<div>
					<label>아이디:</label>
					<input name="customerId" type="text">
				</div>
				<div>
					<label>비밀번호:</label>
					<input name="customerPw" type="text">
				</div>
				<div>
					<label>이름:</label>
					<input name="customerName" type="text">
				</div>
				<div>
					<label>닉네임:</label>
					<input name="customerNnm" type="text">
				</div>
				<div>
					<label>연락처:</label>
					<input name="customerPhone" type="text">
				</div>
				<div>
					<label>주소:</label>
					<input name="customerAddress" type="text">
				</div>
				<div>
					<label>생년월일:</label>
					<input name="customerBirthday " type="date">
				</div>
				<div>
	                <label for="">성별</label>
	                <label><input type="radio" name="customerGender" value="m">남</label>
	                <label><input type="radio" name="customerGender" value="f">여</label>
	            </div>
				<div>
					<input type="submit" value="등록">
				</div>
			</form>
		</div>
		<div>
			<a href="list-admin">이직자 목록</a>
		</div>
	</div>
</body>
</html>