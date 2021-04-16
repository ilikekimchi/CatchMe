<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
		<div><h3>명함 변경</h3></div>
		<div>
			<form method="post" action="">
			<table>
				<thead>
				<tr>
					<th>닉네임</th>
					<td>${item.customerNnm}</td>		
				</tr>				
				</thead>
				<tr>
					<th><label>성별:</label></th>
					<td colspan="1"><input name="profileGender" type="text" value="${item.profileGender}"></td>
				</tr>
				<tr>
					<th><label>생년월일:</label></th>
					<td colspan="1"><input name="profileBirthday" type="date" value="${item.profileBirthday}">
					<label>현재 생년월일:
					<fmt:formatDate pattern="yyyy-MM-dd" value="${item.profileBirthday}"/></label></td>
				</tr>
				<tr>
					<th><label>분야:</label></th>
					<td colspan="1"><input name="profileCategory" type="text" value="${item.profileCategory}"></td>
				</tr>
				<tr>
					<th><label>희망근무지:</label></th>
					<td colspan="1"><input name="profileArea" type="text" value="${item.profileArea}"></td>
				</tr>
				<tr>
					<th><label>기술능력:</label></th>
					<td colspan="1"><input name="skillContent" type="text" value="${item.skillContent}"></td>
				</tr>
				<tr>
					<th><label>희망연봉:</label></th>
					<td colspan="1"><input name="profileMoney" type="text" value="${item.profileMoney}"></td>
				</tr>
				<tr>
					<th><label>한줄소개:</label></th>
					<td colspan="1"><input name="profileWriting" type="text" value="${item.profileWriting}"></td>
				</tr>
				<tr>
					<th><label>현재상태:</label></th>
					<td colspan="1"><input name="profileState" type="number" value="${item.profileState}"></td>
				</tr>
				<tr>
					<th><label>연락가능시간:</label></th>
					<td colspan="1"><input name="profileTime" type="text" value="${item.profileTime}"></td>
				</tr>
				<tr>
					<th><label>최종 수정일:</label></th>
					<td colspan="1"><fmt:formatDate pattern="yyyy-MM-dd" value="${item.profileDate}"/></td>	
				</tr>	
				
				<tr>
					<td colspan="5"><input type="submit" value="변경완료"></td>
				</tr>
				</table>
			</form>
		</div>
		<div>
			<a href="../list">취소</a>
		</div>
	</div>
</body>
</html>