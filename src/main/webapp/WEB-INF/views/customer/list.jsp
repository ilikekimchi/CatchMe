<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<link href="/css/userinfo.css" rel="stylesheet" />
<link href="/css/normal.css" rel="stylesheet" />

<!-- 폰트어썸 불러오기 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<jsp:include page="../footer.jsp" />
<jsp:include page="../topbar.jsp" />
		
<script src="/js/userinfo.js" type="text/javascript"></script>

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
				<li><a href="/profile/list"><i class="fas fa-home"></i>개인회원 홈</a></li>

				<li><a href="/customer/list"><i class="fas fa-user-edit"></i>회원정보</a></li>
				<li><a href="/resume"><i class="far fa-address-card"></i>이력서</a></li>
				<li><a href="/requestUser"><i class="far fa-building"></i>기업의 요청</a></li>
				<li><a href="/matchUser"><i class="fas fa-handshake"></i>매칭된 기업</a></li>
			</ul>

		</nav>

	</div>

	<div class="myhome con">

		<div class="title">

			<p>회원정보</p>

		</div>

		<div class="user-info">

			<div class="img-box">

				<a href="#"><img
					src="https://i.pinimg.com/564x/60/ee/69/60ee6916e93413b06e8b319a21521fc3.jpg"
					alt=""></a>

			</div>

			<div class="user-basic-info">

				<div class="gibon">

					<div class="title">기본정보</div>

					<div class="name flex font-left border">

						<div class="name-title wid-1">이름</div>
						<div class="name-val">${sessionScope.customer.customerNnm}</div>

					</div>

					<div class="year flex font-left border">

						<div class="year-title wid-1">생년월일</div>
						<div class="year-val">
							<fmt:formatDate value="${sessionScope.customer.customerBirthday}" pattern="yyyy년 MM월 dd일"/>
						</div>

					</div>

					<div class="sex flex font-left border">

						<div class="sex-title wid-1">성별</div>
						<div class="sex-val">${sessionScope.customer.customerGender}</div>

					</div>

				</div>

				<div class="tel-info">

					<div class="title">연락처 정보</div>

					<div class="phone flex font-left border">

						<div class="phone-title wid-1">휴대폰</div>

						<div class="phone-val">
							<c:if test="${sessionScope.customer.customerPhone == null}">
								<div>등록된 휴대폰 번호가 없습니다.</div>
							</c:if>
							<c:if test="${sessionScope.customer.customerPhone != null}">
								<div>${sessionScope.customer.customerPhone}</div>
								<div class="prove">인증</div>
							</c:if>
						</div>

						<button type="button" class="tel-confirm-button confirm">확인</button>	
						<button type="button" class="tel-update-button update">수정</button>
						

					</div>

					<div class="mail flex font-left border">

						<div class="mail-title wid-1">이메일</div>
						<div class="mail-val">${sessionScope.customer.customerId}</div>

						<div class="prove">인증</div>

					</div>

					<div class="address flex font-left border">

						<div class="address-title wid-1">주소</div>
						<div class="address-val">
							<c:if test="${sessionScope.customer.customerAddress == null}">
								<div>등록된 주소가 없습니다.</div>
							</c:if>
							<c:if test="${sessionScope.customer.customerAddress != null}">
								<div>${sessionScope.customer.customerAddress}</div>
							</c:if>
						</div>

						<button>수정</button>

					</div>

				</div>

			</div>

		</div>

	</div>
	

</body>
</html>