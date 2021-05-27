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
			<div><h3>내정보(myPage)</h3></div>
			<div>
				<table border="1">
					<thead>
						<tr>
							<th>성별</th>
							<th>아이디</th>
							<th>이름</th>
							<th>닉네임</th>
							<th>전화번호</th>
							<th>주소</th>
							<th>생년월일</th>
							<th>찜당한 기업</th>
							<th>관리</th>
						</tr>
					</thead>
					<tbody>
					<%-- <c:if test="${list.size() < 1}">
						<tr>
							<td colspan="11">등록 된 사용자가 없습니다</td>
						</tr>
					</c:if>
					<c:forEach var="item" items="${list}">
						<tr>
							<td>${item.customerGender}</td>
							<td>${item.customerId}</td>
							<td>${item.customerName}</td>
							<td>${item.customerNnm}</td>
							<td>${item.customerPhone}</td>
							<td>${item.customerAddress}</td>
							<td>${item.customerBirthday}</td>
							<td>${item.customerRole}</td>
							<td><a href="${item.customerId}/delete">회원탈퇴</a> 
							<a href="${item.customerId}/update">변경</a></td>
						</tr>
					</c:forEach> --%>
					</tbody>
				</table>
			</div>
			<div>
				<a href="/">메인으로</a>
			</div>		
		</div>
	</div>
</body>
</html>