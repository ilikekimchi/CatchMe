<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<div>
		<div><h3>기업 등록</h3></div>
		<div>
			<form method="post">
				<div>
					<label>아이디:</label>
					<input name="companyId" type="text">
				</div>
				<div>
					<label>비밀번호:</label>
					<input name="companyPw" type="text">
				</div>
				<div>
					<label>기업명:</label>
					<input name="companyName" type="text">
				</div>
				<div>
					<label>대표자명:</label>
					<input name="companyRa" type="text">
				</div>
				<div>
					<label>홈페이지 주소(url):</label>
					<input name="companyHomePage" type="text">
				</div>
				<div>
					<label>연락처:</label>
					<input name="companyTel" type="text">
				</div>
				<div>
					<label>규모(명):</label>
					<input name="companyScale" type="number">명
				</div>
				<div>
					<label>위치(주소):</label>
					<input name="companyLocation" type="text">
				</div>
				<div>
					<label>연매출:</label>
					<input name="companyMoney" type="number">원
				</div>
				<div>
					<label>한줄소개:</label>
					<input name="companyWriting" type="text">
				</div>
				
				<div>
					<input type="submit" value="등록">
				</div>
			</form>
		</div>
		<div>
			<a href="../list">마이페이지(기업)</a>
		</div>
	</div>
</body>
</html>