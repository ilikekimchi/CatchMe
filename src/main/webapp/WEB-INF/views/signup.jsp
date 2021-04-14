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
	
<script type="text/javascript">
	$(function() {
		$('.signup-company').mouseenter(function () {
			$('.company-hover').css('opacity', '0.5');
		})
		
		$('.company-hover').mouseleave(function () {
			$('.company-hover').css('opacity', '0');
		})
		
		$('.signup-customer').mouseenter(function () {
			$('.customer-hover').css('opacity', '0.5');
		})
		
		$('.customer-hover').mouseleave(function () {
			$('.customer-hover').css('opacity', '0');
		})
	})
</script>
</head>
<body>
	<div class="container">
		<a href="" class="signup-company">
			<div class="company-hover">
				<span>기업회원</span>
			</div>
			<span class="company-icon"></span>
		</a> <a href="" class="signup-customer">
			<div class="customer-hover">
				<span>개인회원</span>
			</div>
			<span class="customer-icon"></span>
		</a>
	</div>
	<a href="/">
		<div>홈으로</div>
	</a>
</body>
</html>