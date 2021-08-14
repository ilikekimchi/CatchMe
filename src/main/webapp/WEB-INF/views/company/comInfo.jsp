<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CatchMe - 기업 정보</title>

<link rel="icon" type="image/png" href="/image/favicon/favicon-32x32.png">

<link href="/css/comInfo.css" rel="stylesheet" />
<link href="/css/normal.css" rel="stylesheet" />

<!-- 폰트어썸 불러오기 -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<jsp:include page="../footer.jsp" />
<jsp:include page="../topbar.jsp" />

</head>
<body>

	<div class="side-bar">

		<nav class="side-menu">

			<ul>
				<li><a href="/company/list"><i class="fas fa-home"></i>기업회원
						홈</a></li>
				<li><a href="/comInfo"><i class="fas fa-user-edit"></i>기업정보</a></li>
				<li><a href="/comReq"><i class="far fa-building"></i>요청 목록</a></li>
				<li><a href="/comMatch"><i class="fas fa-handshake"></i>매칭된
						유저</a></li>
				<li><a href="/pay/cart"><i class="fas fa-caret-square-down"></i>코인내역
						/ 충전</a></li>
			</ul>

		</nav>

	</div>

	<div class="myhome con">

		<div class="title">

			<p>기업 정보</p>

		</div>

		<div class="com-info">

			<div class="img-box">

				<a href="#"><img
					src="https://i.pinimg.com/564x/60/ee/69/60ee6916e93413b06e8b319a21521fc3.jpg"
					alt=""></a>

			</div>

			<div class="com-info-sec">

				<div class="name hap">
					<div class="wid-1">기업명</div>
					<input type="text" class="input-style">
				</div>

				<div class="ceo-name hap">
					<div class="wid-1">대표자</div>
					<input type="text" class="input-style">
				</div>

				<div class="open hap">
					<div class="wid-1">설립일</div>
					<input type="text" class="input-style">
				</div>

				<div class="shape hap">
					<div class="wid-1">기업형태</div>
					<input type="text" class="input-style">
				</div>

				<div class="kind hap">
					<div class="wid-1">업종</div>
					<input type="text" class="input-style">
				</div>

				<div class="scale hap">
					<div class="wid-1">사원수</div>
					<input type="text" class="input-style">
				</div>

				<div class="address hap">
					<div class="wid-1">주소</div>
					<input type="text" class="input-style">
				</div>

				<div class="url hap">
					<div class="wid-1">홈페이지</div>
					<input type="text" class="input-style">
				</div>

				<div class="vision hap">
					<div class="wid-1">기업개요 및 비전</div>
					<input type="text" class="input-style">
				</div>

			</div>



		</div>

		<div class="save-btn">

			<button>저장</button>

		</div>

	</div>


</body>
</html>