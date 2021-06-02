<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<link href="/css/normal.css" rel="stylesheet" />
<link href="/css/resume.css" rel="stylesheet" />

<!-- 폰트어썸 불러오기 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<jsp:include page="../footer.jsp" />
<jsp:include page="../topbar.jsp" />

<script src="/js/resume.js" type="text/javascript"></script>

</head>
<body>

<div class="side-bar">
  
  <div class="logo-box">
    
    <a href="#"><img src="https://pds.saramin.co.kr/company/logo/202008/21/qfedx5_ny73-1meg1kx_logo.png" alt=""></a>
    
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

<div class="home-title">
  
  <p>이력서</p>
  
</div>
  
  <div class="user-info">
    
          <div class="img-box">
      
        <a href="#"><img src="https://i.pinimg.com/564x/60/ee/69/60ee6916e93413b06e8b319a21521fc3.jpg" alt=""></a>
      
    </div>

    <div class="user-basic-info">
      
      <div class="gibon">
        
         <div class="title">한줄소개</div>
        
        <div class="name flex font-left border">
          
          <input type="text" class="input-style" placeholder="최대 50자" maxlength="50">
          
        </div>
      </div>
      
            <div class="job-info">
        
         <div class="sub-title">희망직종</div>
 
        <div class="job">
        
        <div class="job-fin hap">
          
          <div class="fin wid-1">구분</div>
          
      <div class="select-box">
        
        <ul class="select-ul job-select-ul">
  
          <li>it</li>
          <li>sh</li>
          <li>jh</li>
          <li>jj</li>
          <li>jh</li>

          <span><i class="fas fa-angle-down"></i></span>
          <span><i class="fas fa-angle-up"></i></span>
          </ul>

      </div>
          
          </div>
        
        
        </div>
        
      </div>
      
      <div class="edu-info">
        
         <div class="sub-title">최종학력</div>
 
        <div class="sc">
        
        <div class="sc-name hap">
          
          <div class="title wid-1">학교명</div>
          <input type="text" class="input-style">
        </div>
        
         <div class="sc-major hap">
          
          <div class="major wid-1">학과 / 전공</div>
          <input type="text" class="input-style">
        </div>
        
        <div class="sc-fin hap">
          
          <div class="fin wid-1">구분</div>
          
      <div class="select-box">
        
        <ul class="select-ul edu-select-ul">
  
           <li>졸업</li>
          <li>재학중</li>
          <li>휴학중</li>
          <li>졸업예정</li>
          <li>중퇴</li>

          <span><i class="fas fa-angle-down"></i></span>
          <span><i class="fas fa-angle-up"></i></span>
          </ul>

      </div>
          
          </div>
        
        
        </div>
        
      </div>
      
            <div class="career-info">
        
         <div class="sub-title">경력사항</div>
 
        <div class="career-1">
          
          
        
        <div class="career-name hap">
          
          <div class="title wid-1">회사명</div>
          <input type="text" class="input-style">
        </div>
        
         <div class="hap">
          
          <div class="wid-1">근무기간</div>
          <input type="text" class="input-style">
        </div>
          
          <div class="hap">
          
          <div class="wid-1">담당업무</div>
          <input type="text" class="input-style">
        </div>
        
       <div class="hap">
          
          <div class="wid-1">직급 / 직책</div>
          <input type="text" class="input-style">
        </div>
        
          <button type="button" class="career-add-1 button-style">경력사항 추가 <i class="fas fa-plus"></i></button>
 
        </div>
              
     <div class="career-2">
   
   <div class="just-line"></div>
          <button type="button"  class="career-remove-2 button-style">삭제 <i class="fas fa-times"></i></button>
        
        <div class="career-name hap">
          
          <div class="title wid-1">회사명</div>
          <input type="text" class="input-style">
        </div>
        
         <div class="hap">
          
          <div class="wid-1">근무기간</div>
          <input type="text" class="input-style">
        </div>
          
          <div class="hap">
          
          <div class="wid-1">담당업무</div>
          <input type="text" class="input-style">
        </div>
        
       <div class="hap">
          
          <div class="wid-1">직급 / 직책</div>
          <input type="text" class="input-style">
        </div>
        
          <button type="button" class="career-add-2 button-style">경력사항 추가 <i class="fas fa-plus"></i></button>
        
        </div>         
        
      <div class="career-3">
   
   <div class="just-line"></div>
          <button type="button" class="career-remove-3 button-style">삭제 <i class="fas fa-times"></i></button>
        
        <div class="career-name hap">
          
          <div class="title wid-1">회사명</div>
          <input type="text" class="input-style">
        </div>
        
         <div class="hap">
          
          <div class="wid-1">근무기간</div>
          <input type="text" class="input-style">
        </div>
          
          <div class="hap">
          
          <div class="wid-1">담당업무</div>
          <input type="text" class="input-style">
        </div>
        
       <div class="hap">
          
          <div class="wid-1">직급 / 직책</div>
          <input type="text" class="input-style">
        </div>
        
          <button type="button" class="career-add-3 button-style">경력사항 추가 <i class="fas fa-plus"></i></button>
        
        </div>
              
      </div>
      
                  <div class="licen-info">
        
         <div class="sub-title">자격 / 면허</div>
 
        <div class="licen-1">
          
          
        
        <div class="licen-name hap">
          
          <div class="title wid-1">자격증명</div>
          <input type="text" class="input-style">
        </div>
        
         <div class="hap">
          
          <div class="wid-1">발행처</div>
          <input type="text" class="input-style">
        </div>
          
          <div class="hap">
          
          <div class="wid-1">취득일</div>
          <input type="text" class="input-style">
        </div>

          <button type="button" class="licen-add-1 button-style">자격 / 면허 추가 <i class="fas fa-plus"></i></button>
 
        </div>
                    
   <div class="licen-2">
   
   <div class="just-line"></div>
          <button type="button" class="licen-remove-2 button-style">삭제 <i class="fas fa-times"></i></button>
        
          <div class="licen-name hap">
          
          <div class="title wid-1">자격증명</div>
          <input type="text" class="input-style">
        </div>
        
         <div class="hap">
          
          <div class="wid-1">발행처</div>
          <input type="text" class="input-style">
        </div>
          
          <div class="hap">
          
          <div class="wid-1">취득일</div>
          <input type="text" class="input-style">
        </div>

          <button type="button" class="licen-add-2 button-style">자격 / 면허 추가 <i class="fas fa-plus"></i></button>
 
        </div>
                    
  <div class="licen-3">

<div class="just-line"></div>
  <button type="button" class="licen-remove-3 button-style">삭제 <i class="fas fa-times"></i></button>

  <div class="licen-name hap">
  
  <div class="title wid-1">자격증명</div>
  <input type="text" class="input-style">
</div>

 <div class="hap">
  
  <div class="wid-1">발행처</div>
  <input type="text" class="input-style">
</div>
  
  <div class="hap">
  
  <div class="wid-1">취득일</div>
  <input type="text" class="input-style">
</div>

  <button type="button" class="licen-add-3 button-style">자격 / 면허 추가 <i class="fas fa-plus"></i></button>

</div>
                    
  <div class="licen-4">

<div class="just-line"></div>
  <button type="button" class="licen-remove-4 button-style">삭제 <i class="fas fa-times"></i></button>

  <div class="licen-name hap">
  
  <div class="title wid-1">자격증명</div>
  <input type="text" class="input-style">
</div>

 <div class="hap">
  
  <div class="wid-1">발행처</div>
  <input type="text" class="input-style">
</div>
  
  <div class="hap">
  
  <div class="wid-1">취득일</div>
  <input type="text" class="input-style">
</div>

  <button type="button" class="licen-add-4 button-style">자격 / 면허 추가 <i class="fas fa-plus"></i></button>

</div>
                    
    <div class="licen-5">

<div class="just-line"></div>
  <button type="button" class="licen-remove-5 button-style">삭제 <i class="fas fa-times"></i></button>

  <div class="licen-name hap">
  
  <div class="title wid-1">자격증명</div>
  <input type="text" class="input-style">
</div>

 <div class="hap">
  
  <div class="wid-1">발행처</div>
  <input type="text" class="input-style">
</div>
  
  <div class="hap">
  
  <div class="wid-1">취득일</div>
  <input type="text" class="input-style">
</div>

  <button type="button" class="licen-add-5 button-style">자격 / 면허 추가 <i class="fas fa-plus"></i></button>

</div>                
        
      </div>
      
      
      
    <div class="skill-info">
        
         <div class="sub-title">기술 / 능력</div>
 
        <div class="skill">
          
      <div class="hap">
          
          <div class="has-skill wid-1">보유기술</div>
          <input type="text" class="input-style" placeholder="보유기술 입력 (ex. 문서작성능력, 비즈니스영어, 커뮤니케이션스킬, java 등)">
        <button type="button" class="skill-add"><i class="fas fa-plus"></i></button>
        </div>
 
        </div>
        
      </div>
      
            <div class="army-info">
        
         <div class="sub-title">병역사항</div>
 
        <div class="army">
          
      <div class="hap">
          
          <div class="wid-1">면제사유</div>
          <input type="text" class="input-style">
        </div>
 
        <div class="army-name hap">
          
          <div class="title wid-1">구분</div>
           <div class="select-box">
        
        <ul class="select-ul army-select-ul">
  
           <li>군필</li>
          <li>미필</li>
          <li>면제</li>
          <li>해당없음</li>

          <span><i class="fas fa-angle-down"></i></span>
          <span><i class="fas fa-angle-up"></i></span>
          </ul>

      </div>
        </div>
 
        </div>
        
      </div>
      
      <div class="hope-info">
        
         <div class="sub-title">희망사항</div>
 
        <div class="hope">
          
      <div class="hap">
          
          <div class="wid-1">희망지역</div>
          
        </div>
          
          <div class="hap">
          
          <div class="wid-1">희망연봉</div>
          <input type="text" class="input-style">
        </div>
          
          <div class="hap">
          
          <div class="wid-1">연락가능 시간</div>
          <input type="text" class="input-style">
        </div>
 
        <div class="hope-name hap">
          
          <div class="title wid-1">상태</div>
           <div class="select-box">
        
        <ul class="select-ul hope-select-ul">
  
           <li>이력서 비공개</li>
          <li>적극적인 이직</li>
          <li>유연한 이직</li>

          <span><i class="fas fa-angle-down"></i></span>
          <span><i class="fas fa-angle-up"></i></span>
          </ul>

      </div>
        </div>
 
        </div>
        
      </div>
      
            <div class="pofol-info">
        
         <div class="sub-title">포트폴리오 및 기타문서</div>
 
        <div class="pofol">
          
      <div class="hap">
          
          <div class="wid-1">파일업로드</div>
          <input type="text" class="input-style">
        </div>
          
          <div class="hap">
          
          <div class="wid-1">URL</div>
          <input type="text" class="input-style">
        </div>
 
        <div class="pofol-name hap">
          
          <div class="title wid-1">구분</div>
           <div class="select-box">
        
        <ul class="select-ul pofol-select-ul">
  
           <li>이력서</li>
          <li>증명서</li>
          <li>포트폴리오</li>
          <li>기획서</li>
          <li>동영상</li>

          <span><i class="fas fa-angle-down"></i></span>
          <span><i class="fas fa-angle-up"></i></span>
          </ul>

      </div>
        </div>
 
        </div>
        
      </div>
     
    </div>
    
    
  </div>
  
  
  <div class="nav-bar">
    
    <div class="nav-bar-title">
      
      <p>이력서 항목</p>
      
    </div>
    
    <button class="job-button"><span>희망직종</span></button>
    <button class="edu-button"><span>최종학력</span></button>
    <button class="career-button"><span>경력사항</span></button>
    <button class="licen-button"><span>자격 / 면허</span></button>
    <button class="skill-button"><span>기술 / 능력</span></button>
    <button class="army-button"><span>병역사항</span></button>
    <button class="hope-button"><span>희망사항</span></button>
    <button class="pofol-button"><span>포트폴리오 및 기타문서</span></button>
    
      <button class="submit-button" type="submit">저장</button> 
    
  </div>
    </div>
  
</body>
</html>