<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<link href="/css/comHome.css" rel="stylesheet" />
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
  
  <p>내일 더 발전하는 기업 폴리박스</p>
  
</div>
  
  <div class="alarm">
    
    <ul>
      <li><a href="#">1</a><span>나의 알림</span></li>
      <li><a href="#">2</a><span>요청 미응답</span></li>
      <li><a href="#">3</a><span>수락한 요청</span></li>
      <li><a href="#">4</a><span>관심 유저</span></li>
    </ul>
    
  </div>
  
  <div class="board">


       <div class="sub-title">
         <a href="#">요청한 유저 관리 ></a>
       </div>
      
      <div class="req-list">
        <ul>
          <li><p>닉네임</p><p>나이</p><p>직급</p><p>학력</p><a href="#"><i class="fas fa-angle-double-right"></i></a></li>
          <li><p>닉네임</p><p>나이</p><p>직급</p><p>학력</p><a href="#"><i class="fas fa-angle-double-right"></i></a></li>
        </ul>
      </div>
    
    <div class="sub-title">
         <a href="#">최근 검색 맞춤인재 ></a>
       </div>
      
      <div class="injae-list">
        <div>최근 본 인재가 없습니다.</div>
        <div>빠른 경력직 채용을 원하신다면 인재를 검색해보세요</div>
        <div><a href="#">빠른 인재검색 ></a></div>
      </div>
      

    
    
  </div>
  
  </div>





</body>
</html>