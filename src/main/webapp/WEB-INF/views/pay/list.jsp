<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<div>
		<h3>코인 결제 내역</h3>
	</div>
	<div>
		<table border="1">
			<thead>
				<tr>
					<th>결제번호</th>
					<th>구매자 아이디</th>
					<th>구매한 코인</th>
					<th>결제금액</th>
					<th>결제일</th>
					<th>관리</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${list.size() < 1}">
					<tr>
						<td colspan="7">코인 결제내역이 없습니다.</td>
					</tr>
				</c:if>
				<c:forEach var="item" items="${list}">
					<tr>
						<td>${item.paySeq}</td>
						<td>${item.companyId}</td>
						<td>${item.coinName}코인</td>
						<td><fmt:formatNumber pattern="#,###" value="${item.paySaleprice}"></fmt:formatNumber></td>
						<td><fmt:formatDate value="${item.payDate}" pattern="yyyy-MM-dd"/></td>
						<td><a href="${item.paySeq}/delete">삭제</a></td>
					</tr>
					<tr>
						<c:set var="sum" value="${sum + item.payCoin}" scope="session"/>
					</tr>
				</c:forEach>
			</tbody>
			<c:if test="${sum != null}" >
				<tr>
					<th>합계</th>
					<td><c:out value="${sum}" />코인</td>
				</tr>
			</c:if>
		</table>
	</div>
	<div>
		<a href="/">메인으로</a>
	</div>
</body>
</html>