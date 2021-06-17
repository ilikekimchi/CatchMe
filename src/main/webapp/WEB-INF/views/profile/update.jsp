<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<div>
		<div><h3>이력서 수정</h3></div>
		<div>
			<form method="post" action="" enctype="multipart/form-data">
				<div>
					<label>얼굴 이미지:</label>
					<input name="uploadFile" type="file" id="file">
				</div>	
				<div>
					<label>이름:</label>
					${item.customerName}
				</div>
				<div>
					<label>전화번호:</label>
					${item.customerPhone}
				</div>
				<div>
					<label>주소:</label>
					${item.customerAddress}
				</div>
				<div>
					<label>생년월일:</label>
					${item.customerBirthday}
				</div>
				<div>
                	<label>성별:</label>
                	${item.customerGender}
            	</div>
            	
            <!-- 학력 -->
            	<div>
            		<h3>학력</h3>
            	</div>
            	<div>
                	<label>학교명:</label>
                	<input name=profileSchool type="text"  value="${item.profileSchool}">
            	</div>
            	<div>
                	<label>학과 및 전공:</label>
                	<input name=profileSchoolSkill type="text"  value="${item.profileSchoolSkill}">
            	</div>
            	<div>
                	<label>학력구분:</label>
                	<input name=profileSchoolState type="text"  value="${item.profileSchoolState}">
            	</div>
            <!-- 학력 -->	
            
            <!-- 병역사항 -->
            	<div>
            		<h3>병역사항:</h3>
            	</div>
            	<div>
                	<label>병역구분:</label>
                	<input name=profileArmy type="text"  value="${item.profileArmy}">
            	</div>
            	<div>
                	<label>면제사유:</label>
                	<input name=profileArmyWriting type="text"  value="${item.profileArmyWriting}">
            	</div>
            <!-- 병역사항 -->	
            
            <!-- 경력사항 -->
            	<div>
            		<h3>경력사항</h3>
            	</div>
            	<div>
                	<label>회사명:</label>
                	<input name=careerCompany type="text" value="${item.careerCompany}">
            	</div>
            	<div>
                	<label>담당업무:</label>
                	<input name=careerWork type="text" value="${item.careerWork}">
            	</div>
            	<div>
                	<label>job Seq:</label>
                	<input name=jobSeq type="number" value="${item.jobSeq}">
            	</div>
            	<div>
                	<label>job 코드:</label>
                	<input name=jobCode type="number" value="${item.jobCode}">
            	</div>
            	<div>
                	<label>직종 분류:</label>
                	<input name=jobLarge type="text" value="${item.jobLarge}">
            	</div>
            	<div>
                	<label>직업 분류:</label>
                	<input name=jobSmall type="text" value="${item.jobSmall}">
            	</div>
            	<div>
                	<label>경력:</label>
                	<input name=careerDate type="text" value="${item.careerDate}">
            	</div>
            <!-- 경력사항 -->
            
            <!-- 자격/면허 -->
            	<div>
            		<h3>자격/면허</h3>
            	</div>
            	<div>
                	<label>자격증명:</label>
                	<input name=certificateName type="text"  value="${item.certificateName}">
            	</div>
            	<div>
                	<label>취득일:</label>
                	<input name=certificateDate type="date"  value="${item.certificateDate}">
                	<label>현재 취득일:
            		<fmt:formatDate pattern="yyyy-MM-dd" value="${item.certificateDate}"/></label>
            	</div>
            	<div>
                	<label>발행처:</label>
                	<input name=certificateWriting type="text"  value="${item.certificateWriting}">
            	</div>
            <!-- 자격/면허 -->
            
            <!-- 기술능력 -->
            	<div>
            		<h3>기술능력</h3>
            	</div>
            	<div>
                	<label>내용:</label>
                	<input name=skillContent type="text"  value="${item.skillContent}">
            	</div>
            <!-- 기술능력 -->
            
            <!-- 희망사항 -->	
            	<div>
            		<h3>희망사항</h3>
            	</div>
            	<div>
                	<label>area Seq:</label>
                	<input name=areaSeq type="number" value="${item.areaSeq}">
            	</div>
            	<div>
                	<label>area 코드:</label>
                	<input name=areaCode type="number" value="${item.areaCode}">
            	</div>
            	<div>
                	<label>희망지역:</label>
                	<input name=area1 type="text" value="${item.area1}">
            	</div>
            	<div>
                	<label>희망지역(시/군/구):</label>
                	<input name=area2 type="text" value="${item.area2}">
            	</div>
            	<div>
                	<label>희망연봉:</label>
                	<input name=profileMoney  type="number" value="${item.profileMoney}">
            	</div>
            	<div>
                	<label>상태:</label>
                	<input name=profileState  type="number" value="${item.profileState}">
            	</div>
            <!-- 희망사항 -->
            
            <!-- 기타사항 -->
            	<div>
            		<h3>기타사항</h3>
            	</div>
            	<div>
                	<label>한줄소개:</label>
                	<input name=profileWriting type="text"  value="${item.profileWriting}">
            	</div>
            	<div>
                	<label>연락가능 시간:</label>
                	<input name=profileTime type="text"  value="${item.profileTime}">
            	</div>
            	<div>
            		<label>현재 최종 수정일:
            		<fmt:formatDate pattern="yyyy-MM-dd" value="${item.profileDate}"/></label>
            	</div>
            <!-- 기타사항 -->	
            
				<div>
					<input type="submit" value="등록">
				</div>
			</form>
		</div>
		<div>
			<a href="../list">이력서 목록으로</a>
		</div>
	</div>
</body>
</html>