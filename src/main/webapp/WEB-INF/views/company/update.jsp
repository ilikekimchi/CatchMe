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
				<input name="companyImg" type="hidden" value="기업" >
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
					<label>설립일:</label>
					<input name="companyDate" type="date"  value="${item.companyDate}">
				</div>
				<div>
					<label>기업형태:</label>
					<input name="companyCategory" type="text"  value="${item.companyCategory}">
				</div>
				<div>
					<label>업종:</label>
					<input name="companyJob" type="text"  value="${item.companyJob}">
				</div>
				<div>
					<label>인사담당자 연락처:</label>
					<input name="companyTel" type="text"  value="${item.companyTel}">
				</div>
				<div>
					<label>규모(사원 수):</label>
					<input name="companyScale" type="number"  value="${item.companyScale}">명
				</div>
				<div>
					<label>위치(주소):</label>
					<input name="companyLocation" type="text"  value="${item.companyLocation}">
				</div>
				<div>
					<label>홈페이지 주소(url):</label>
					<input name="companyHomePage" type="text"  value="${item.companyHomePage}">
				</div>
				<div>
					<label>기업개요 및 비전소개:</label>
					<textarea name="companyWriting" cols="40" rows="8" >${item.companyWriting}</textarea> 
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