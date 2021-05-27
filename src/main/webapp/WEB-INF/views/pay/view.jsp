<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<div><h3>코인 결제내역</h3></div>
	<div>
		<table border="1">
			<tbody>
				<tr>
					<td colspan="2">결제번호</td>
					<td colspan="2">${item.paySeq}</td>
				</tr>
				<tr>
					<td colspan="2">구매자 아이디</td>
					<td colspan="2">${item.companyId}</td>
				</tr>
				<tr>
					<td colspan="2">결제금액</td>
					<td colspan="2"><fmt:formatNumber pattern="#,###" value="${item.paySaleprice}"></fmt:formatNumber></td>
				</tr>
				<tr>
					<td colspan="2">결제일</td>
					<td colspan="2"><fmt:formatDate pattern="yyyy-MM-dd" value="${item.payDate}"></fmt:formatDate></td>
				</tr>
				<tr>
					<td colspan="4">결제상세</td>
				</tr>
				<tr>
					<td>상세번호</td>
					<td>코인 수량</td>
					<td>코인 가격</td>
					<td>수량</td>
				</tr>
				<c:if test="${item.detail.size() < 1}">
				<tr>
					<td colspan="4">코인 결제내역이 없습니다.</td>
				</tr>
				</c:if>
				<c:forEach var="detail" items="${item.detail}">
				<tr>
					<td>${detail.detailSeq}</td>
					<td>${detail.coinName}코인</td>
					<td><fmt:formatNumber value="${detail.coinPay}" pattern="#,###"></fmt:formatNumber></td>
					<td>${detail.detailAmount}</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div><a href="../list">결제 목록보기</a></div>
</body>
</html>