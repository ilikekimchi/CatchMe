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
	<div>
	<div><h3>코인 목록</h3></div>
	<div>
		<div><h3>현재 코인</h3></div>	
		<table border="1">
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
						<td><fmt:formatNumber pattern="#,###" value="${item.paySaleprice}" /></td>
						<td><fmt:formatDate value="${item.payDate}" pattern="yyyy-MM-dd"/></td>
						<td><a href="${item.paySeq}/delete">삭제</a></td>
					</tr>
					<tr>
						<c:set var="sum" value="${sum + item.payCoin}" scope="session"/>
					</tr>
				</c:forEach>
			<c:if test="${sum != null}" >
				<tr>
					<th>합계</th>
					<td><c:out value="${sum}" />코인</td>
				</tr>
			</c:if>
		</table>
				<table border="1">
					<thead>
						<tr>
							<th>코인 이름</th>
							<th>가격</th>
							<th>관리</th>
						</tr>
					</thead>
					<tbody>
					<c:if test="${coinList.size() < 1}">
						<tr>
							<td colspan="6">등록 된 코인이 없습니다.</td>
						</tr>
					</c:if>
					<c:forEach var="coinList" items="${coinList}">
						<tr>
							<td>${coinList.coinName}코인</td>
							<td>${coinList.coinPay}원</td>
							<td><a href="cart?coinSeq=${coinList.coinSeq}">선택</a></td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
		<div>
		<div><h3>결제 할 코인</h3></div>
		<div>
			<table border="1">
				<thead>
					<tr>
						<th>코인번호</th>
						<th>코인</th>
						<th>결제금액</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${sessionScope.cart == null}">
						<tr><td colspan="4">코인을 선택해 주세요.</td></tr>
					</c:if>
					<c:forEach var="item" items="${sessionScope.cart}">
						<tr>
							<td>${item.key}</td>
							<td>${item.value.coinName}코인</td>
							<td>${item.value.coinPay}원</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div>
			<a href="order">코인 구매</a>
		</div>
		<div>
			<a href="cartInit">결제 취소</a>
		</div>
	</div>
	</div>
</body>
</html>