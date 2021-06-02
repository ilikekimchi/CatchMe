<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- static 은 정적컨텐츠, 다이나믹 컨텐츠(jsp 등)는 동적 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="/js/login-modal.js" type="text/javascript"></script>
<script src="/js/search.js" type="text/javascript"></script>
</head>
<body>
<!-- 동적인 기술(JSTL,el 등)을 써야 다이나믹컨텐츠라 은 서버에서 돌아감 즉, 정적(스태틱 컨텐츠)는
서버 하고 아무런 상관이 없음 => 웹 브라우저 내에서만 작동-->
	<div>
		<div><h3>Catch Me</h3></div>
		<!-- 이직자 -->
		<!-- sessionScope => 세션(session -> customer가 저장되어있음)에  저장되어있는(Scope)를  불러옴 -->
		<c:if test="${sessionScope.sessionId == null && sessionScope.customer == null && sessionScope.company == null}">
		<div>
			<a href="/signup">회원가입</a> 
		</div>
		<div>
		<h3>이직자  로그인</h3>
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
			<button class="login-ch" onclick="submit()">로그인</button>
		</form>
	<!-- 이직자 로그인 -->
		</div>		
		<!-- 기업 -->
		<!-- sessionScope => 세션(session -> customer가 저장되어있음)에  저장되어있는(Scope)를  불러옴 -->
		<div>
		<h3>기업  로그인</h3>
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
					<button  class="login-ch" onclick="submit()">로그인</button>
				</form>
				<!-- 폼태그 안에 있는 버튼은 따로 지정을 안해도 무조건 submit이 된다, form태그 바깥에 버튼을 두면 엔터키가 안먹힘 -->
			</div>
			<!-- 기업 로그인 -->
			</c:if>
		<c:if test="${sessionScope.customer != null}">
			<div>
				${sessionScope.customer.customerGender} | ${sessionScope.customer.customerNnm}님 <a href="logout">로그아웃</a> | <a href="/customer/list">마이페이지</a>
			</div>
		</c:if>
		<c:if test="${sessionScope.company != null}">
			<div>
				${sessionScope.company.companyImg} | ${sessionScope.company.companyName} <a href="logout">로그아웃</a> | <a href="/company/list">마이페이지</a>
			</div>
		<c:if test="${sessionScope.sum != null}">	
			<div>
				현재코인: ${sessionScope.sum}코인
			</div>
		</c:if>
		<c:if test="${sessionScope.sum == null}">	
			<div>
				현재코인: 0코인
			</div>
		</c:if>
		</c:if>
		
		<div>
			<ul>
			<h1>기능들 정리</h1>
				<li><a href="/customer/list">내정보(이직자 전용)</a></li>
				<li><a href="/profile/list">my이력서보기(이직자 전용)</a></li>
				<li><a href="/company/list">내정보(기업 전용)</a></li>
				<li><a href="/board/list">명함 모두 보기</a></li>
				<li><a href="/resume/list">포트폴리오 관리(이직자 전용)</a></li>
				<li><a href="/pay/cart">코인 충전</a></li>
				<li><a href="/pay/list">결제내역(기업 전용)</a></li>
				<li><a href="/customer/list-admin">이직자 목록(관리자전용)</a></li>
			</ul>
		</div>
	</div>
</body>
</html>