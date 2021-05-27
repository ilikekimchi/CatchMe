<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
						<tr><td colspan="3">코인을 선택해 주세요.</td></tr>
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