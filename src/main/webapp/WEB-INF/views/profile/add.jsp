<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<div>
		<div><h3>이력서 등록</h3></div>
		<div>
			<form method="post" action="" enctype="multipart/form-data">
				<div>
					<label>얼굴 이미지:</label>
					<input name="uploadFile" type="file" id="file">
					<p>파일 크기는 최대 50MB 까지 가능합니다.</p>
				</div>
				<div>
					<label>아이디:</label>
					${sessionScope.customer.customerId}
				</div>
					
				<div>
					<label>이름:</label>
					${sessionScope.customer.customerName}
				</div>
				<div>
					<label>전화번호:</label>
					${sessionScope.customer.customerPhone}
				</div>
				<div>
					<label>주소:</label>
					${sessionScope.customer.customerAddress}
				</div>
				<div>
					<label>생년월일:</label>
					${sessionScope.customer.customerBirthday}
				</div>
				<div>
                	<label>성별:</label>
                	${sessionScope.customer.customerGender}
            	</div>
            	<div>
            		<h3>학력</h3>
            	</div>
            	<div>
                	<label>학교명:</label>
                	<input name=profileSchool type="text">
            	</div>
            	<div>
                	<label>학과 및 전공:</label>
                	<input name=profileSchoolSkill type="text">
            	</div>
            	<div>
                	<label>학력구분:</label>
                	<input name=profileSchoolState type="text">
            	</div>
            	<div>
            		<h3>병역사항:</h3>
            	</div>
            	<div>
                	<label>병역구분:</label>
                	<input name=profileArmy type="text">
            	</div>
            	<div>
                	<label>면제사유:</label>
                	<input name=profileArmyWriting type="text">
            	</div>
            	<div>
            		<h3>경력사항</h3>
            	</div>
            	<div>
                	<label>회사명:</label>
                	<input name=careerCompany type="text">
            	</div>
            	<div>
                	<label>담당업무:</label>
                	<input name=careerWork type="text">
            	</div>
            	<div>
                	<label>job 코드:</label>
                	<input name=jobCode type="number">
            	</div>
            	<div>
                	<label>직종 분류:</label>
                	<input name=jobLarge type="text">
            	</div>
            	<div>
                	<label>직업 분류:</label>
                	<input name=jobSmall type="text">
            	</div>
            	<div>
                	<label>경력:</label>
                	<input name=careerDate type="text">
            	</div>
            	<div>
            		<h3>자격/면허</h3>
            	</div>
            	<div>
                	<label>자격증명:</label>
                	<input name=certificateName type="text">
            	</div>
            	<div>
                	<label>취득일:</label>
                	<input name=certificateDate type="date" >
            	</div>
            	<div>
                	<label>발행처:</label>
                	<input name=certificateWriting type="text" >
            	</div>
            	<div>
            		<h3>기술능력</h3>
            	</div>
            	<div>
                	<label>내용:</label>
                	<input name=skillContent type="text" >
            	</div>
            	<div>
            		<h3>희망사항</h3>
            	</div>
            	<div>
                	<label>area 코드:</label>
                	<input name=areaCode type="number">
            	</div>
            	<div>
                	<label>희망지역:</label>
                	<input name=area1 type="text">
            	</div>
            	<div>
                	<label>희망지역(시/군/구):</label>
                	<input name=area2 type="text">
            	</div>
            	<div>
                	<label>희망연봉:</label>
                	<input name=profileMoney  type="number" >
            	</div>
            	<div>
                	<label>상태:</label>
                	<input name=profileState  type="number" >
            	</div>
            	<div>
            		<h3>기타사항</h3>
            	</div>
            	<div>
                	<label>한줄소개:</label>
                	<input name=profileWriting type="text" >
            	</div>
            	<div>
                	<label>연락가능 시간:</label>
                	<input name=profileTime type="text" >
            	</div>
            	
				<div>
					<input type="submit" value="등록">
				</div>
			</form>
		</div>
		<div>
			<a href="list">이력서 목록</a>
		</div>
	</div>
</body>
</html>