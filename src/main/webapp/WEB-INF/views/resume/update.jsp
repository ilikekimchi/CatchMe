<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<div>
		<div><h3>이력서 및 포트폴리오 수정</h3></div>
		<div>
			<form method="post" action="" enctype="multipart/form-data">
				<div>
					<label>아이디:</label>
					${item.customerId}
				</div>	
				<div>
					<label>현재 이력서 및 포트폴리오: ${item.resumeFile}</label>
				</div>
				<div>
					<label>이력서 및 포트폴리오:</label>
					<input multiple="multiple" name="file" type="file">
					<p>파일 크기는 최대 50MB 까지 가능합니다.</p>
				</div>
				<div>
					<label>최종 수정일:</label>
					<fmt:formatDate pattern="yyyy-MM-dd" value="${item.resumeDate}"/>
				</div>
				<div>
					<input type="submit" value="변경">
				</div>
			</form>
		</div>
		<div>
			<a href="/resume/list">취소</a>
		</div>
	</div>
</body>
</html>