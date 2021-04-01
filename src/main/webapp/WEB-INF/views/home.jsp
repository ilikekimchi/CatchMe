<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<link href="/css/home.css" rel="stylesheet"/>
<link href="/css/category.css" rel="stylesheet"/>

<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="/js/login-modal.js" type="text/javascript"></script>

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
					<span class="search-icon"></span> <input type="text"
						placeholder="카테고리를 입력해주세요.">
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
	</div>
	<div class="login-modal">
		<div class="login-info">
			<h4>LOGIN</h4>
		<!-- sessionScope => 세션(session -> customer가 저장되어있음)에  저장되어있는(Scope)를  불러옴 -->
		<form method="post" action="/login2">
			<div class="id">
				<input name="customerId" type="text" placeholder="아이디" id="id" required="required">
			</div>
			<div class="pwd">
				<input name="customerPw" type="password" placeholder="비밀번호" id="pwd" required="required">
			</div>
			<button class="login-ch" onclick="submit()">로그인</button>
		</form>
			<div class="signup-form">
				<a href="signup">회원가입</a>
				<a href="#">아이디/비밀번호 찾기</a>
			</div>
		</div>
		

		<div class="social">
<<<<<<< HEAD
			<div class="google"></div>
			<div class="kakao"></div>
			<a href="${url}">
				<div class="naver"></div>
			</a>
=======
			<a><div class="google"></div></a><!-- 구글 추가 -->
			<a><div class="kakao"></div></a><!-- 카카오 추가 -->
			<a href="naverLogin"><div class="naver"></div></a>
			
>>>>>>> 66e2035af79e97ea970d72ab472857bfae60a230
		</div>
	</div>
</body>
</html>