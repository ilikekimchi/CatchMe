<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<div>
	  <c:if
         test="${sessionScope.customer != null && sessionScope.company == null}">
         <h2 style="text-align: center" id="name">${sessionScope.customer.customerNnm}
            님</h2>
         <h4 style="text-align: center" id="email">${sessionScope.customer.customerId}</h4>
         <div class="frame">
            <div class="profile"></div>
         </div>
         <a href="/mypage" class="mypage in"> <span
            class="mypage-icon"></span>
            <div>마이페이지</div>
         </a>
         <a href="/profile/list" class="career in"> <span class="career-icon"></span>
            <div>내 이력서</div>
         </a>
         <a href="logout" class="logout in"> <span class="logout-icon"></span>
            <div>로그아웃</div>
         </a>
      </c:if>
      <c:if
         test="${sessionScope.customer == null && sessionScope.company != null}">
         <h2 style="text-align: center" id="name">${sessionScope.company.companyName}
            님</h2>
         <h4 style="text-align: center" id="email">${sessionScope.company.companyId}</h4>
         <div class="notice">
            <c:if test="${sessionScope.sumCoin != null}">
               <div>현재코인: ${sessionScope.sumCoin}코인</div>
            </c:if>
            <c:if test="${sessionScope.sumCoin == null}">
               <div>현재코인: 0코인</div>
            </c:if>
           </c:if> 
         </div>
		<div><h3>코인 등록(관리자 전용)</h3></div>
		<div>
			<form method="post">			
				<div>
					<label>코인 수량:</label>
					<input name="coinName" type="number">코인
				</div>
				<div>
					<label>가격:</label>
					<input name="coinPay" type="number">원
				</div>
				<div>
					<input type="submit" value="등록">
				</div>
			</form>
		</div>
		<div>
			<a href="list">취소</a>
		</div>
	</div>
</body>
</html>