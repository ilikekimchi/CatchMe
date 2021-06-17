<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<link href="/css/normal.css" rel="stylesheet" />
<link href="/css/resume.css" rel="stylesheet" />

<!-- 폰트어썸 불러오기 -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<jsp:include page="../footer.jsp" />
<jsp:include page="../topbar.jsp" />

<script src="/js/resume.js" type="text/javascript"></script>

<script type="text/javascript">
	$(document).ready(function() {

		$('#file').on('change', function() {

			ext = $(this).val().split('.').pop().toLowerCase(); //확장자

			//배열에 추출한 확장자가 존재하는지 체크
			if ($.inArray(ext, [ 'gif', 'png', 'jpg', 'jpeg' ]) == -1) {
				resetFormElement($(this)); //폼 초기화
				window.alert('이미지 파일이 아닙니다! (gif, png, jpg, jpeg 만 업로드 가능)');
			} else {
				file = $('#file').prop("files")[0];
				blobURL = window.URL.createObjectURL(file);
				$('#img').attr('src', blobURL);

				$(this).slideUp(); //파일 양식 감춤
			}
		});

	});
</script>

<style>
</style>

</head>
<body>

	<div class="side-bar">

		<div class="logo-box">

			<a href="#"><img
				src="https://pds.saramin.co.kr/company/logo/202008/21/qfedx5_ny73-1meg1kx_logo.png"
				alt=""></a>

		</div>

		<nav class="side-menu">

			<ul>
				<li><a href="/mypage"><i class="fas fa-home"></i>개인회원 홈</a></li>
				<li><a href="/userinfo"><i class="fas fa-user-edit"></i>회원정보</a></li>
				<li><a href="/resume"><i class="far fa-address-card"></i>이력서</a></li>
				<li><a href="/requestUser"><i class="far fa-building"></i>기업의
						요청</a></li>
				<li><a href="/matchUser"><i class="fas fa-handshake"></i>매칭된
						기업</a></li>
			</ul>

		</nav>

	</div>

	<div class="myhome con">

		<div class="home-title">

			<p>이력서 등록</p>

		</div>

		<div class="user-info">

			<form id="add" name="form" method="post" action=""
				enctype="multipart/form-data">

				<!--            <div class="display-none">
           <input type="hidden" name="jobLarge" type="text">
           <input type="hidden" name="jobSmall" type="text">
           <input type="hidden" name="area1" type="text">
           <input type="hidden" name="area2" type="text" >
           </div> -->

				<div class="display-none">
					<label>아이디:</label> ${sessionScope.customer.customerId}
				</div>

				<div class="display-none">
					<label>이름:</label> ${sessionScope.customer.customerName}
				</div>
				<div class="display-none">
					<label>전화번호:</label> ${sessionScope.customer.customerPhone}
				</div>
				<div class="display-none">
					<label>주소:</label> ${sessionScope.customer.customerAddress}
				</div>
				<div class="display-none">
					<label>생년월일:</label> ${sessionScope.customer.customerBirthday}
				</div>
				<div class="display-none">
					<label>성별:</label> ${sessionScope.customer.customerGender}
				</div>

				<div class="img-box">
					<input class="img-change display-none" name="uploadFile"
						type="file" id="file"> <a href="#"
						class="img-change-click"><img id="img"
						src="https://i.pinimg.com/564x/60/ee/69/60ee6916e93413b06e8b319a21521fc3.jpg"
						alt="" onclick='document.all.uploadFile.click()'></a>



				</div>

				<div class="user-basic-info">

					<div class="gibon">

						<div class="title">한줄소개</div>

						<div class="name flex font-left border">

							<input name="profileWriting" type="text" class="input-style"
								placeholder="최대 50자" maxlength="50">

						</div>
					</div>

					<div class="job-info">

						<div class="sub-title">희망직종</div>

						<div class="job">

							<div class="job-fin hap">

								<div class="fin wid-1">구분</div>

								<div class="select-view">
									<p class="job-list-view"
										onclick="$('.job-list').trigger('click');">선택</p>
									<p class="job-small-list-view"
										onclick="$('.job-small-list').trigger('click');">선택</p>
								</div>

								<div class="select-box">

									<ul class="select-ul job-select-ul job-list">
										<li class="job-search-menu">선택</li>
									</ul>

									<ul class="select-ul job-small-list">
										<li class="job-small-search-menu">선택</li>
									</ul>

								</div>

							</div>

							<input name="jobCode" class="jobCode visible" type="number">
							<input name="jobSeq" class="jobSeq visible" type="number">
							<input name="jobLarge" class="jobLarge visible" type="text">
							<input name="jobSmall" class="jobSmall visible" type="text">

						</div>

					</div>

					<div class="area-info">

						<div class="sub-title">근무지역</div>

						<div class="area">

							<div class="area-fin hap">

								<div class="fin wid-1">구분</div>

								<div class="select-view">
									<p class="area-list-view"
										onclick="$('.area-list').trigger('click');">선택</p>
									<p class="area2-list-view"
										onclick="$('.area2-list').trigger('click');">선택</p>
								</div>

								<div class="select-box">

									<ul class="select-ul area-list">
										<li class="area1">선택</li>
									</ul>

									<ul class="select-ul area2-list">
										<li class="area2">선택</li>
									</ul>

								</div>

							</div>

							<input name="areaCode" class="areaCode visible" type="number">
							<input name="areaSeq" class="areaSeq visible" type="number">
							<input name="area1" class="area1 visible" type="text"> <input
								name="area2" class="area2 visible" type="text">


						</div>

					</div>



					<div class="edu-info">

						<div class="sub-title">최종학력</div>

						<div class="sc">

							<div class="sc-name hap">

								<div class="title wid-1">학교명</div>
								<input type="text" class="input-style" name="profileSchool">
							</div>

							<div class="sc-major hap">

								<div class="major wid-1">학과 / 전공</div>
								<input type="text" class="input-style" name="profileSchoolSkill">
							</div>

							<div class="sc-fin hap">

								<div class="fin wid-1">구분</div>

								<div class="select-box">



									<ul class="select-ul edu-select-ul">

										<li>중졸</li>
										<li>고졸</li>
										<li>대학(2, 3학년)</li>
										<li>대학교(4년)</li>
										<li>대학원(석사)</li>
										<li>대학원(박사)</li>

										<span><i class="fas fa-angle-down"></i></span>
										<span><i class="fas fa-angle-up"></i></span>
									</ul>

									<input name="profileSchoolState" value="중졸"
										class="profileSchoolState visible" type="text">
								</div>

							</div>


						</div>

					</div>

					<div class="career-info">

						<div class="sub-title">경력사항</div>

						<div class="career-1">



							<div class="career-name hap">

								<div class="title wid-1">회사명</div>
								<input type="text" class="input-style" name="careerCompany">
							</div>

							<div class="hap">

								<div class="wid-1">근무기간</div>
								<input type="text" class="input-style" name="careerDate">
							</div>

							<div class="hap">

								<div class="wid-1">담당업무</div>
								<input type="text" class="input-style" name="careerWork">
							</div>

							<button type="button" class="career-add-1 button-style">
								경력사항 추가 <i class="fas fa-plus"></i>
							</button>

						</div>

						<div class="career-2">

							<div class="just-line"></div>
							<button type="button" class="career-remove-2 button-style">
								삭제 <i class="fas fa-times"></i>
							</button>

							<div class="career-name hap">

								<div class="title wid-1">회사명</div>
								<input type="text" class="input-style" name="careerCompany2">
							</div>

							<div class="hap">

								<div class="wid-1">근무기간</div>
								<input type="text" class="input-style" name="careerDate2">
							</div>

							<div class="hap">

								<div class="wid-1">담당업무</div>
								<input type="text" class="input-style" name="careerWork2">
							</div>

							<button type="button" class="career-add-2 button-style">
								경력사항 추가 <i class="fas fa-plus"></i>
							</button>

						</div>

						<div class="career-3">

							<div class="just-line"></div>
							<button type="button" class="career-remove-3 button-style">
								삭제 <i class="fas fa-times"></i>
							</button>

							<div class="career-name hap">

								<div class="title wid-1">회사명</div>
								<input type="text" class="input-style" name="careerCompany3">
							</div>

							<div class="hap">

								<div class="wid-1">근무기간</div>
								<input type="text" class="input-style" name="careerDate3">
							</div>

							<div class="hap">

								<div class="wid-1">담당업무</div>
								<input type="text" class="input-style" name="careerWork3">
							</div>

							<button type="button" class="career-add-3 button-style">
								경력사항 추가 <i class="fas fa-plus"></i>
							</button>

						</div>

					</div>


					<div class="licen-info">

						<div class="sub-title">자격 / 면허</div>

						<div class="licen-1">

							<div class="licen-name hap">

								<div class="title wid-1">자격증명</div>
								<input type="text" class="input-style" name="certificateName">
							</div>

							<div class="hap">

								<div class="wid-1">발행처</div>
								<input type="text" class="input-style" name="certificateWriting">
							</div>

							<div class="hap">

								<div class="wid-1">취득일</div>
								<input type="date" class="input-style" name="certificateDate">
							</div>

							<button type="button" class="licen-add-1 button-style">
								자격 / 면허 추가 <i class="fas fa-plus"></i>
							</button>

						</div>

						<div class="licen-2">

							<div class="just-line"></div>
							<button type="button" class="licen-remove-2 button-style">
								삭제 <i class="fas fa-times"></i>
							</button>

							<div class="licen-name hap">

								<div class="title wid-1">자격증명</div>
								<input type="text" class="input-style" name="certificateName2">
							</div>

							<div class="hap">

								<div class="wid-1">발행처</div>
								<input type="text" class="input-style"
									name="certificateWriting2">
							</div>

							<div class="hap">

								<div class="wid-1">취득일</div>
								<input type="date" class="input-style" name="certificateDate2">
							</div>


							<button type="button" class="licen-add-2 button-style">
								자격 / 면허 추가 <i class="fas fa-plus"></i>
							</button>

						</div>

						<div class="licen-3">

							<div class="just-line"></div>
							<button type="button" class="licen-remove-3 button-style">
								삭제 <i class="fas fa-times"></i>
							</button>

							<div class="licen-name hap">

								<div class="title wid-1">자격증명</div>
								<input type="text" class="input-style" name="certificateName3">
							</div>

							<div class="hap">

								<div class="wid-1">발행처</div>
								<input type="text" class="input-style"
									name="certificateWriting3">
							</div>

							<div class="hap">

								<div class="wid-1">취득일</div>
								<input type="date" class="input-style" name="certificateDate3">
							</div>


							<button type="button" class="licen-add-3 button-style">
								자격 / 면허 추가 <i class="fas fa-plus"></i>
							</button>

						</div>

						<div class="licen-4">

							<div class="just-line"></div>
							<button type="button" class="licen-remove-4 button-style">
								삭제 <i class="fas fa-times"></i>
							</button>

							<div class="licen-name hap">

								<div class="title wid-1">자격증명</div>
								<input type="text" class="input-style" name="certificateName4">
							</div>

							<div class="hap">

								<div class="wid-1">발행처</div>
								<input type="text" class="input-style"
									name="certificateWriting4">
							</div>

							<div class="hap">

								<div class="wid-1">취득일</div>
								<input type="date" class="input-style" name="certificateDate4">
							</div>


							<button type="button" class="licen-add-4 button-style">
								자격 / 면허 추가 <i class="fas fa-plus"></i>
							</button>

						</div>

						<div class="licen-5">

							<div class="just-line"></div>
							<button type="button" class="licen-remove-5 button-style">
								삭제 <i class="fas fa-times"></i>
							</button>

							<div class="licen-name hap">

								<div class="title wid-1">자격증명</div>
								<input type="text" class="input-style" name="certificateName5">
							</div>

							<div class="hap">

								<div class="wid-1">발행처</div>
								<input type="text" class="input-style"
									name="certificateWriting5">
							</div>

							<div class="hap">

								<div class="wid-1">취득일</div>
								<input type="date" class="input-style" name="certificateDate5">
							</div>


							<button type="button" class="licen-add-5 button-style">
								자격 / 면허 추가 <i class="fas fa-plus"></i>
							</button>

						</div>

					</div>



					<div class="skill-info">

						<div class="sub-title">기술 / 능력</div>

						<div class="skill">
							<!--         
        <button class="test">TEST</button>
        <button class="reset">RESET</button>
        <button class="profile">PROFILE</button>
           -->
							<div class="hap">

								<div class="has-skill wid-1">보유기술</div>
								<input name="skillContent" type="text"
									class="input-style skill_add"
									placeholder="보유기술 입력 (ex. 문서작성능력, 비즈니스영어, 커뮤니케이션스킬, java 등)">
								<button type="button" class="skill-add">
									<i class="fas fa-plus"></i>
								</button>
							</div>

							<div class="skill-list">

								<ul>

								</ul>

							</div>

						</div>

					</div>

					<div class="army-info">

						<div class="sub-title">병역사항</div>

						<div class="army">

							<div class="hap">

								<div class="wid-1">면제사유</div>
								<input type="text" class="input-style" name="profileArmyWriting">
							</div>

							<div class="army-name hap">

								<div class="title wid-1">구분</div>
								<div class="select-box">



									<ul class="select-ul army-select-ul">

										<li>군필</li>
										<li>미필</li>
										<li>면제</li>
										<li>해당없음</li>

										<span><i class="fas fa-angle-down"></i></span>
										<span><i class="fas fa-angle-up"></i></span>
									</ul>

									<input name="profileArmy" value="군필"
										class="profileArmy visible" type="text">

								</div>
							</div>

						</div>

					</div>

					<div class="hope-info">

						<div class="sub-title">희망사항</div>

						<div class="hope">

							<div class="hap">

								<div class="wid-1">희망연봉</div>
								<input type="number" class="input-style" name="profileMoney">
							</div>

							<div class="hap">

								<div class="wid-1">연락가능 시간</div>
								<input type="text" class="input-style" name="profileTime">
							</div>

							<div class="hope-name hap">

								<div class="title wid-1">상태</div>
								<div class="select-box">



									<ul class="select-ul hope-select-ul">

										<li>이력서 비공개</li>
										<li>적극적인 이직</li>
										<li>유연한 이직</li>

										<span><i class="fas fa-angle-down"></i></span>
										<span><i class="fas fa-angle-up"></i></span>
									</ul>

									<input name="profileState" class="profileState visible"
										value="이력서 비공개" type="number">

								</div>
							</div>

						</div>

					</div>

				</div>

			</form>
		</div>




		<div class="nav-bar">

			<div class="nav-bar-title">

				<p>이력서 항목</p>

			</div>

			<button class="job-button">
				<span>희망직종</span>
			</button>
			<button class="edu-button">
				<span>최종학력</span>
			</button>
			<button class="career-button">
				<span>경력사항</span>
			</button>
			<button class="licen-button">
				<span>자격 / 면허</span>
			</button>
			<button class="skill-button">
				<span>기술 / 능력</span>
			</button>
			<button class="army-button">
				<span>병역사항</span>
			</button>
			<button class="hope-button">
				<span>희망사항</span>
			</button>
			<button class="submit-button" type="submit" form="add">등록</button>

		</div>
	</div>


</body>
</html>