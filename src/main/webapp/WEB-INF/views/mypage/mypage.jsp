<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<link href="/css/mypage.css" rel="stylesheet" />

</head>
<body>

	<link
		href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700;900&family=Roboto:wght@400;700;900&display=swap"
		rel="stylesheet">

	<!-- 폰트어썸 불러오기 -->
	<link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css">

	<!-- 제이쿼리 불러오기 -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


	<div class="top-bar">

		<div class="con">


			<nav class="menu-box-1">
				<ul class="row flex flex-ai-c">
					<li class="cell"><a href="#">사람정보</a></li>
					<li class="cell"><a href="#">기업정보</a></li>
					<li class="cell"><a href="#">라운지</a></li>
					<li class="cell"><a href="#">마이페이지</a></li>
				</ul>
			</nav>

			<a href="#" class="btn-go-submit"><img
				src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/LinkedIn_logo_initials.png/600px-LinkedIn_logo_initials.png"
				alt=""></a>

		</div>

	</div>

	<div class="add">

		<div class="img-box">

			<a href="#"><img
				src="https://postfiles.pstatic.net/MjAyMTA0MTRfMTg2/MDAxNjE4Mzg5NTYwNTc1.dGlO6Gxac872YbCXRGAm_Ecw7WIGNBR_oHanmdVq2R4g.xfJEQ-CoXZXpAZgTK9NlWVCdmIRLcwm2k6bhYW06fSMg.JPEG.anvkak3000/%EA%B4%91%EA%B3%A0.jpg?type=w580"
				alt=""></a>

		</div>

		<div class="go-top">

			<button>위로</button>

		</div>

	</div>



	<div class="side-bar">

		<div class="logo-box">

			<a href="/"><img
				src="https://pds.saramin.co.kr/company/logo/202008/21/qfedx5_ny73-1meg1kx_logo.png"
				alt=""></a>

		</div>

		<nav class="side-menu">

			<ul>
				<li><a href="/mypage"><i class="fas fa-home"></i>개인회원 홈</a></li>

				<li><a href="/userinfo"><i class="fas fa-user-edit"></i>회원정보</a></li>
				<li><a href="#"><i class="far fa-address-card"></i>이력서</a></li>
				<li><a href="#"><i class="far fa-building"></i>기업의 요청</a></li>
				<li><a href="#"><i class="fas fa-handshake"></i>매칭된 기업</a></li>
				<li><a href="#"><i class="fas fa-caret-square-down"></i>메뉴4</a></li>
			</ul>

		</nav>

	</div>

	<div class="myhome con">

		<div class="title">

			<p>열정! 열정! 열정! ${sessionScope.customer.customerNnm}님</p>

		</div>

		<div class="alarm">
			<ul>
				<li><a href="#">1</a><span>나의 알림</span></li>
				<li><a href="#">2</a><span>기업의 요청</span></li>
				<li><a href="#">3</a><span>수락한 요청</span></li>
				<li><a href="#">4</a><span>관심 기업</span></li>
			</ul>
		</div>

		<div class="biz-card">

			<div class="biz-card-title">
				<p>노출되는 이력카드</p>
			</div>

			<div class="biz-card-1">

				<div class="img-box">

					<a href="#"><img
						src="https://i.pinimg.com/564x/60/ee/69/60ee6916e93413b06e8b319a21521fc3.jpg"
						alt=""></a>

				</div>

				<div class="biz-card-small">

					<div class="name">${sessionScope.customer.customerNnm}</div>
					<div class="birth">(1995)</div>
					<div class="rank">직급 ex) 대리</div>
					<div class="career">경력 ex) 1~2년차</div>
					<div class="education">학력 ex) 최종학력까지만 대학 4년제 졸업</div>
					<div class="short-intro">한줄소개 최대50자</div>

				</div>

				<div class="biz-card-button">

					<button class="update">수정하기</button>
					<button class="status">현재상태</button>

				</div>

				<div class="license">

					<ul>
						<li>Spring</li>
						<li>JavaScript</li>
						<li>JQuery</li>
						<li>React</li>
						<li>Vue</li>
						<li>Java</li>
					</ul>

				</div>

			</div>



		</div>

	</div>


</body>
</html>