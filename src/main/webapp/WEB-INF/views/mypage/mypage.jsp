<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<link href="/css/mypage.css" rel="stylesheet" />
<link href="/css/footer.css" rel="stylesheet" />
<link href="/css/normal.css" rel="stylesheet" />
<link href="/css/top-bar.css" rel="stylesheet" />

<!-- 폰트어썸 불러오기 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

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
    
    <a href="#" class="go-mypage">
      
      <span class="mypage-img"></span>
      <span class="name">로그인해주세요</span>
      
    </a>
    
  </div>
  
</div>

	<div class="side-bar">

		<div class="logo-box">

			<a href="/"><img
				src="https://pds.saramin.co.kr/company/logo/202008/21/qfedx5_ny73-1meg1kx_logo.png"
				alt=""></a>

		</div>

		<nav class="side-menu">

			<ul>
				<li><a href="/mypage"><i class="fas fa-home"></i>개인회원 홈</a></li>

				<li><a href="/userinfo"><i class="fas fa-user-edit"></i>회원정보</a></li>
				<li><a href="/resume"><i class="far fa-address-card"></i>이력서</a></li>
				<li><a href="/requestUser"><i class="far fa-building"></i>기업의 요청</a></li>
				<li><a href="/matchUser"><i class="fas fa-handshake"></i>매칭된 기업</a></li>
			</ul>

		</nav>

	</div>

	<div class="myhome con">

		<div class="title">

			<p>열정! 열정! 열정! ${sessionScope.customer.customerNnm}님</p>

		</div>

		<div class="alarm">
			<ul>
				<li><a href="#">1</a><span>나의 알림</span></li>
				<li><a href="#">2</a><span>기업의 요청</span></li>
				<li><a href="#">3</a><span>수락한 요청</span></li>
				<li><a href="#">4</a><span>관심 기업</span></li>
			</ul>
		</div>

		<div class="biz-card">

			<div class="biz-card-title">
				<p>노출되는 이력카드</p>
			</div>

			<div class="biz-card-1">

				<div class="img-box">

					<a href="#"><img
						src="https://i.pinimg.com/564x/60/ee/69/60ee6916e93413b06e8b319a21521fc3.jpg"
						alt=""></a>

				</div>

				<div class="biz-card-small">

					<div class="name">${sessionScope.customer.customerNnm}</div>
					<div class="birth">(1995)</div>
					<div class="rank">직급 ex) 대리</div>
					<div class="career">경력 ex) 1~2년차</div>
					<div class="education">학력 ex) 최종학력까지만 대학 4년제 졸업</div>
					<div class="short-intro">한줄소개 최대50자</div>

				</div>

				<div class="biz-card-button">

					<div><a href="/resume">수정하기</a></div>
					<div><span>현재상태</span></div>

				</div>

				<div class="license">

					<ul>
						<li>Spring</li>
						<li>JavaScript</li>
						<li>JQuery</li>
						<li>React</li>
						<li>Vue</li>
						<li>Java</li>
					</ul>

				</div>

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