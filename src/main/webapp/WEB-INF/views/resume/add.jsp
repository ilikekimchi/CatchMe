<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<div>
		<div><h3>이력서 및 포트폴리오 등록</h3></div>
		<div>
			<form method="post" action="" enctype="multipart/form-data">
				<div>
					<label>아이디:</label>
					${sessionScope.customer.customerId}
				</div>
				<div>
					<label>이력서 및 포트폴리오:</label>
					<input multiple="multiple" name="file" type="file" />
					<p>파일 크기는 최대 50MB 까지 가능합니다.</p>
				</div>
				<div>
					<input type="submit" value="등록">
				</div>
			</form>
		</div>
		<div>
			<a href="/resume/list">취소</a>
		</div>
	</div>
</body>
</html>