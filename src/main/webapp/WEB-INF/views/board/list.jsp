<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<link href="/css/board.css" rel="stylesheet" />
<link href="/css/header.css" rel="stylesheet" />
<link href="/css/biz-card.css" rel="stylesheet" />
<link href="/css/side-filter.css" rel="stylesheet" />

<link href="/css/search-box.css" rel="stylesheet" />

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css">

<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.12.4.min.js"></script>

<script src="/js/login-modal.js" type="text/javascript"></script>
<script type="text/javascript">
	$(function() {
		$('.location-info').click(function() {

			$('.location-list').toggleClass('click');

			if ($('.location-list').is('.click') === true) {

				$('#location-btn').removeClass('down');
				$('#location-btn').addClass('up');

			} else {

				$('#location-btn').removeClass('up');
				$('#location-btn').addClass('down');

			}
		})

		$('.gender-info').click(function() {

			$('.gender-list').toggleClass('click');

			if ($('.gender-list').is('.click') === true) {

				$('#gender-btn').removeClass('down');
				$('#gender-btn').addClass('up');

			} else {

				$('#gender-btn').removeClass('up');
				$('#gender-btn').addClass('down');

			}
		})

		$('.career-info').click(function() {

			$('.career-list').toggleClass('click');

			if ($('.career-list').is('.click') === true) {

				$('#career-btn').removeClass('down');
				$('#career-btn').addClass('up');

			} else {

				$('#career-btn').removeClass('up');
				$('#career-btn').addClass('down');

			}
		})

		$('#filter-btn').click(function() {

			if ($('#filter-btn > span').is('.block') === true) {

				$('#filter-btn > span').removeClass('block');
				$('#filter-btn > span').addClass('none');

				$('#filter').css('width', '0');

			} else {

				$('#filter-btn > span').removeClass('none');
				$('#filter-btn > span').addClass('block');

				$('#filter').css('width', '220px');
			}
		})

	})
</script>

</head>
<body>
	<header class="top-bar">

		<div class="logo-box">

			<a href="/"><img src="https://i.postimg.cc/dQ2QWTtK/image.png"
				alt=""></a>

		</div>

		<div class="con">


			<nav class="menu-box-1">
				<ul>
					<li class="cell my-r"><a href="#">지역별</a></li>
					<li class="cell my-r"><a href="#">직업별</a></li>
					<li class="cell my-r"><a href="#">사람정보</a></li>
					<li class="cell my-r"><a href="#">기업정보</a></li>
					<li class="cell my-r"><a href="#">기업리뷰</a></li>
					<li class="search-box">
						<div class="search-input">
							<input type="text" placeholder="검색어를 입력하세요">
							<button type="submit" class="search-btn"></button>
						</div>
					</li>
				</ul>
			</nav>

		</div>

		<div class="member">

			<a href="#" class="go-mypage"> <span class="mypage-img"></span> <span
				class="name">로그인해주세요</span>

			</a>

		</div>

	</header>
	<div id="filter">
		<div class="scroll"></div>
		<aside class="filter-menu">
			<ul class="filter-info">
				<li class="location sort"><a class="location-info"> <strong>지역</strong>
						<span id="location-btn" class="btn down"></span>
				</a>
					<ul class="location-list">
						<li><a>서울</a></li>
						<li><a>경기</a></li>
						<li><a>인천</a></li>
						<li><a>부산</a></li>
						<li><a>대구</a></li>
						<li><a>광주</a></li>
						<li><a>대전</a></li>
						<li><a>울산</a></li>
						<li><a>세종</a></li>
						<li><a>강원</a></li>
						<li><a>경남</a></li>
						<li><a>경북</a></li>
						<li><a>전남</a></li>
						<li><a>전북</a></li>
						<li><a>충남</a></li>
						<li><a>충북</a></li>
						<li><a>제주</a></li>
						<li><a>전국</a></li>
					</ul></li>
				<li class="gender sort"><a class="gender-info"> <strong>성별</strong>
						<span id="gender-btn" class="btn down"></span>
				</a>
					<ul class="gender-list">
						<li><a>남자</a></li>
						<li><a>여자</a></li>
					</ul></li>
				<li class="career sort"><a class="career-info"> <strong>경력</strong>
						<span id="career-btn" class="btn down"></span>
				</a>
					<ul class="career-list">
						<li><a>~1년</a></li>
						<li><a>~2년</a></li>
						<li><a>~3년</a></li>
						<li><a>~4년</a></li>
						<li><a>~5년</a></li>
						<li><a>이상</a></li>
					</ul></li>
				<li class="sort"><a class="cp-info">기업정보 <span
						class="cp-btn"></span>
				</a></li>
				<li class="sort"><a class="ct-info">이직정보 <span
						class="ct-btn"></span>
				</a></li>
			</ul>
		</aside>
		<button id="filter-btn">
			<span class="btn block"></span>
		</button>
	</div>
	<div id="container">
		<div class="wrap">
			<h1>이직정보</h1>
			<div class="content-filter"></div>
			<div>
				<c:if test="${ sessionScope.profile.list == null }">
					<div>등록된 이직 정보가 없습니다.</div>
				</c:if>
			</div>
		</div>
	</div>
</body>
</html>