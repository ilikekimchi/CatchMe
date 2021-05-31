<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<link href="/css/comCoin.css" rel="stylesheet" />
<link href="/css/normal.css" rel="stylesheet" />

<!-- 폰트어썸 불러오기 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<jsp:include page="../footer.jsp" />
<jsp:include page="../topbar.jsp" />

<script src="/js/comCoin.js" type="text/javascript"></script>

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
  
  <p>코인내역</p>
  
</div>
  
  <div class="pay-his">
  
  <div class="pay-tap-menu">
    
    <ul>
      <li><a class="pay-li" href="#">충전 내역</a></li>
      <li><a class="paid-li" href="#">사용 내역</a></li>
    </ul>
    
  </div>
    
    <div class="pay-table">
      
      <table>
        
        <thead>
          <tr>
          <th class="nth-1">날짜</th>
          <th class="nth-1">포인트</th>
          <th>상세</th>
          </tr>
        </thead>
        
        <tbody>
          <tr>
          <td class="nth-1">날짜데이터</td>
          <td class="nth-1">포인트개수</td>
          <td>[카카오페이] 결제완료</td>
          </tr>
        </tbody>
        
      </table>
      
    </div>
    
        <div class="paid-table">
      
      <table>
        
        <thead>
          <tr>
          <th class="nth-1">날짜</th>
          <th class="nth-1">포인트</th>
          <th>상세</th>
          </tr>
        </thead>
        
        <tbody>
          <tr>
          <td class="nth-1 empty-data" colspan="3">사용 내역이 없습니다.</td>
          </tr>
        </tbody>
        
      </table>
      
    </div>
    
    </div>
  
<div class="adimg">
  <p>더 많은 이직러를 만나고 싶다면</p>
  <p>대화가 시작되면 포인트가 사용됩니다.</p>
</div>
  
  <div class="step-1">
    
    <div class="text">
    <p>1단계.</p>
    <p>결제 금액을 선택해주세요.</p>
    </div>
    
    <div class="step-1-table">
      
       <table>
        
        <thead>
          <tr>
          <th class="nth-1">선택</th>
          <th class="nth-2">금액</th>
          <th>상품 상세</th>
          </tr>
        </thead>
        
        <tbody>
          <tr>
          <td class="nth-1"><a href="#" class="btn-1"></a></td>
          <td class="nth-1">5,000원</td>
          <td>50개 코인</td>
          </tr>
        </tbody>
         
                 <tbody>
          <tr>
          <td class="nth-1"><a href="#" class="btn-2"></a></td>
          <td class="nth-1">10,000원</td>
          <td>100개 코인 + 보너스 코인 10개</td>
          </tr>
        </tbody>
         
                 <tbody>
          <tr>
          <td class="nth-1"><a href="#" class="btn-3"></a></td>
          <td class="nth-1">20,000원</td>
          <td>200개 코인 + 보너스 코인 20개</td>
          </tr>
        </tbody>
         
                 <tbody>
          <tr>
          <td class="nth-1"><a href="#" class="btn-4"></a></td>
          <td class="nth-1">30,000원</td>
          <td>300개 코인 + 보너스 코인 30개</td>
          </tr>
        </tbody>
         
                 <tbody>
          <tr>
          <td class="nth-1"><a href="#" class="btn-5"></a></td>
          <td class="nth-1">50,000원</td>
          <td>500개 코인 + 보너스 코인 50개</td>
          </tr>
        </tbody>
        
      </table>
      
      <div class="price">
        
          <p>총 결제금액 :&nbsp</p>
          <span class="price-click">0</span>
          <p>원 (부가세 10% 포함)</p>
        
      </div>
      
    </div>
    
  </div>
  
  <div class="step-2">
    
    <div class="text">
    <p>2단계.</p>
    <p>결제 방법을 선택해주세요.</p>
    </div>
    
    <div class="pay-type">
      
      <div class="pay-type-1">
        
        <p>일반 결제</p>
        
        <div class="pay-type-1-list">
          
          <ul>
            <li><a href="#">신용카드</a></li>
            <li><a href="#">휴대폰결제</a></li>
            <li><a href="#">가상계좌</a></li>
            <li><a href="#">계좌이체</a></li>
          </ul>
          
        </div>
        
      </div>
      
      <div class="pay-type-2">
        
        <p>간편 결제</p>
        
        <div class="pay-type-2-list">
          
          <div class="kakao"><a href="#"></a></div>
          
        </div>
        
      </div>
      
    </div>
    
  </div>

   
</div>

<div class="kakao-pay">
  
  <div class="tab">
    
    <ul>
      <li class="kakao-tap-1 kakao-click"><a href="#">QR코드로 결제</a></li>
      <li class="kakao-tap-2"><a href="#">카톡 메시지로 결제</a></li>
      <li class="kakao-tap-3"><a href="#"><i class="fas fa-times"></i></a></li>
    </ul>
    
  </div>
  
  <div class="kakao-qr">
    
    <div class="img-box">
     <img src="//t1.daumcdn.net/kakaopay/tesla/20181010/pg_web/images/logo_pay.png" alt="">
   </div>
    
    <div class="text">
      <p>QR코드를 스캔하면</p>
      <p>결제 페이지로 이동합니다.</p>
    </div>
    
    <div class="qrcode">
      <img src="https://ebook.qia.go.kr/file/20181207_105157/etc/qrcode_20181207105207.png" alt="">
    </div>
    
  </div>
  
  <div class="kakao-msg">
    
        <div class="img-box">
     <img src="//t1.daumcdn.net/kakaopay/tesla/20181010/pg_web/images/logo_pay.png" alt="">
   </div>
    
    <div class="text">
      <p>결제요청 메시지 전송을 위해</p>
      <p>아래 정보를 입력해주세요.</p>
    </div>
    
    <div class="pay-info">
      
      <p>휴대폰 번호</p>
      <input class="tel" type="text" placeholder="예) 01012345678" maxlength="11">
      <p>생년월일</p>
      <input class="year" type="text" placeholder="예) 840301" maxlength="6">
      
    </div>
    
    <div class="pay-btn">
      <button>결제 요청</button>
    </div>
    
  </div>
  
  <div class="kakao-send">
    
      <div class="img-box">
        <img src="//t1.daumcdn.net/kakaopay/tesla/20181010/pg_web/images/logo_pay.png" alt="">
      </div>
    
    <div class="text">
      
     <div class="text-1"> <div class="circle">1</div><p>휴대폰에서 카카오페이 결제 후.</p></div>
      <div class="text-2"><div class="circle">2</div><p>하단의 결제 완료 버튼</p><p>을 눌러주세요.</p></div>
      
      <div class="line"></div>
      
    </div>
    
     <div class="pay-btn">
      <button>결제 완료</button>
    </div>
    
  </div>
  
  <div class="cancle-btn">
    
    <p>카카오페이 결제를 중단하시겠습니까?</p>
    
    <ul>
      <li><a class="no" href="#">취소</a></li>
      <li><a class="yes" href="#">확인</a></li>
    </ul>
    
  </div>
  

  
</div>


  <div class="pay-err">
    
    <div class="text">
      
      <div class="err-cancle"><a href="#"><i class="fas fa-times"></i></a></div>
      <p>결제 요청 에러</p>
      <p>결제 요청이 실패하였습니다.</p>
      <p>잠시 후 시도해주세요</p>
      <button class="err-btn">확인</button>
      
    </div>
    
  </div>

</body>
</html>