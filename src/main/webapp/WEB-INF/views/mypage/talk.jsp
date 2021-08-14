<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<link href="/css/talk.css" rel="stylesheet" />
<link href="/css/normal.css" rel="stylesheet" />

<!-- 폰트어썸 불러오기 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<jsp:include page="../footer.jsp" />
<jsp:include page="../topbar.jsp" />

<script type="text/javascript">

$(function() {
$( '.chat-box' ).stop().animate(
	      { scrollTop : 500})
	      });
</script>

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
  
  <p>1:1 채팅</p>
  
</div>
  
  <div class="chat-box">
    
    <div class="header-box">
      
      <div class="img-box"><img src="https://www.kopo.ac.kr/images/kopo/ui_symbol.png" alt=""></div>
      
      <span class="com-name">폴리텍회사</span>
      
    </div>
    
    <div class="chat-list">
      
      <div class="from-chat">
        <span>안녕하세요</span>
      </div>
      <div class="to-chat">
        <span>안녕하세요</span>
      </div>
      
    </div>
    
    <div class="chat-send">
      
      <form action="#" class="chat-input">
        
        <textarea name="chatbox" id="" autofocus="1"></textarea>
        
        <div class="send-button">
          
          <button type="submit">전송</button>
          
        </div>
        
      </form>
      
    </div>
    
  </div>

   
</div>

</body>
</html>