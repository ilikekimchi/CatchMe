<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<link href="/css/requestUser.css" rel="stylesheet" />
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


</body>
</html>