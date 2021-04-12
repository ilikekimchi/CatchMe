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
			<div><h3>마이페이지(기업)</h3></div>
			<div>
				<table border="1">
					<thead>
						<tr>
							<th>아이디</th>
							<th>패스워드</th>
							<th>기업명</th>
							<th>대표자명</th>
							<th>홈페이지</th>
							<th>연락처</th>
							<th>규모(명)</th>
							<th>위치(주소)</th>
							<th>연매출</th>
							<th>한줄 소개</th>
							<th>찜한 유저</th>
							<th>관리</th>
						</tr>
					</thead>
					<tbody>
					<c:if test="${list.size() < 1}">
						<tr>
							<td colspan="12">등록 된 기업이 없습니다</td>
						</tr>
					</c:if>
					<c:forEach var="item" items="${list}">
						<tr>
							<td>${item.companyId}</td>
							<td>${item.companyPw}</td>
							<td>${item.companyName}</td>
							<td>${item.companyRa}</td>
							<td>${item.companyHomePage}</td>
							<td>${item.companyTel}</td>
							<td>${item.companyScale}명</td>
							<td>${item.companyLocation}</td>
							<td>${item.companyMoney}원</td>
							<td>${item.companyWriting}</td>
							<td>${item.companyRole}</td>
							<td><a href="${item.companyId}/delete">회원탈퇴</a> 
							<a href="${item.companyId}/update">변경</a></td>
						</tr>
					</c:forEach>
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