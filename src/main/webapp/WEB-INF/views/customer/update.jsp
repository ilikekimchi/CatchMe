<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<div>
		<div><h3>내정보 변경</h3></div>
		<div>
			<form method="post">
				<div>
					<label>아이디:</label>
					${item.customerId}
				</div>
				<div>
					<label>닉네임:</label>
					<input name="customerNnm" type="text"  value="${item.customerNnm}">
				</div>
				<div>			
					<label for="">성별:</label>
	                <label><input type="radio" name="customerGender" value="m">남</label>
	                <label><input type="radio" name="customerGender" value="f">여</label>
           		</div>
            
				<div>
					<label>이름:</label>
					<input name="customerName" type="text"  value="${item.customerName}">
				</div>

				<div>
					<label>전화번호:</label>
					<input name="customerPhone" type="text"  value="${item.customerPhone}">
				</div>
				<div>
					<label>주소:</label>
					<input name="customerAddress" type="text"  value="${item.customerAddress}">
				</div>
				<div>
					<label>생년월일:</label>
					<input name="customerBirthday" type="date"  value="${item.customerBirthday}">
				</div>
				
				<div>
					<input type="submit" value="변경">
				</div>
			</form>
		</div>
		<div>
			<a href="../list">내정보</a>
		</div>
	</div>
</body>
</html>