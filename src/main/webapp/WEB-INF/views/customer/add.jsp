<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<div>
		<div><h3>고객 등록</h3></div>
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
					<label>닉네임:</label>
					<input name="customerNnm" type="text">
				</div>
				<div>
					<input type="submit" value="등록">
				</div>
			</form>
		</div>
		<div>
			<a href="list">고객 목록</a>
		</div>
	</div>
</body>
</html>