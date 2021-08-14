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
	<!-- sessionScope => 세션(session -> customer가 저장되어있음)에  저장되어있는(Scope)를  불러옴 -->
		<c:if test="${sessionScope.customer == null}">
		<c:if test="${sessionScope.company == null}">
		<div>
			<a href="/signup">회원가입</a> <a href="/login">로그인</a>
		</div>
		</c:if>
		</c:if>
		<c:if test="${sessionScope.customer != null}">
			<div>
				${sessionScope.customer.customerNnm}님 <a href="/logout">로그아웃</a> | <a href="/profile/list">마이페이지</a>
			</div>
		</c:if>
		<!-- 기업 -->
				<!-- sessionScope => 세션(session -> customer가 저장되어있음)에  저장되어있는(Scope)를  불러옴 -->
		<c:if test="${sessionScope.customer == null}">
		<c:if test="${sessionScope.company == null}">
		<div>
			<a href="/signup0">기업 회원가입</a> <a href="/login0">기업 로그인</a>
		</div>
		</c:if>
		</c:if>
		<c:if test="${sessionScope.company != null}">
			<div>
				${sessionScope.company.companyName} <a href="/logout">로그아웃</a> | <a href="/company/list">마이페이지</a>
			</div>
		</c:if>
	</div>
		<div>
			<div><h3>이력서 및 포트폴리오 목록</h3></div>
			<div>
				<table border="1">
					<thead>
						<tr>
							<th>이력서코드</th>
							<th>이력서 및 포트폴리오</th>
							<th>최종수정일</th>
							<th>관리</th>
						</tr>
					</thead>
					<tbody>
					<c:if test="${list.size() < 1}">
						<tr>
							<td colspan="6">등록 된 포트폴리오가 없습니다.</td>
						</tr>
						<tr>
							<td colspan="2"><a href="add">포트폴리오 등록</a></td>
						</tr>
					</c:if>
					<c:forEach var="item" items="${list}">
						<tr>
							<td>${item.resumeSeq}</td>
							<td><a href="/CatchMeUpload/${item.resumeFile}" target="_blank">${item.resumeFile}</a></td>
							<td><fmt:formatDate pattern="yyyy-MM-dd" value="${item.resumeDate}" /></td>
							<td><a href="${item.resumeSeq}/delete">삭제</a> 
							<a href="${item.resumeSeq}/update">변경</a></td>
						</tr>
					</c:forEach>
					<c:if test="${list.size() >= 1}">
					<tr>
						<td><button type="button"><a href="add">파일추가</a></button></td>
					</tr>
					</c:if>
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