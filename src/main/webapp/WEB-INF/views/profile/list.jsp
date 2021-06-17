<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link href="/css/normal.css" rel="stylesheet" />
<link href="/css/list.css" rel="stylesheet" />

<!-- 폰트어썸 불러오기 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<jsp:include page="../footer.jsp" />
<jsp:include page="../topbar.jsp" />

</head>
<body>

   <div class="side-bar">

      <div class="logo-box">

         <a href="/"><img src="https://pds.saramin.co.kr/company/logo/202008/21/qfedx5_ny73-1meg1kx_logo.png" alt=""></a>

      </div>

      <nav class="side-menu">

         <ul>
            <li><a href="/mypage"><i class="fas fa-home"></i>개인회원 홈</a></li>
            <li><a href="/userinfo"><i class="fas fa-user-edit"></i>회원정보</a></li>
            <li><a href="/profile/list"><i class="far fa-address-card"></i>이력서</a></li>
            <li><a href="/requestUser"><i class="far fa-building"></i>기업의 요청</a></li>
            <li><a href="/matchUser"><i class="fas fa-handshake"></i>매칭된 기업</a></li>
         </ul>

      </nav>

   </div>
   
   
      <div class="myhome con">

      <div class="title">

         <p>${sessionScope.customer.customerNnm}의 이력서</p>

      </div>
   
   
   <div>
      <div>
         <div>
               <c:if test="${list.size() < 1}">
               
               <div class="empty-list">

                  <div class="img-box">

                     <img src="/image/empty-img.png" alt="">

                  </div>
                  
                  <div class="list-add">

                     <p>등록된 이력서가 없어요 ㅠㅠ</p>
                     <a href="add">이력서 등록하러 가기 ></a>
                  </div>

               </div>

               </c:if>
               <c:forEach var="item" items="${list}">

                  <div class="biz-card-1">
					
	                     <div class="img-box">
	               
	                         <c:if test="${item.profileImg != null}">
	                           <a href="" class="img-change-click"><img src="/CatchMeUpload/${item.profileImg}" alt=""></a>
	                           </c:if>
	                           <c:if test="${item.profileImg == null && sessionScope.customer.customerGender eq 'm'}">
	                         <a href="" class="img-change-click"><img src="/image/men.PNG" alt=""></a>
	                           </c:if>
	                           <c:if test="${item.profileImg == null && sessionScope.customer.customerGender eq 'f'}">
	                         <a href="" class="img-change-click"><img src="/image/woman.PNG" alt=""></a>
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
         <div>
         </div>      
      </div>
   </div>
   </div>
</body>
</html>