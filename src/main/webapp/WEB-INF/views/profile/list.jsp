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
			<div><h3>프로필 관리</h3></div>
			<div>
				<table border="1">
					<thead>
						<tr>
							<th>별점</th> 
							<th>닉네임</th> 
							<th>프로필 사진</th> 
							<th>이름</th> 
							<th>성별</th> 
							<th>생년월일</th>
							<th>분야</th>
							<th>희망근무지</th>
							<th>학교구분</th>
							<th>학교명</th>
							<th>입학년월</th>
							<th>졸업년월</th>
							<th>전공명</th>
							<th>졸업상태</th>
							<th>자격면허</th>
							<th>발행처</th>
							<th>취득월</th>
							<th>기술능력</th>
							<th>경력사항</th>
							<th>회사명</th>
							<th>입사년월</th>
							<th>퇴사년월</th>
							<th>직급직책</th>
							<th>담당업무</th>
							<th>한줄소개</th>
							<th>현재상태</th>
							<th>연락가능시간</th>				
							<th>최종 수정일</th>
							<th>관리</th>
						</tr>
					</thead>
					<tbody>
					<c:if test="${list.size() < 1}">
						<tr>
							<td colspan="29">등록 된 프로필이 없습니다.</td>
						</tr>
						<tr>
							<td colspan="2"><a href="add">프로필 등록</a></td>
						</tr>
					</c:if>
					<c:forEach var="item" items="${list}">
						<tr>
							<td>${item.profileScore}</td>
							<td>${item.customerNnm}</td>
							<td><img src="/CatchMeUpload/${item.profileImg}" class="avatar"></td>
							<td>${item.customerName}</td>
							<td>${item.profileGender}</td>
							<td><fmt:formatDate pattern="yyyy-MM-dd" value="${item.profileDoob}" /></td>
							<td>${item.profileCategory}</td> 
							<td>${item.profileArea}</td>		
							<td>${item.profileAcademicType}</td> 
							<td>${item.profileAcademic}</td> 
							<td><fmt:parseDate pattern="yyyy-MM" value="${item.profileAcademicStartDate}"  var="profileAcademicStartDate" />
							<fmt:formatDate pattern="yyyy-MM" value="${profileAcademicStartDate}" /></td> 
							<td><fmt:parseDate pattern="yyyy-MM" value="${item.profileAcademicEndDate}" var="profileAcademicEndDate" />
							<fmt:formatDate pattern="yyyy-MM" value="${profileAcademicEndDate}" /></td> 
							<td>${item.profileAcademicMajor}</td> 
							<td>${item.profileAcademicState}</td>  
							<td>${item.profileAbility}</td> 
							<td>${item.profileAbilityAgency}</td>
							<td><fmt:parseDate pattern="yyyy-MM" value="${item.profileAbilityDate}" var="profileAbilityDate" />
							<fmt:formatDate pattern="yyyy-MM" value="${profileAbilityDate}" /></td> 
							<td>${item.profileSkill}</td>
							<td>${item.profileCareer}</td> 
							<td>${item.profileCareerName}</td>
							<td><fmt:parseDate pattern="yyyy-MM" value="${item.profileCareerStartDate}" var="profileCareerStartDate" />
							<fmt:formatDate pattern="yyyy-MM" value="${profileCareerStartDate}" /></td>
							<td><fmt:parseDate pattern="yyyy-MM" value="${item.profileCareerEndDate}" var="profileCareerEndDate" />
							<fmt:formatDate pattern="yyyy-MM" value="${profileCareerEndDate}" /></td>
							<td>${item.profileCareerPosition}</td> 
							<td>${item.profileCareerWork}</td>		
							<td>${item.profileWriting}</td>
							<td>${item.profileState}</td> 
							<td>${item.profileTime}</td> 
							<td><fmt:formatDate pattern="yyyy-MM-dd" value="${item.profileDate}" /></td>
							<td><a href="${item.customerId}/delete">삭제</a> 
							<a href="${item.customerId}/update">수정</a></td>
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