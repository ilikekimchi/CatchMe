<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700;900&family=Roboto:wght@400;700;900&display=swap" rel="stylesheet">

<!-- 폰트어썸 불러오기 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css">

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


<link href="/css/resume.css" rel="stylesheet" />
<script src="/js/resume.js" type="text/javascript"></script>


</head>
<body>


<div class="top-bar">
  
  <div class="con">
    
    
    <nav class="menu-box-1">
      <ul class="row flex flex-ai-c">
        <li class="cell"><a href="#">사람정보</a></li>
        <li class="cell"><a href="#">기업정보</a></li>
        <li class="cell"><a href="#">라운지</a></li>
        <li class="cell"><a href="#">마이페이지</a></li>
      </ul>
    </nav>
    
     <a href="#" class="btn-go-submit"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/LinkedIn_logo_initials.png/600px-LinkedIn_logo_initials.png" alt=""></a>
    
  </div>
  
</div>

<div class="add">
  
  <div class="img-box">
    
    <a href="#"><img src="https://postfiles.pstatic.net/MjAyMTA0MTRfMTg2/MDAxNjE4Mzg5NTYwNTc1.dGlO6Gxac872YbCXRGAm_Ecw7WIGNBR_oHanmdVq2R4g.xfJEQ-CoXZXpAZgTK9NlWVCdmIRLcwm2k6bhYW06fSMg.JPEG.anvkak3000/%EA%B4%91%EA%B3%A0.jpg?type=w580" alt=""></a>
    
  </div>
  
  <div class="go-top">
    
    <button>위로</button>
    
  </div>
  
</div>



<div class="side-bar">
  
  <div class="logo-box">
    
    <a href="#"><img src="https://pds.saramin.co.kr/company/logo/202008/21/qfedx5_ny73-1meg1kx_logo.png" alt=""></a>
    
  </div>
  
  <nav class="side-menu">
    
    <ul>
      <li><a href="/mypage"><i class="fas fa-home"></i>개인회원 홈</a></li>
    
      <li><a href="/userinfo"><i class="fas fa-user-edit"></i>회원정보</a></li>
      <li><a href="/resume"><i class="far fa-address-card"></i>이력서</a></li>
      <li><a href="#"><i class="far fa-building"></i>기업의 요청</a></li>
      <li><a href="#"><i class="fas fa-handshake"></i>매칭된 기업</a></li>
      <li><a href="#"><i class="fas fa-caret-square-down"></i>메뉴4</a></li>
    </ul>
    
  </nav>
  
</div>

<div class="myhome con">

<div class="title">
  
  <p>이력서</p>
  
</div>
  

  <div class="user-info">
    
   <form action="#">
    
    <div class="user-basic-info">
      
      <div class="gibon">
        
         <div class="title">한줄소개</div>
        
        <div class="name flex font-left border">
          
          <input type="text" class="input-style" placeholder="최대 50자">
          
        </div>
      </div>
      
      <div class="edu-info">
        
         <div class="title">학력사항</div>
        
      <div class="fin-edu">
        
         <button class="edu-button"><span>중학교 졸업</span></button>
        <button class="edu-button"><span>고등학교 졸업</span></button>
        <button class="button-click edu-button"><span>대학·대학원 졸업</span></button>
        
      </div>
 
        <div class="ac">
        
        <div class="ac-info hap">
          
          <div class="ac-title wid-1">대학</div>
          <select class="sel-back" name="" id="">
           
            <option value="1">대학(2,3년)</option><option value="2">대학(4년)</option>
            <option value="3">대학원(석사)</option><option value="4">대학원(박사)</option>
            
          </select>
          
          
        </div>
        
        <div class="ac-name hap">
          
          <div class="title wid-1">학교명</div>
          <input type="text" class="input-style">
        </div>
        
         <div class="ac-major hap">
          
          <div class="major wid-1">전공</div>
          <input type="text" class="input-style">
        </div>
        
        <div class="ac-fin hap">
          
          <div class="fin wid-1">대학</div>
          <select class="sel-back" name="" id="">
            
            <option value="1">졸업</option><option value="2">재학중</option>
            <option value="3">휴학중</option><option value="4">졸업예정</option>
            <option value="5">중퇴</option>
            
          </select>
          
          
        </div>
        
          </div>
        </div>
        
      </div>
      
      </form>
      
    </div>

  </div> 
  
</body>
</html>