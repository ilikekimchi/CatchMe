<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<link href="/css/comMatch.css" rel="stylesheet" />
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
  
  <p>매칭된 유저</p>
  
</div>
  
  <div class="match">
    
    <div class="match-text">바로 대화를 시작해 인재를 놓치지 마세요</div>
    
  </div>
  
  <div class="match-list">
    
    <ul>
      <li>
        
        <div class="match-list-li">
          
          <ul>
            <li class="com-name">유저이름</li>
            <li class="last-msg">가장 최근메세지</li>
            <li class="last-msg-time">보낸시간</li>
            <li class="goto-chat"><a href="#"><i class="far fa-comments"></i></a></li>
          </ul>
          
        </div>
        
      </li>
      <li>
        
                <div class="match-list-li">
          
          <ul>
            <li class="com-name">기업이름</li>
            <li class="last-msg">가장 최근메세지</li>
            <li class="last-msg-time">보낸시간</li>
            <li class="goto-chat"><a href="#"><i class="far fa-comments"></i></a></li>
          </ul>
          
        </div>
        
      </li>
    </ul>
    
  </div>
   
</div>

</body>
</html>