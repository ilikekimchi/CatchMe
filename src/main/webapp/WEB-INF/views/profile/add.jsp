<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<div>
		<c:if test="${sessionScope.customer == null}">
		<div>
			<a href="signup">회원가입</a> <a href="login">로그인</a>
		</div>
		</c:if>
		<c:if test="${sessionScope.customer != null}">
			<div>
				${sessionScope.customer.customerNnm}님 <a href="logout">로그아웃</a>
		</div>
		</c:if>
		<div><h3>명함 등록</h3></div>
		<div>
			<form method="post" action="" >
				<div>
					<label>닉네임:</label>
					${sessionScope.customer.customerNnm}
				</div>
				<div>
					<label>생년월일:</label>
					<input name="profileBirthday" type="date" placeholder="1997-12-05">
				</div>
				<div>
					<label>성별:</label>
					<input name="profileGender" type="text" placeholder="여성">
				</div>
				<div>
					<label>분야:</label>
					<input name="profileCategory" type="text">
				</div>
				<div>
					<label>희망근무지:</label>
					<input name="profileArea" type="text">
				</div>
				<div>
					<label>기술능력:</label>
					<input name="skillContent" type="text">
				</div>
				<div>
					<label>희망연봉:</label>
					<input name="profileMoney" type="text">
				</div>
				<div>
					<label>한줄소개:</label>
					<input name="profileWriting" type="text">
				</div>
				<div>
					<label>현재상태:</label>
					<input name="profileState" type="number">
				</div>
				<div>
					<label>연락가능시간:</label>
					<input name="profileTime" type="text">
				</div>
				
				<div>
					<input type="submit" value="등록">
				</div>
			</form>
		</div>
		<div>
			<a href="/profile/list">취소</a>
		</div>
	</div>
</body>
</html>