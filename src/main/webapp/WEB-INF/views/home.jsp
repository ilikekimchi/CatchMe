<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style type="text/css">
body {
	overflow: hidden;
}

html, body {
	margin: 0;
	padding: 0;
}

h1, h2, h3, h4 {
	margin: 0;
}

input {
	box-shadow: none;
	font-size: 1em;
	-webkit-appearance: none;
	-moz-appearance: none;
	-o-appearance: none;
	appearance: none;
	-webkit-border-radius: 0;
	border: none;
}

input:focus {
	outline: none;
}

button {
	background: inherit;
	border: none;
	box-shadow: none;
	border-radius: 0;
	padding: 0;
	overflow: visible;
	cursor: pointer;
	outline: none;
}

.container {
	position: absolute;
	width: 100%;
	height: 100%;
	margin: 0 auto;
	min-width: 1100px;
}

.main {
	width: 1100px;
	height: 0;
	margin: 0 auto;
}

.catchme {
	background-image: url("resources/image/main-logo.png");
	width: 407px;
	height: 124px;
	position: relative;
	top: 150px;
	margin: 0 auto;
}

.catchme>a {
	text-decoration: none;
	-webkit-tap-highlight-color: transparent;
	font-size: 24px;
}

.catchme>a>span {
	color: transparent;
}

.login {
	position: absolute;
	top: 20px; right : 50px; width : 38px;
	height: 38px;
	background: #a3c1ff;
	border-radius: 20px;
	cursor: pointer;
	width: 38px;
	right: 50px;
}

.login-icon {
	background-image: url("resources/image/profile.png");
	background-repeat: no-repeat;
	position: absolute;
	width: 20px;
	height: 28px;
	margin: 7px 9px 1px 9px;
}

.search-box {
	position: relative;
	display: flex;
	top: 250px;
	width: 672px;
	margin: 0 auto;
}

.search-area {
	background: #f1f1f1;
	width: 100%;
	height: 46px;
	box-sizing: border-box;
	border: 1px solid #bfbfbf;
	border-radius: 25px;
}

.search-area>input {
	width: 80%;
	height: 40px;
	padding: 3px 0px 3px 66px;
	background: none;
}

.search-icon {
	position: absolute;
	background-image: url("resources/image/search.png");
	background-repeat: no-repeat;
	width: 24px;
	height: 24px;
	top: 10px;
	left: 20px;
}

.category {
	position: relative;
	top: 370px;
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.item {
	
}

.icon {
	margin: 25px auto;
	cursor: pointer;
	position: relative;
}

.icon1 {
	background-image: url("resources/image/icon/IT.png");
	background-repeat: no-repeat;
	width: 45px;
	height: 39px;
}

.plain:hover>.icon1 {
	background-image: url("resources/image/icon/IT-hover.png");
	top: -15px;
}

.icon2 {
	background-image: url("resources/image/icon/music.png");
	background-repeat: no-repeat;
	width: 26px;
	height: 39px;
}

.plain:hover>.icon2 {
	background-image: url("resources/image/icon/music-hover.png");
	top: -15px;
}

.icon3 {
	background-image: url("resources/image/icon/professional.png");
	background-repeat: no-repeat;
	width: 42px;
	height: 39px;
}

.plain:hover>.icon3 {
	background-image: url("resources/image/icon/professional-hover.png");
	top: -15px;
}

.icon4 {
	background-image: url("resources/image/icon/service.png");
	background-repeat: no-repeat;
	width: 51px;
	height: 39px;
}

.plain:hover>.icon4 {
	background-image: url("resources/image/icon/service-hover.png");
	top: -15px;
}

.icon5 {
	background-image: url("resources/image/icon/marketing.png");
	background-repeat: no-repeat;
	width: 49px;
	height: 39px;
}

.plain:hover>.icon5 {
	background-image: url("resources/image/icon/marketing-hover.png");
	top: -15px;
}

.icon6 {
	background-image: url("resources/image/icon/lesson.png");
	background-repeat: no-repeat;
	width: 49px;
	height: 39px;
}

.plain:hover>.icon6 {
	background-image: url("resources/image/icon/lesson-hover.png");
	top: -15px;
}

.icon7 {
	background-image: url("resources/image/icon/write.png");
	background-repeat: no-repeat;
	width: 49px;
	height: 39px;
}

.plain:hover>.icon7 {
	background-image: url("resources/image/icon/write-hover.png");
	top: -15px;
}

.icon8 {
	background-image: url("resources/image/icon/transration.png");
	background-repeat: no-repeat;
	width: 49px;
	height: 39px;
}

.plain:hover>.icon8 {
	background-image: url("resources/image/icon/transration-hover.png");
	top: -15px;
}

.icon9 {
	background-image: url("resources/image/icon/design.png");
	background-repeat: no-repeat;
	width: 49px;
	height: 39px;
}

.plain:hover>.icon9 {
	background-image: url("resources/image/icon/design-hover.png");
	top: -15px;
}

.plain {
	text-decoration: none;
	color: black;
}

.login-modal {
	position: absolute;
	top: 65px;
	right: 45px;
	width: 300px;
	height: 400px;
	background: white;
	box-shadow: 0px 1px 4px 0px black;
	border-radius: 10px;
	display: none;
}

.social {
	position: absolute;
	top: 285px;
	left: 25px;
	display: flex;
	justify-content: space-between;
	align-items: center;
	width: 250px;
	margin: 0 auto;
}

.naver {
	background-image: url("resources/image/social-login/naver.png");
	width: 47px;
	height: 46px;
	border-radius: 30px;
	box-shadow: 1px 1px 1px 0px black;
	cursor: pointer;
}

.kakao {
	background-image: url("resources/image/social-login/kakao.png");
	width: 48px;
	height: 48px;
	border-radius: 30px;
	box-shadow: 1px 1px 1px 0px black;
	cursor: pointer;
}

.google {
	background-image: url("resources/image/social-login/google.png");
	background-color: white;
	width: 48px;
	height: 48px;
	border-radius: 30px;
	box-shadow: 1px 1px 1px 0px black;
	cursor: pointer;
}

.active {
	display: block;
}

.profile {
	background-image: url("resources/image/warning.png");
	width: 65px;
	height: 65px;
	
	position: absolute;
    top: 30px;
    left: 120px;
}

.login-info {
	position: relative;
	top: 45px;
	
	width: 250px;
	margin: 0 auto;
}

.login-info > div > input {
	width: 90%;
	padding: 7px 12px 7px;
	font-size: 13px;
}

.login-info > h4 {
	position: absolute;
	font-size: 18px;
	top: -40px;
	left: 95px;
}

.id {
	height: 30px;
	margin: 10px 0;
	
	border: 1px solid #bfbfbf;
}

.pwd {
	height: 30px;
	margin: 10px 0;
	
	border: 1px solid #bfbfbf;
}

.login-ch {
	width: 250px;
	height: 45px;
	margin: 0;
	
	border: 1px solid #bfbfbf;
	
	text-align: center;
    background: #bfbfbf;
    color: #f6f3f3;
    letter-spacing: 2px;
    font-size: 15px;
    
    cursor: pointer;
}

.ready {
	background: #0070af;
}

.signup-form {
	position: relative;
    display: flex;
    justify-content: space-between;
    width: 210px;
    margin: 0 auto;
    top: 13px;
}

.signup-form > a {
	color: #545353;
    text-decoration: none;
    float: right;
    font-weight: 600;
    font-size: 13px;
}
</style>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
	$(function() {
		
		let id;
		let pwd;
		
		 $("#id, #pwd").on("propertychange change keyup paste input", function() {
            
			if($('#id').val() != '' && $('#pwd').val() != '') {
				$('.login-ch').addClass('ready');
			} else {
				
				$('.login-ch').removeClass('ready');
			}
            
          });
		
		
		$('.login').click(function() {

			$('.login-modal').toggleClass('active');

		})
		
		$('.container').click(function() {
			$('.login-modal').removeClass('active');
		})
		
		

	})
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
			<div class="id">
				<input type="text" placeholder="아이디" id="id">
			</div>
			<div class="pwd">
				<input type="password" placeholder="비밀번호" id="pwd">
			</div>
			<button class="login-ch">로그인</button>
			<div class="signup-form">
				<a href="#">회원가입</a>
				<a href="#">아이디/비밀번호 찾기</a>
			</div>
		</div>
		<div class="social">
			<div class="google"></div>
			<div class="kakao"></div>
			<div class="naver"></div>
		</div>
	</div>
</body>
</html>