<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<div>
		<div><h3>내정보 수정</h3></div>
		<div>
			<form method="post">
				<div>
				<div>
					<label>아이디:</label>
					${item.customerId}
				</div>
				<div>
					<label>이름:</label>
					<input name="customerName" type="text" value="${item.customerName}">
				</div>
				<div>
					<label>닉네임:</label>
					<input name="customerNnm" type="text"  value="${item.customerNnm}">
				</div>
				</div>
				<div>
					<input type="submit" value="변경">
				</div>
			</form>
		</div>
		<div>
			<a href="../list">고객 목록</a>
		</div>
	</div>
</body>
</html>