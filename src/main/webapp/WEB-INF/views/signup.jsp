<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link href="/css/signup.css" rel="stylesheet" />
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.12.4.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://unpkg.com/vuex"></script>
<script src="https://unpkg.com/vue-router/dist/vue-router.js"></script>

<script src="/js/jquery.transform2d.js"></script>
<script src="/js/signup0.js" type="text/javascript"></script>
<script src="/js/signup.js" type="text/javascript"></script>

<script type="text/javascript">
	$(function() {
		$('.signup-company').mouseenter(function() {
			$('.company-hover').css('opacity', '0.5');
		})

		$('.company-hover').mouseleave(function() {
			$('.company-hover').css('opacity', '0');
		})

		$('.signup-customer').mouseenter(function() {
			$('.customer-hover').css('opacity', '0.5');
		})

		$('.customer-hover').mouseleave(function() {
			$('.customer-hover').css('opacity', '0');
		})

		/* $('.signup-company').click(function() {
			$('.company-form').css('display', 'block');
			$('.first').css('display', 'none');

			$('.company-form').animate({
				opacity : '1',
				left : '210px',
				width : '600px',
				height : '750px',
				top : '-30px'
			}, 500);

		})

		$('.signup-customer').click(function() {
			$('.customer-form').css('display', 'block');
			$('.first').css('display', 'none');

			$('.customer-form').animate({
				opacity : '1',
				left : '210px',
				width : '600px',
				height : '750px',
				top : '-30px'
			}, 500);

		}) */

		/* $('.back').click(function() {
			$('.first').css('display', 'block');


			$('.customer-form').animate({
				opacity : '0',
				left : '528px',
				width : '500px',
				height : '600px',
				top : '0'
			}, 500);
			
			$('.company-form').animate({
				display: 'none',
				opacity : '0',
				left : '0',
				width : '500px',
				height : '600px',
				top : '0'
			}, 500);
		}) */
	})
</script>
</head>
<body>
	<div class="first">
		<h3 class="signup">회원가입</h3>
		<div class="seq">
			<div id="sign-info">
				<span>가입정보</span>
			</div>
			<div id="login-info">
				<span>로그인정보</span>
			</div>
			<div id="profile">
				<span>프로필</span>
			</div>
		</div>
		<div>
			<div class="signup-info">
				<a href="/signup/company-sp" class="signup-company">
					<div class="company-hover">
						<span>기업회원</span>

					</div> <span class="company-icon"></span>
				</a>
				<a href="/signup/customer-sp" class="signup-customer">

					<div class="customer-hover">
						<span>개인회원</span>
					</div> <span class="customer-icon"></span>
				</a>
			</div>
		</div>
	</div>
	<!-- <a href="/" class="home">
		<div class="home-tx">홈으로</div>
	</a> -->
</body>
</html>