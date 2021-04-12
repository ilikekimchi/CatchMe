<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
.avatar {
    max-width: 150px;
    max-height: 170px;
   }
</style>

</head>
<body>
	<div>
		<c:if test="${sessionScope.customer == null}">
		<div>
			<a href="signup">회원가입</a> <a href="login">로그인</a>
		</div>
		</c:if>
		<c:if test="${sessionScope.customer != null}">
			<div>
				${sessionScope.customer.customerNnm}님 <a href="../logout">로그아웃</a>
			</div>
		</c:if>
		<div>
			<div><h3>명함 목록</h3></div>
			<div>
				<table border="1">
					<thead>
						<tr>
							<th>번호</th>
							<th>닉네임</th>  
							<th>성별</th>							 
							<th>생년월일</th>
							<th>분야</th>
							<th>희망근무지</th>
							<th>기술능력</th>
							<th>희망연봉</th>
							<th>한줄소개</th>
							<th>현재상태</th>
							<th>연락가능시간</th>				
							<th>최종 수정일</th>
							<th>이력서 검증여부</th>
							<th>관리</th>
						</tr>
					</thead>
					<tbody>
					<c:if test="${listAll.size() < 1}">
						<tr>
							<td colspan="14">등록 된 명함이 없습니다.</td>
						</tr>
					</c:if>
					<c:forEach var="item" items="${listAll}">
						<tr>
							<td>${item.profileSeq}</td>
							<td>${item.customerNnm}</td>
							<td>${item.profileGender}</td>
							<td><fmt:formatDate pattern="yyyy-MM-dd" value="${item.profileBirthday}" /></td>
							<td>${item.profileCategory}</td> 
							<td>${item.profileArea}</td>		
							<td>${item.skillContent}</td>
							<td>${item.profileMoney}</td> 
							<td>${item.profileWriting}</td>
							<td>${item.profileState}</td> 
							<td>${item.profileTime}</td> 
							<td><fmt:formatDate pattern="yyyy-MM-dd" value="${item.profileDate}" /></td>
							<td>${item.profileCheck}</td>
							<td><a href="${item.customerId}/delete">삭제</a> 
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