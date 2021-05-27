<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<<<<<<< HEAD
<title></title>

<link href="/css/board.css" rel="stylesheet" />

<link href="/css/header.css" rel="stylesheet" />
<link href="/css/footer.css" rel="stylesheet" />

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
				<c:if test="${sessionScope.profile.list != null }">
					<div>
						<div>
							<div><h3>전체 명함</h3></div>
							<div>
							<form method="get" action="">
							<div class="search">
								<span>
									<select name="search">
										<option value="0">선택</option>
										<option value="1" ${pager.search == 1 ? 'selected' : ''}>닉네임</option>
										<option value="2" ${pager.search == 2 ? 'selected' : ''}>지역</option>
										<option value="3" ${pager.search == 3 ? 'selected' : ''}>직종/직급</option>
										<option value="4" ${pager.search == 4 ? 'selected' : ''}>기술/능력</option>
										<option value="5" ${pager.search == 5 ? 'selected' : ''}>경력</option>
									</select>
								</span>
								<span>
									<input type="text" name="keyword" placeholder="검색어를 입력해 주세요" value="${pager.keyword}">
								</span>
								<span>
									<input type="submit" value="검색" class="button">
								</span>
								</div>
							</form>
						</div>		
							<div>
								<table border="1">
									<thead>
										<tr>
										<!-- 기본정보 -->
											<th>아이디</th>
											<th>이력서 번호</th>
											<th>얼굴 이미지</th>
											<th>성별</th>
											<th>이름</th>
											<th>연락처</th>
											<th>주소</th>
											<th>생년월일</th>
										<!-- 기본정보 -->
										
										<!-- 학력 -->
											<th>학교명</th>
											<th>학과 및 전공</th>
											<th>학력구분</th>
										<!-- 학력 -->
										
										<!-- 병역사항 -->
											<th>병역구분</th>
											<th>면제사유</th>
										<!-- 병역사항 -->
										
										<!-- 경력사항 -->
											<th>회사명</th>
											<th>담당업무</th>
											<th>직급/직책</th>
											<th>경력</th>
										<!-- 경력사항 -->
										
										<!-- 자격/면허 -->
											<th>자격증명</th>
											<th>취득일</th>
											<th>발행처</th>
										<!-- 자격/면허 -->
										
										<!-- 기술능력 -->
											<th>얼굴 이미지</th>
										<!-- 기술능력 -->
										
										<!-- 희망사항 -->
											<th>희망지역</th>
											<th>희망지역(시/군/구)</th>
											<th>희망연봉</th>
											<th>상태</th>
										<!-- 희망사항 -->
										
										<!-- 기타 -->
											<th>한줄소개</th>
											<th>연락가능 시간</th>
											<th>이력서검증 여부</th>
										<!-- 기타 -->						
											<th>최종수정일</th>
											<th>관리</th>
										</tr>
									</thead>
									<tbody>
									<c:if test="${listAll.size() < 1}">
										<tr>
											<td colspan="31">등록 된 명함 없습니다</td>
										</tr>
									</c:if>
									<c:forEach var="item" items="${listAll}">
										<tr>
										<!-- 기본정보 -->
											<td>${item.customerId}</td>
											<td>${item.profileSeq}</td>
											<td><img src="/CatchMeUpload/${item.profileImg}" class="profile-img" alt="프로필이미지"></td>
											<td>${item.customerGender}</td>
											<td>${item.customerName}</td>
											<td>${item.customerPhone}</td>
											<td>${item.customerAddress}</td>
											<td><fmt:formatDate pattern="yyyy-MM-dd" value="${item.customerBirthday}" /></td>
										<!-- 기본정보 -->
										
										<!-- 학력 -->
											<td>${item.profileSchool}</td>
											<td>${item.profileSchoolSkill}</td>
											<td>${item.profileSchoolState}</td>
										<!-- 학력 -->
										
										<!-- 병역사항 -->
											<td>${item.profileArmy}</td>
											<td>${item.profileArmyWriting}</td>
										<!-- 병역사항 -->
										
										<!-- 경력사항 -->
											<td>${item.careerCompany}</td>
											<td>${item.careerWork}</td>
											<td>${item.careerCategory}</td>
											<td>${item.careerDate}</td>
										<!-- 경력사항 -->
										
										<!-- 자격/면허 -->
											<td>${item.certificateName}</td>
											<td><fmt:formatDate pattern="yyyy-MM-dd" value="${item.certificateDate}" /></td>
											<td>${item.certificateWriting}</td>
										<!-- 자격/면허 -->
										
										<!-- 기술능력 -->
											<td>${item.skillContent}</td>
										<!-- 기술능력 -->
										
										<!-- 희망사항 -->
											<td>${item.area1}</td>
											<td>${item.area2}</td>
											<td>${item.profileMoney}</td>
											<td>${item.profileState}</td>
										<!-- 희망사항 -->
										
										<!-- 기타 -->
											<td>${item.profileWriting}</td>
											<td>${item.profileTime}</td>
											<td>${item.profileCheck}</td>
										<!-- 기타 -->	
										
										<td><fmt:formatDate pattern="yyyy-MM-dd" value="${item.profileDate}" /></td>
											
											<td><a href="${item.profileSeq}/profileCheck">검증(관리자전용)</a></td>
										</tr>
									</c:forEach>
									</tbody>
								</table>
							</div>
							<div>
							<!-- 페이지네이션 -->	
							<div>
								<ul>
									<li><a href="?page=1&${pager.query}">
									<img src="/resources/img/page_pprev.png"></a></li>
									<li><a href="?page=${pager.prev}&${pager.query}">
									<img src="/resources/img/page_prev.png"></a></li>
								<c:forEach var="page" items="${pager.list}">
									<li id="pager-list" class="${page == pager.page ? 'active' : ''}"><a href="?page=${page}">${page}</a></li>
								</c:forEach>
									<li><a href="?page=${pager.next}&${pager.query}">
									<img src="/resources/img/page_next.png"></a></li>
									<li><a href="?page=${pager.last}&${pager.query}">
									<img src="/resources/img/page_nnext.png"></a></li>
								</ul>
							</div>
							<!-- 페이지네이션 -->
						</div>
							<div>
								<a href="/">메인으로</a>
							</div>		
						</div>
					</div>
				</c:if>
			</div>
		</div>
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