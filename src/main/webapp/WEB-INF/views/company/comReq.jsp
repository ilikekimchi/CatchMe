<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<link href="/css/comReq.css" rel="stylesheet" />
<link href="/css/normal.css" rel="stylesheet" />

<!-- 폰트어썸 불러오기 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<jsp:include page="../footer.jsp" />
<jsp:include page="../topbar.jsp" />

</head>
<body>

<div class="side-bar">
  
<nav class="side-menu">
    
    <ul>
      <li><a href="/comHome"><i class="fas fa-home"></i>기업회원 홈</a></li>
      <li><a href="/comInfo"><i class="fas fa-user-edit"></i>기업정보</a></li>
      <li><a href="/comReq"><i class="far fa-building"></i>요청 목록</a></li>
      <li><a href="/comMatch"><i class="fas fa-handshake"></i>매칭된 유저</a></li>
      <li><a href="/comCoin"><i class="fas fa-caret-square-down"></i>코인내역 / 충전</a></li>
    </ul>
    
  </nav>
  
</div>

<div class="myhome con">

<div class="title">
  
  <p>요청 목록</p>
  
</div>
  
    <div class="req">
    
    <div class="req-text">우리 회사는 현재 <span>N</span>건의 이력서 공개요청을 보냈어요</div>
    
  </div>
  
  <div class="req-list">
    
    <ul>
      <li>
        
            <div class="biz-card-1">
      
       <div class="img-box">
      
        <a href="#"><img src="https://i.pinimg.com/564x/60/ee/69/60ee6916e93413b06e8b319a21521fc3.jpg" alt=""></a>
      
    </div>
      
      <div class="biz-card-small">
      
        <div class="name">육메킴</div><div class="birth">(1995)</div>
        <div class="rank">직급 ex) 대리</div>
        <div class="career">경력 ex) 1~2년차</div>
        <div class="education">학력 ex) 최종학력까지만 대학 4년제 졸업</div>
        <div class="short-intro">한줄소개 최대50자</div>
      
    </div>
     
      <div class="biz-card-button">
      
      <button class="cancle">취소</button>
      <button class="req-date">요청날짜</button>
      
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
        
      </li>
      <li>
        
            <div class="biz-card-1">
      
       <div class="img-box">
      
        <a href="#"><img src="https://i.pinimg.com/564x/60/ee/69/60ee6916e93413b06e8b319a21521fc3.jpg" alt=""></a>
      
    </div>
      
      <div class="biz-card-small">
      
        <div class="name">육메킴</div><div class="birth">(1995)</div>
        <div class="rank">직급 ex) 대리</div>
        <div class="career">경력 ex) 1~2년차</div>
        <div class="education">학력 ex) 최종학력까지만 대학 4년제 졸업</div>
        <div class="short-intro">한줄소개 최대50자</div>
      
    </div>
     
      <div class="biz-card-button">
      
      <button class="cancle">취소</button>
      <button class="req-date">요청날짜</button>
      
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
        
      </li>
    </ul>
    
  </div>
  
  </div>

</body>
</html>