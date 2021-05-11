<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
							<th>아이콘</th>
							<th>아이디</th>
							<th>패스워드</th>
							<th>기업명</th>
							<th>대표자명</th>
							<th>설립일</th>
							<th>기업형태</th>
							<th>업종</th>
							<th>인사담당자 연락처</th>
							<th>규모(사원 수)</th>
							<th>위치(주소)</th>
							<th>홈페이지 주소</th>
							<th>기업개요 및 비전소개</th>
							<th>찜한 유저</th>
							<th>관리</th>
						</tr>
					</thead>
					<tbody>
					<c:if test="${list.size() < 1}">
						<tr>
							<td colspan="15">등록 된 기업이 없습니다</td>
						</tr>
					</c:if>
					<c:forEach var="item" items="${list}">
						<tr>
							<td>${item.companyImg}</td>
							<td>${item.companyId}</td>
							<td>${item.companyPw}</td>
							<td>${item.companyName}</td>
							<td>${item.companyRa}</td>
							<td><fmt:formatDate pattern="yyyy-MM-dd" value="${item.companyDate}" /></td>
							<td>${item.companyCategory}</td>
							<td>${item.companyJob}</td>
							<td>${item.companyTel}</td>
							<td>${item.companyScale}명</td>
							<td>${item.companyLocation}</td>
							<td>${item.companyHomePage}</td>
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