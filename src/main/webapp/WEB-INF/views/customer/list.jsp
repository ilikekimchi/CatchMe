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
		<div>
			<div><h3>내정보</h3></div>
			<div>
				<table border="1">
					<thead>
						<tr>
							<th>아이디</th>
							<th>패스워드</th>
							<th>이름</th>
							<th>닉네임</th>
							<th>찜당한 기업</th>
							<th>관리</th>
						</tr>
					</thead>
					<tbody>
					<c:if test="${list.size() < 1}">
						<tr>
							<td colspan="6">등록 된 사용자가 없습니다</td>
						</tr>
					</c:if>
					<c:forEach var="item" items="${list}">
						<tr>
							<td>${item.customerId}</td>
							<td>${item.customerPw}</td>
							<td>${item.customerName}</td>
							<td>${item.customerNnm}</td>
							<td>${item.customerRole}</td>
							<td><a href="${item.customerId}/delete">회원탈퇴</a> 
							<a href="${item.customerId}/update">변경</a></td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
			<div>
				<a href="add">등록</a>
			</div>
			<div>
				<a href="/">메인으로</a>
			</div>		
		</div>
	</div>
</body>
</html>