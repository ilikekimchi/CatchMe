<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<link href="/css/home.css" rel="stylesheet" />
<link href="/css/footer.css" rel="stylesheet" />
<link href="/css/category.css" rel="stylesheet" />

<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="/js/login-modal.js" type="text/javascript"></script>
<script src="/js/search.js" type="text/javascript"></script>

<script type="text/javascript">
	$(document).ready(function() {
		var name = ${result}.response.name;
		var email = ${result}.response.email;
		$("#name").html("환영합니다. "+name+"님");
		$("#email").html(email);
	  });
</script>

</head>
<body>
	<div class="container">
		<div class="main">
			<h1 class="catchme">
				<a href="/"> <span>Catch ME IF YOU CAN!</span>
				</a>
			</h1>
			<div class="search-box">
				<div class="search-area">
					<span class="region-search">근무지역</span> <span class="line1"></span>
					<span class="job-search">직무 · 직종</span> <span class="line2"></span> <input
						type="text" placeholder="카테고리를 입력해주세요."> <span
						class="search-icon"></span>
				</div>
				<div class="region">
					<span class="search-close"></span>
				</div>
				<div class="job">
					<span class="search-close"></span>
				</div>
			</div>
			<div class="category">
				<div class="item">
					<a href="#" class="plain">
						<div class="icon icon1"></div>
						<div>IT·프로그래밍</div>
					</a>
				</div>
				<div class="item">
					<a href="#" class="plain">
						<div class="icon icon2"></div>
						<div>음악·영상</div>
					</a>
				</div>
				<div class="item">
					<a href="#" class="plain">
						<div class="icon icon3"></div>
						<div>전문기술</div>
					</a>
				</div>
				<div class="item">
					<a href="#" class="plain">
						<div class="icon icon4"></div>
						<div>서비스</div>
					</a>
				</div>
				<div class="item">
					<a href="#" class="plain">
						<div class="icon icon5"></div>
						<div>마케팅</div>
					</a>
				</div>
				<div class="item">
					<a href="#" class="plain">
						<div class="icon icon6"></div>
						<div>레슨·교육</div>
					</a>
				</div>
				<div class="item">
					<a href="#" class="plain">
						<div class="icon icon7"></div>
						<div>문서·글쓰기</div>
					</a>
				</div>
				<div class="item">
					<a href="#" class="plain">
						<div class="icon icon8"></div>
						<div>번역·통역</div>
					</a>
				</div>
				<div class="item">
					<a href="#" class="plain">
						<div class="icon icon9"></div>
						<div>패션·디자인</div>
					</a>
				</div>
			</div>
		</div>
	</div>
	<div class="login">
		<span class="login-icon"></span>
		<c:if test="${sessionScope.sessionId != null || sessionScope.customer != null || sessionScope.company != null}">
			<div class="new">
			<span>N</span>
			</div>
		</c:if>
	</div>
	<div class="login-modal">
		<c:if test="${sessionScope.sessionId == null && sessionScope.customer == null && sessionScope.company == null}">
			<div class="login-info">
				<!-- sessionScope => 세션(session -> customer가 저장되어있음)에  저장되어있는(Scope)를  불러옴 -->
				<ul class="member">
					<li class="customer click">개인회원</li>
					<li class="company out">기업회원</li>
				</ul>
				<!-- 이직자 로그인 -->
				<form method="post" name="loginForm" action="/login2" class="customer-form">
					<div class="id">
						<input name="customerId" type="text" placeholder="아이디" class="customer-id"
							required="required">
					</div>
					<div class="pwd">
						<input name="customerPw" type="password" placeholder="비밀번호"
							class="customer-pwd" required="required">
					</div>
					<button disabled="true" class="login-ch" onclick="submit()">로그인</button>
				</form>
				<!-- 이직자 로그인 -->


				<!-- 기업 로그인 -->
				<form method="post" name="loginForm0" action="/login0" class="company-form">
					<div class="id">
						<input name="companyId" type="text" placeholder="아이디" class="company-id"
							required="required">
					</div>
					<div class="pwd">
						<input name="companyPw" type="password" placeholder="비밀번호" class="company-pwd"
							required="required">
					</div>
					<button disabled="true" class="login-ch" onclick="submit()">로그인</button>
				</form>
				<!-- 폼태그 안에 있는 버튼은 따로 지정을 안해도 무조건 submit이 된다, form태그 바깥에 버튼을 두면 엔터키가 안먹힘 -->
			</div>
			<!-- 기업 로그인 -->
			<div class="info-remember">
				<input type="checkbox"> <span class="remember">계정
					기억하기</span>
			</div>
			<div class="signup-form">
				<a href="signup">회원가입</a> <a href="#"
					style="border-left: 1px solid #bfbfbf;">아이디 찾기</a>
			</div>
			<div class="social">
				<a><div class="google"></div></a>
				<!-- 구글 추가 -->
				<a><div class="kakao"></div></a>
				<!-- 카카오 추가 -->
				<a href="naverLogin"><div class="naver"></div></a>
			</div>
		</c:if>
		<c:if test="${sessionScope.sessionId != null || sessionScope.customer != null}">
			<h2 style="text-align: center" id="name">${sessionScope.customer.customerNnm} 님</h2>
			<h4 style="text-align: center" id="email">${sessionScope.customer.customerId}</h4>
			<div class="notice">
				<a href="/mypage" class="my-notice">나의 알림</a>
				<div class="notice-nm">
					<span>1</span>
				</div>
			</div>
			<div class="frame">
				<div class="profile"></div>
			</div>
			<a href="/mypage" class="mypage in">
				<span class="mypage-icon"></span>
				<div>마이페이지</div>
			</a>
			<a href="" class="career in">
				<span class="career-icon"></span>
				<div>내 이력서</div>
			</a>
			<a href="logout" class="logout in">
				<span class="logout-icon"></span>
				<div>로그아웃</div>
			</a>
		</c:if>
		<span id="pointer"></span>
	</div>
	<footer>
		<div class="copyright">
			<ul>
				<li class="logo"></li>
				<li>[34503] 대전광역시 동구 우암로 352-21  TEL 042-670-0600   FAX 042-670-0519</li>
			</ul>
		</div>
		<div class="policy">
			<ul>
				<li>찾아오시는 길</li>
				<li>전화번호안내</li>
				<li>개인정보처리방침</li>
				<li>고객센터</li>
				<li>이용약관</li>
				<li>환불정책</li>
			</ul>
		</div>
	</footer>
</body>
</html>