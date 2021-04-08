<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<div>
		<div><h3>기업정보 수정</h3></div>
		<div>
			<form method="post">
				<div>
				<div>
					<label>아이디:</label>
					${item.companyId}
				</div>
				<div>
					<label>기업명:</label>
					<input name="companyName" type="text" value="${item.companyName}">
				</div>
				<div>
					<label>대표자명:</label>
					<input name="companyRa" type="text"  value="${item.companyRa}">
				</div>
				<div>
					<label>홈페이지 주소(url):</label>
					<input name="companyHomePage" type="text"  value="${item.companyHomePage}">
				</div>
				<div>
					<label>연락처:</label>
					<input name="companyTel" type="number"  value="${item.companyTel}">
				</div>
				<div>
					<label>규모(명):</label>
					<input name="companyScale" type="number"  value="${item.companyScale}">명
				</div>
				<div>
					<label>위치(주소):</label>
					<input name="companyLocation" type="text"  value="${item.companyLocation}">
				</div>
				<div>
					<label>연매출:</label>
					<input name="companyMoney" type="number"  value="${item.companyMoney}">원
				</div>
				<div>
					<label>한줄소개:</label>
					<input name="companyWriting" type="text"  value="${item.companyWriting}">
				</div>		
				</div>
				
				<div>
					<input type="submit" value="변경">
				</div>
			</form>
		</div>
		<div>
			<a href="../list">마이페이지(기업)</a>
		</div>
	</div>
</body>
</html>