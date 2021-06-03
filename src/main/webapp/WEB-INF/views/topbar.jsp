<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>


<link href="/css/top-bar.css" rel="stylesheet" />
<link href="/css/login-modal2.css" rel="stylesheet" />
<script src="/js/login-modal2.js" type="text/javascript"></script>

<script type="text/javascript" src="http://code.jquery.com/jquery-1.12.4.min.js"></script>

</head>
<body>
	
<div class="top-bar">
  
    <div class="logo-box">
    
    <a href="/"><img src="https://i.postimg.cc/dQ2QWTtK/image.png" alt=""></a>
    
  </div>
  
  <div class="con">
    
    
    <nav class="menu-box-1">
      <ul class="row flex flex-ai-c"> 
<li class="cell my-r"><a href="#">지역별</a></li>
<li class="cell my-r"><a href="#">직업별</a></li>
<li class="cell my-r"><a href="#">사람정보</a></li>
<li class="cell my-r"><a href="#">기업정보</a></li>
<li class="cell my-r"><a href="#">기업리뷰</a></li>
<li class="search-box">
  <div class="search-input">
    <input type="text" placeholder="검색어를 입력하세요">
    <button type="submit" class="search-btn">
      
    </button>
  </div>
</li>
      </ul>
    </nav>
    
  </div>
  
  <div class="member">
    
    <a class="go-mypage">
      
      <span class="mypage-img"></span>
      <c:if test="${sessionScope.customer == null}"><span class="name">로그인해주세요</span></c:if>
      <c:if test="${sessionScope.customer != null}"><span class="name customer-name">${sessionScope.customer.customerNnm}</span></c:if>
   
    </a>
    
  </div>
  
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
		<c:if test="${sessionScope.customer != null && sessionScope.company == null}">
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
			<a href="/logout" class="logout in">
				<span class="logout-icon"></span>
				<div>로그아웃</div>
			</a>
		</c:if>
		<c:if test="${sessionScope.customer == null && sessionScope.company != null}">
			<h2 style="text-align: center" id="name">${sessionScope.company.companyName} 님</h2>
			<h4 style="text-align: center" id="email">${sessionScope.company.companyId}</h4>
			<div class="notice">
			<c:if test="${sessionScope.sumCoin != null}">	
				<div>
				현재코인: ${sessionScope.sumCoin}코인
				</div>
			</c:if>
			<c:if test="${sessionScope.sumCoin == null}">	
				<div>
					현재코인: 0코인
				</div>
			</c:if>
			</div>
			<div class="frame">
				<div class="profile"></div>
			</div>
			<a href="/company/list" class="mypage in">
				<span class="mypage-icon"></span>
				<div>마이페이지</div>
			</a>
			<a href="/pay/cart" class="career in">
				<span class="career-icon"></span>
				<div>코인충전소</div>
			</a>
			<a href="/logout" class="logout in">
				<span class="logout-icon"></span>
				<div>로그아웃</div>
			</a>
		</c:if>
		<span id="pointer"></span>
	</div>

</body>
</html>