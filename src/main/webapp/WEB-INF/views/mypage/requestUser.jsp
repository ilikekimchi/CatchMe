<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<link href="/css/requestUser.css" rel="stylesheet" />
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
  
  <p>기업의 요청</p>
  
</div>
  
  <div class="req">
    
    <div class="req-text">지금까지 나는 <span>2</span>건의 이력서 공개요청을 받았어요</div>
    
  </div>
  
  <div class="req-list">
    
    <ul>
      <li>
        
        <div class="req-list-li">
         <span class="req-date">날짜</span>
         <div class="req-com-name">
           <span class="com-name">회사이름</span>에서
           <div>이력서공개</div>
          <div> 요청 받았어요</div>
         </div>
        
        
        <div class="com-detail">
          <a href="#">
            
         <span class="com-scale"><i class="far fa-building"></i>중소기업</span> 
            
            <span class="com-scale"><i class="far fa-clock"></i>업력 몇년</span>
            
            <span class="com-scale"><i class="fas fa-map-marker-alt"></i>대략주소</span>
            
            <span class="com-scale"><i class="fas fa-plus"></i>자세히보기</span>
            
          </a>
        </div>
          
          <a href="#" class="com-info">
        
            <p class="com-info-text">이 회사의 일을 소개해요</p>
            <span class="com-occ">직종소개</span>
            
          </a>
        
        </div>
        
        

      </li>
      <li>
        
        <div class="req-list-li">
         <span class="req-date">날짜</span>
         <div class="req-com-name">
           <span class="com-name">회사이름</span>에서<br>
           이력서공개<br>
           요청 받았어요
         </div>
        
        
        <div class="com-detail">
          <a href="#">
            
         <span class="com-scale"><i class="far fa-building"></i>ㅈ소기업</span> 
            
            <span class="com-scale"><i class="far fa-clock"></i>업력 몇년</span>
            
            <span class="com-scale"><i class="fas fa-map-marker-alt"></i>대략주소</span>
            
            <span class="com-scale"><i class="fas fa-plus"></i>자세히보기</span>
            
          </a>
        </div>
          
          <a href="#" class="com-info">
        
            <p class="com-info-text">이 회사의 일을 소개해요</p>
            <span class="com-occ">직종소개</span>
            
          </a>
        
        </div>
        
      </li>
    </ul>
    
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