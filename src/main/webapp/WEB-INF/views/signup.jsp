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

		$('.signup-company').click(function() {
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

		})
		
		$('.back').click(function() {
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
		})
	})
</script>
</head>
<body>
	<div class="second">
		<div class="company-form">
			<div>
				<h3>기업회원가입</h3>
			</div>
			<div>
				<form name="signupForm0" method="post">
					<input name="id_confirm0" type="hidden" value="">
					<div>
						<label>아이디:</label> <input name="companyId" type="text"> <a
							href="javascript:confirmId0()">중복검사</a>
					</div>
					<div>
						<label>비밀번호:</label> <input name="companyPw" type="password">
					</div>
					<div>
						<label>비밀번호 재확인:</label> <input name="passwd_confirm0"
							type="password">
					</div>
					<div>
						<label>기업명:</label> <input name="companyName" type="text">
					</div>
					<div>
						<label>대표자명:</label> <input name="companyRa" type="text">
					</div>
					<div>
						<label>연락처:</label> <input name="companyTel" type="text">
					</div>
					<div>
						<label>연매출:</label> <input name="companyMoney" type="number">원
					</div>
					<div>
						<label>규모(사원 수):</label> <input name="companyScale" type="number">명
					</div>
					<div>
						<label>위치(주소):</label> <input name="companyLocation" type="text">
					</div>
					<div>
						<label>홈페이지 주소(url):</label> <input name="companyHomePage"
							type="text">
					</div>
					<div>
						<label>한줄소개:</label> <input name="companyWriting" type="text">
					</div>
				</form>
				<!-- form태그 바깥에 버튼을 두면 엔터키가 안먹힘 -->
				<div>
					<button onclick="submit()">기업회원가입</button>
				</div>
			</div>
			<div class="back">뒤로가기</div>
		</div>
		<div class="customer-form">
			<div>
				<h3>회원가입</h3>
			</div>
			<div>
				<form name="signupForm" method="post">
					<input name="id_confirm" type="hidden" value="">
					<div>
						<label>아이디:</label> <input name="customerId" type="text">
						<a href="javascript:confirmId()">중복검사</a>
					</div>
					<div>
						<label>비밀번호:</label> <input name="customerPw" type="password">
					</div>
					<div>
						<label>비밀번호 재확인:</label> <input name="passwd_confirm"
							type="password">
					</div>
					<div>
						<label>이름:</label> <input name="customerName" type="text">
					</div>
					<div>
						<label>닉네임:</label> <input name="customerNnm" type="text">
					</div>
				</form>
				<!-- form태그 바깥에 버튼을 두면 엔터키가 안먹힘 -->
				<div>
					<button onclick="submit()">회원가입</button>
				</div>
				<div class="back">뒤로가기</div>
			</div>
		</div>
	</div>
	<div class="first">
		<a href="/signup/signup-cp" class="signup-company">
			<div class="company-hover">
				<span>기업회원</span>
			</div>
			<span class="company-icon"></span>
		</a>
		<a href="/signup/signup-ct" class="signup-customer">
			<div class="customer-hover">
				<span>개인회원</span>
			</div>
			<span class="customer-icon"></span>
		</a>
	</div>
	<a href="/" class="home">
		<div class="home-tx">홈으로</div>
	</a>
</body>
</html>