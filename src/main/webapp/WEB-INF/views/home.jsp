<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name ="google-signin-client_id" content="660007156102-t19t89n6ibpurkj8rrt13je3tko75tnb.apps.googleusercontent.com">
<title>이직 전문 플랫폼 - CatchMe!</title>

<link rel="icon" type="image/png" href="/image/favicon/favicon-32x32.png">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css">

<link href="/css/home.css" rel="stylesheet" />
<link href="/css/login-modal.css" rel="stylesheet" />
<link href="/css/search-box.css" rel="stylesheet" />

<link href="/css/chat.css" rel="stylesheet" />
<link href="/css/category.css" rel="stylesheet" />

<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="/js/login-modal.js" type="text/javascript"></script>
<script src="/js/search.js" type="text/javascript"></script>


<jsp:include page="chat.jsp" />
<jsp:include page="footer.jsp" />



<script type="text/javascript">

function init() {
    gapi.load('auth2', function() {
       gapi.auth2.init();
       
       options = new gapi.auth2.SigninOptionsBuilder();
       options.setPrompt('select_account');
       
         // 추가는 Oauth 승인 권한 추가 후 띄어쓰기 기준으로 추가
       options.setScope('email profile openid https://www.googleapis.com/auth/user.birthday.read');
         
         // 인스턴스의 함수 호출 - element에 로그인 기능 추가
         // GgCustomLogin은 li태그안에 있는 ID, 위에 설정한 options와 아래 성공,실패시 실행하는 함수들
       gapi.auth2.getAuthInstance().attachClickHandler('google_btn', options, onSignIn, onSignInFailure);
    })
 }

 function onSignIn(googleUser) {
    let access_token = googleUser.getAuthResponse().access_token;
    
    // key에 자신의 API 키를 넣습니다.
    let api_key = 'AIzaSyCxqnFou9CBMMX9PrOngSiYmXle6qMC3Vo';
    
    $.ajax({
        // people api를 이용하여 프로필 및 생년월일에 대한 선택동의후 가져온다.
       url: 'https://people.googleapis.com/v1/people/me'        
       , data: {personFields:'birthdays', key: api_key, 'access_token': access_token}
       , method:'GET'
    }).done(function(e){
         //프로필을 가져온다.
       let profile = googleUser.getBasicProfile();
         
       alert(`[구글] ${profile.Ue} 님 환영합니다~`);
       
       console.log(profile);
       
    
    }).fail(function(e) {
       alert("사용자의 프로필 정보를 확인 할 수 없습니다");
       console.log(e);
    });
 }

 /* 
    Ue: "full name" 
    pu: "aaaaaaa@gmail.com"
    sT: "홍"
    xV: "길동"
  */
  
  function onSignInFailure(t) {      
    /* alert("[구글] 로그인에 실패 하였습니다"); */
    
    console.log(t);
 }


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
				<form method="get" action="/board/list">
					<div class="search-area radius">
						<div>
							<span class="region-search">근무지역</span> <input id="region-value"
								name="area" value="${pager.area}"> <span class="line1"></span>
						</div>
						<div>
							<span class="job-search">직무 · 직종</span> <input id="job-value"
								name="job" value="${pager.job}" type="hidden"> <span
								class="line2"></span>
						</div>
						<input type="text" name="keyword" value="${pager.keyword}"
							placeholder="카테고리를 입력해주세요." class="search-input">
						<button type="submit">
							<span class="search-icon"></span>
						</button>
						<div class="search-list">
							<ul class="area-list">
								<li class="area">등록된 지역이 없습니다</li>
							</ul>
							<ul class="area2-list">
								<li class="area2">등록된 시군구가 없습니다</li>
							</ul>
							<ul class="job-list">
								<li class="job-search-menu">등록된 직업이 없습니다</li>
							</ul>
							<ul class="job-small-list">
								<li class="job-small-search-menu">등록된 직업이 없습니다</li>
							</ul>
						</div>
					</div>
				</form>
				<!-- <div class="region">
               <span class="search-close"></span>
            </div>
            <div class="job">
               <span class="search-close"></span>
            </div> -->
			</div>
			<div class="category">
				<div class="item">
					<a href="/board/list?category=1" class="plain">
						<div class="icon icon1"></div>
						<div>IT·프로그래밍</div>
					</a>
				</div>
				<div class="item">
					<a href="/board/list?category=2" class="plain">
						<div class="icon icon2"></div>
						<div>음악·영상</div>
					</a>
				</div>
				<div class="item">
					<a href="/board/list?category=3" class="plain">
						<div class="icon icon3"></div>
						<div>전문기술</div>
					</a>
				</div>
				<div class="item">
					<a href="/board/list?category=4" class="plain">
						<div class="icon icon4"></div>
						<div>서비스</div>
					</a>
				</div>
				<div class="item">
					<a href="/board/list?category=5" class="plain">
						<div class="icon icon5"></div>
						<div>마케팅</div>
					</a>
				</div>
				<div class="item">
					<a href="/board/list?category=6" class="plain">
						<div class="icon icon6"></div>
						<div>레슨·교육</div>
					</a>
				</div>
				<div class="item">
					<a href="/board/list?category=7" class="plain">
						<div class="icon icon7"></div>
						<div>문서·글쓰기</div>
					</a>
				</div>
				<div class="item">
					<a href="/board/list?category=8" class="plain">
						<div class="icon icon8"></div>
						<div>번역·통역</div>
					</a>
				</div>
				<div class="item">
					<a href="/board/list?category=9" class="plain">
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
		<c:if
			test="${sessionScope.sessionId == null && sessionScope.customer == null && sessionScope.company == null}">
			<div class="login-info">
				<!-- sessionScope => 세션(session -> customer가 저장되어있음)에  저장되어있는(Scope)를  불러옴 -->
				<ul class="member">
					<li class="customer click1">개인회원</li>
					<li class="company out">기업회원</li>
				</ul>
				<!-- 이직자 로그인 -->
				<form method="post" name="loginForm" action="/login2"
					class="customer-form">
					<div class="id">
						<input name="customerId" type="text" placeholder="아이디"
							class="customer-id" required="required">
					</div>
					<div class="pwd">
						<input name="customerPw" type="password" placeholder="비밀번호"
							class="customer-pwd" required="required">
					</div>
					<button disabled="true" class="login-ch" onclick="submit()">로그인</button>
				</form>
				<!-- 이직자 로그인 -->


				<!-- 기업 로그인 -->
				<form method="post" name="loginForm0" action="/login0"
					class="company-form">
					<div class="id">
						<input name="companyId" type="text" placeholder="아이디"
							class="company-id" required="required">
					</div>
					<div class="pwd">
						<input name="companyPw" type="password" placeholder="비밀번호"
							class="company-pwd" required="required">
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
					style="border-left: 1px solid #bfbfbf;">비밀번호 찾기</a>
			</div>
			<div class="social">
				<a class="google_btn" href="javascript:void(0)" id="google_btn">
               		<div class="google"></div>
            	</a>
            	<a href="https://kauth.kakao.com/oauth/authorize?client_id=3c5da69fe95e1794f127087d909f8e24&redirect_uri=http://localhost:8090/auth/kakao/callback&response_type=code">
					<div class="kakao"></div>
				</a> 
				<a href="naverLogin">
					<div class="naver"></div>
				</a>
			</div>
		</c:if>
		<c:if
			test="${sessionScope.customer != null && sessionScope.company == null}">
			<h2 style="text-align: center" id="name">${sessionScope.customer.customerNnm}
				님</h2>
			<h4 style="text-align: center" id="email">${sessionScope.customer.customerId}</h4>
			<div class="notice">
				<a href="/requestUser" class="my-notice">나의 알림</a>
				<div class="notice-nm">
					<span>2</span>
				</div>
			</div>
			<div class="frame">
				<div class="profile"></div>
			</div>
			<a href="/profile/mypage" class="mypage in"> <span class="mypage-icon"></span>
				<div>마이페이지</div>
			</a>
			<a href="/profile/list" class="career in"> <span
				class="career-icon"></span>
				<div>내 이력서</div>
			</a>
			<a href="logout" class="logout in"> <span class="logout-icon"></span>
				<div>로그아웃</div>
			</a>
		</c:if>
		<c:if
			test="${sessionScope.customer == null && sessionScope.company != null}">
			<h2 style="text-align: center" id="name">${sessionScope.company.companyName}
				님</h2>
			<h4 style="text-align: center" id="email">${sessionScope.company.companyId}</h4>
			<div class="notice">
				<c:if test="${sessionScope.sumCoin != null}">
					<div>현재코인: ${sessionScope.sumCoin}코인</div>
				</c:if>
				<c:if test="${sessionScope.sumCoin == null}">
					<div>현재코인: 0코인</div>
				</c:if>
			</div>
			<div class="frame">
				<div class="profile"></div>
			</div>
			<a href="/company/list" class="mypage in"> <span
				class="mypage-icon"></span>
				<div>마이페이지</div>
			</a>
			<a href="/pay/cart" class="career in"> <span class="career-icon"></span>
				<div>코인충전소</div>
			</a>
			<a href="logout" class="logout in"> <span class="logout-icon"></span>
				<div>로그아웃</div>
			</a>
		</c:if>
		<span id="pointer"></span>


	</div>
	
	<script src="https://apis.google.com/js/platform.js?onload=init" async defer></script>
	
</body>
</html>