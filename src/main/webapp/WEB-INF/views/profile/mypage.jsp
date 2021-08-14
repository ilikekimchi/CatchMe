<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<link href="/css/mypage.css" rel="stylesheet" />
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
            <li><a href="/profile/mypage"><i class="fas fa-home"></i>개인회원 홈</a></li>
            <li><a href="/customer/list"><i class="fas fa-user-edit"></i>회원정보</a></li>
            <li><a href="/profile/list"><i class="far fa-address-card"></i>이력서</a></li>
            <li><a href="/requestUser"><i class="far fa-building"></i>기업의 요청</a></li>
            <li><a href="/matchUser"><i class="fas fa-handshake"></i>매칭된 기업</a></li>
            <li><a href="/portfolio"><i class="fas fa-paperclip"></i>포트폴리오</a></li>
         </ul>

      </nav>

   </div>

   <div class="myhome con">

      <div class="title">

         <p>열정! 열정! 열정! 이직러님</p>

      </div>

      <div class="alarm">
         <ul>
            <li><a href="#">1</a><span>나의 알림</span></li>
            <li><a href="#">2</a><span>기업의 요청</span></li>
            <li><a href="#">3</a><span>수락한 요청</span></li>
            <li><a href="#">4</a><span>관심 기업</span></li>
         </ul>
      </div>

      <div class="biz-card">

         <div class="biz-card-title">
            <p>노출되는 이력카드</p>
         </div>

               <c:forEach var="item" items="${list}">

                  <div class="biz-card-1">

                     <div class="img-box">
               
                         <c:if test="${item.profileImg != null}">
                           <a href="" class="img-change-click"><img src="/CatchMeUpload/${item.profileImg}" alt=""></a>
                           </c:if>
                           <c:if test="${item.profileImg == null && sessionScope.customer.customerGender eq 'm'}">
                         <a href="" class="img-change-click"><img src="/image/men.png" alt=""></a>
                           </c:if>
                           <c:if test="${item.profileImg == null && sessionScope.customer.customerGender eq 'f'}">
                         <a href="" class="img-change-click"><img src="/image/woman.png" alt=""></a>
                           </c:if>
         
                     </div>
         
                     <div class="biz-card-small">
         
                        <div class="name">${item.customerName}</div>
                        <div class="birth">(<fmt:formatDate pattern="yyyy" value="${item.customerBirthday}" />)</div>
                        <div class="job">직종 : ${item.jobLarge} / ${item.jobSmall}</div>
                        <c:if test="${item.careerDate == null}"><div class="career-info">경력 : 신입이에요</div></c:if>
                        <c:if test="${item.careerDate != null}"><div class="career-info">경력 : ${item.careerDate}</div></c:if>
                        <div class="education">학력 : ${item.profileSchoolState}</div>
                        <div class="short-intro">한줄소개 : ${item.profileWriting}</div>
         
                     </div>
         
                     <div class="biz-card-button">
         
                        <div><a href="${item.profileSeq}/update">수정하기</a></div>
                        <c:if test="${item.profileState == 1}"><div><span>이력서 비공개중</span></div></c:if>
                        <c:if test="${item.profileState == 2}"><div><span>적극적인 이직중</span></div></c:if>
                        <c:if test="${item.profileState == 3}"><div><span>유연한 이직중</span></div></c:if>
                        <div><a href="${item.customerId}/delete">초기화</a></div>
         
                     </div>
         
                     <div class="license">
         
                        <ul>
                           <li>${item.skillContent}</li>
                        </ul>
         
                     </div>
         
                  </div>

               </c:forEach>



      </div>

   </div>
   



</body>
</html>