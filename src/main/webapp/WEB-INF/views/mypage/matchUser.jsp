<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<link href="/css/matchUser.css" rel="stylesheet" />
<link href="/css/normal.css" rel="stylesheet" />

<!-- 폰트어썸 불러오기 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<jsp:include page="../footer.jsp" />
<jsp:include page="../topbar.jsp" />

</head>
<body>

	<div class="side-bar">

		<div class="logo-box">

			<a href="/"><img
				src="https://pds.saramin.co.kr/company/logo/202008/21/qfedx5_ny73-1meg1kx_logo.png"
				alt=""></a>

		</div>

		<nav class="side-menu">

			<ul>
				<li><a href="/profile/list"><i class="fas fa-home"></i>개인회원 홈</a></li>

				<li><a href="/customer/list"><i class="fas fa-user-edit"></i>회원정보</a></li>
				<li><a href="/resume"><i class="far fa-address-card"></i>이력서</a></li>
				<li><a href="/requestUser"><i class="far fa-building"></i>기업의 요청</a></li>
				<li><a href="/matchUser"><i class="fas fa-handshake"></i>매칭된 기업</a></li>
			</ul>

		</nav>

	</div>

<div class="myhome con">

<div class="title">
  
  <p>매칭된 기업</p>
  
</div>
  
  <div class="match">
    
    <div class="match-text">나를 원하는 기업과 대화를 해보세요</div>
    
  </div>
  
  <div class="match-list">
    
    <ul>
      <li>
        
        <div class="match-list-li">
          
          <ul>
            <li class="com-name">기업이름</li>
            <li class="last-msg">가장 최근메세지</li>
            <li class="last-msg-time">보낸시간</li>
            <li class="goto-chat"><a href="/talk"><i class="far fa-comments"></i></a></li>
          </ul>
          
        </div>
        
      </li>
      <li>
        
                <div class="match-list-li">
          
          <ul>
            <li class="com-name">기업이름</li>
            <li class="last-msg">가장 최근메세지</li>
            <li class="last-msg-time">보낸시간</li>
            <li class="goto-chat"><a href="/talk"><i class="far fa-comments"></i></a></li>
          </ul>
          
        </div>
        
      </li>
    </ul>
    
  </div>
  

   
</div>


</body>
</html>