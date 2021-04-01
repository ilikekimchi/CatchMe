<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="/js/file.js" type="text/javascript"></script>
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
				${sessionScope.customer.customerNnm}님 <a href="logout">로그아웃</a>
		</div>
		</c:if>
		<div><h3>프로필 변경</h3></div>
		<div>
			<form method="post" action="" enctype="multipart/form-data">
			<table>
				<thead>
				<tr>
					<th>닉네임</th>
					<td>${item.customerNnm}</td>		
				</tr>				
				</thead>
				<tr>
					<td colspan="2">
					<ul>
						<li>
							<img src="/CatchMeUpload/${item.profileImg}" class="avatar"
							alt="${item.profileImg}">
							<p>현재이미지<p>
						</li>
					</ul>
					</td>
				</tr>
				<tr>
					<th><label>이미지 업로드</label></th>
					<td colspan="1"><input name="uploadFile" type="file" id="file" onchange="fileCheck(this)" 
					accept="image/gif, image/jpg, image/jpeg, image/png, image/svg" />
					<p class="p-color">파일 크기는 최대 50MB 까지 가능합니다.</p></td>
				</tr>
				<tr>
					<th><label>이름:</label></th>
					<td colspan="1">${item.customerName}</td>
				</tr>
				<tr>
					<th><label>성별:</label></th>
					<td colspan="1"><input name="profileAcademic" type="text" value="${item.profileGender}"></td>
				</tr>
				<tr>
					<th><label>생년월일:</label></th>
					<td colspan="1"><input name="profileDoob" type="date" value="${item.profileDoob}">
					<label>현재 생년월일:
					<fmt:formatDate pattern="yyyy-MM-dd" value="${item.profileDoob}"/></label></td>
				</tr>
				<tr>
					<th><label>분야:</label></th>
					<td colspan="1"><input name="profileCategory" type="text" value="${item.profileCategory}"></td>
				</tr>
				<tr>
					<th><label>희망근무지:</label></th>
					<td colspan="1"><input name="profileArea" type="text" value="${item.profileArea}"></td>
				</tr>
				<tr>
					<th><label>학교구분:</label></th>
					<td colspan="1"><input name="profileAcademicType" type="text" value="${item.profileAcademicType}"></td>
				</tr>
				<tr>
					<th><label>학교명:</label></th>
					<td colspan="1"><input name="profileAcademic" type="text" value="${item.profileAcademic}"></td>
				</tr>
				<tr>
					<th><label>입학년월:</label></th>
					<td colspan="1"><input name="profileAcademicStartDate" type="month" value="${item.profileAcademicStartDate}"></td>
				</tr>
				<tr>
					<th><label>졸업년월:</label></th>
					<td colspan="1"><input name="profileAcademicEndDate" type="month" value="${item.profileAcademicEndDate}"></td>
				</tr>
				<tr>
					<th><label>전공명:</label></th>
					<td colspan="1"><input name="profileAcademicMajor" type="text" value="${item.profileAcademicMajor}"></td>
				</tr>
				<tr>
					<th><label>졸업상태:</label></th>
					<td colspan="1"><input name="profileAcademicState" type="text" value="${item.profileAcademicState}"></td>
				</tr>
				<tr>
					<th><label>자격/면허:</label></th>
					<td colspan="1"><input name="profileAbility" type="text" value="${item.profileAbility}"></td>
				</tr>
				<tr>
					<th><label>발행처:</label></th>
					<td colspan="1"><input name="profileAbilityAgency" type="text" value="${item.profileAbilityAgency}"></td>
				</tr>
				<tr>
					<th><label>취득월:</label></th>
					<td colspan="1"><input name="profileAbilityDate" type="month" value="${item.profileAbilityDate}"></td>
				</tr>
				<tr>
					<th><label>기술능력:</label></th>
					<td colspan="1"><input name="profileSkill" type="text" value="${item.profileSkill}"></td>
				</tr>
				<tr>
					<th><label>경력사항:</label></th>
					<td colspan="1"><input name="profileCareer" type="text" value="${item.profileCareer}"></td>
				</tr>
				<tr>
					<th><label>회사명:</label></th>
					<td colspan="1"><input name="profileCareerName" type="text" value="${item.profileCareerName}"></td>
				</tr>
				<tr>
					<th><label>입사년월:</label></th>
					<td colspan="1"><input name="profileCareerStartDate" type="month" value="${item.profileCareerStartDate}"></td>
				</tr>
				<tr>
					<th><label>퇴사년월:</label></th>
					<td colspan="1"><input name="profileCareerEndDate" type="month" value="${item.profileCareerEndDate}"></td>
				</tr>
				<tr>
					<th><label>직급직책:</label></th>
					<td colspan="1"><input name="profileCareerPosition" type="text" value="${item.profileCareerPosition}"></td>
				</tr>
				<tr>
					<th><label>담당업무:</label></th>
					<td colspan="1"><input name="profileCareerWork" type="text" value="${item.profileCareerWork}"></td>
				</tr>
				<tr>
					<th><label>한줄소개:</label></th>
					<td colspan="1"><input name="profileWriting" type="text" value="${item.profileWriting}"></td>
				</tr>
				<tr>
					<th><label>현재상태:</label></th>
					<td colspan="1"><input name="profileState" type="number" value="${item.profileState}"></td>
				</tr>
				<tr>
					<th><label>연락가능시간:</label></th>
					<td colspan="1"><input name="profileTime" type="text" value="${item.profileTime}"></td>
				</tr>
				<tr>
					<th><label>최종 수정일:</label></th>
					<td colspan="1"><fmt:formatDate pattern="yyyy-MM-dd" value="${item.profileDate}"/></td>	
				</tr>	
				
				<tr>
					<td colspan="5"><input type="submit" value="변경완료"></td>
				</tr>
				</table>
			</form>
		</div>
		<div>
			<a href="../list">취소</a>
		</div>
	</div>
</body>
</html>