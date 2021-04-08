<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">		
	function fileCheck(obj) {
		pathPoint = obj.value.lastIndexOf(".");
		filePoint = obj.value.substring(pathPoint+1, obj.length);
		fileType = filePoint.toLowerCase();
		if(fileType == "jpg" || fileType == "gif" || fileType == "png" || 
				fileType == "jpeg" || fileType == "bmp" || fileType == "svg"){	
		} else {
			alert("이미지 파일만 선택 가능합니다.");

			//input 파일 초기화
			document.getElementById("file").value = null;
                
                return false;
			}
		}
</script>
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
		<div><h3>프로필 등록</h3></div>
		<div>
			<form method="post" action="" enctype="multipart/form-data">
				<div>
					<label>이미지 업로드</label>
					<input name="uploadFile" type="file" id="file" onchange="fileCheck(this)" 
					accept="image/gif, image/jpg, image/jpeg, image/png, image/svg" />
					<p class="p-color">파일 크기는 최대 50MB 까지 가능합니다.</p>
				</div>
				<div>
					<label>닉네임:</label>
					${sessionScope.customer.customerNnm}
				</div>
				<div>
					<label>이름:</label>
					${sessionScope.customer.customerName}
				</div>
				<div>
					<label>생년월일:</label>
					<input name="profileDoob" type="date" placeholder="1997-12-05">
				</div>
				<div>
					<label>분야:</label>
					<input name="profileCategory" type="text">
				</div>
				<div>
					<label>희망근무지:</label>
					<input name="profileArea" type="text">
				</div>
				<div>
					<label>학교구분:</label>
					<input name="profileAcademicType" type="text">
				</div>
				<div>
					<label>학교명:</label>
					<input name="profileAcademic" type="text">
				</div>
				<div>
					<label>입학년월:</label>
					<input name="profileAcademicStartDate" type="month" placeholder="2016-06">
				</div>
				<div>
					<label>졸업년월:</label>
					<input name="profileAcademicEndDate" type="month" placeholder="2016-06">
				</div>
				<div>
					<label>전공명:</label>
					<input name="profileAcademicMajor" type="text">
				</div>
				<div>
					<label>졸업상태:</label>
					<input name="profileAcademicState" type="text">
				</div>
				<div>
					<label>자격면허:</label>
					<input name="profileAbility" type="text">
				</div>
				<div>
					<label>발행처:</label>
					<input name="profileAbilityAgency" type="text">
				</div>
				<div>
					<label>취득월:</label>
					<input name="profileAbilityDate" type="month" placeholder="2016-06">
				</div>
				<div>
					<label>기술능력:</label>
					<input name="profileSkill" type="text">
				</div>
				<div>
					<label>경력사항:</label>
					<input name="profileCareer" type="text">
				</div>
				<div>
					<label>회사명:</label>
					<input name="profileCareerName" type="text">
				</div>
				<div>
					<label>입사년월:</label>
					<input name="profileCareerStartDate" type="month" placeholder="2016-06">
				</div>
				<div>
					<label>퇴사년월:</label>
					<input name="profileCareerEndDate" type="month" placeholder="2016-06">
				</div>
				<div>
					<label>직급직책:</label>
					<input name="profileCareerPosition" type="text">
				</div>
				<div>
					<label>담당업무:</label>
					<input name="profileCareerWork" type="text">
				</div>
				<div>
					<label>한줄소개:</label>
					<input name="profileWriting" type="text">
				</div>
				<div>
					<label>현재상태:</label>
					<input name="profileState" type="text">
				</div>
				<div>
					<label>연락가능시간:</label>
					<input name="profileTime" type="text">
				</div>
				
				<div>
					<input type="submit" value="등록">
				</div>
			</form>
		</div>
		<div>
			<a href="../list">취소</a>
		</div>
	</div>
</body>
</html>