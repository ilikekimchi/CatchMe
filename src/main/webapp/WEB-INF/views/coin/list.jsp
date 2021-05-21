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
			<div><h3>코인 목록(관리자 전용)</h3></div>
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
					<c:if test="${list.size() < 1}">
						<tr>
							<td colspan="6">등록 된 코인이 없습니다.</td>
						</tr>
					</c:if>
					<c:forEach var="item" items="${list}">
						<tr>
							<td>${item.coinName}코인</td>
							<td>${item.coinPay}원</td>
							<td><a href="${item.coinSeq}/delete">삭제</a> 
							<a href="${item.coinSeq}/update">변경</a></td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
			<div>
				<a href="add">코인 등록</a>
			</div>
			<div>
				<a href="/">메인으로</a>
			</div>		
		</div>
	</div>
</body>
</html>