<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<div>
		<div><h3>코인 변경(관리자 전용)</h3></div>
		<div>
			<form method="post">
				<div>
					<label>코인 번호:</label>
					${item.coinSeq}
				</div>
				<div>
					<label>코인 수량:</label>
					<input name="coinName" type="number"  value="${item.coinName}">코인
				</div>
				<div>
					<label>가격:</label>
					<input name="coinPay" type="number"  value="${item.coinPay}">원
				</div>
				<div>
					<input type="submit" value="변경">
				</div>
			</form>
		</div>
		<div>
			<a href="../list">취소</a>
		</div>
	</div>
</body>
</html>