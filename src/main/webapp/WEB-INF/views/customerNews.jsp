<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CatchMe - 이직뉴스</title>

<link rel="icon" type="image/png" href="/image/favicon/favicon-32x32.png">

<!-- 폰트어썸 불러오기 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<jsp:include page="footer.jsp" />
<jsp:include page="topbar.jsp" />

<link href="/css/news.css" rel="stylesheet" />
<link href="/css/normal.css" rel="stylesheet" />

</head>
<body>

	<!-- <div class="side-bar">

		<div class="logo-box">

			<a href="/"><img
				src="https://pds.saramin.co.kr/company/logo/202008/21/qfedx5_ny73-1meg1kx_logo.png"
				alt=""></a>

		</div>

		<nav class="side-menu">

			<ul>
				<li><a href="profile/mypage"><i class="fas fa-home"></i>개인회원 홈</a></li>
				<li><a href="/customer/list"><i class="fas fa-user-edit"></i>회원정보</a></li>
				<li><a href="/profile/list"><i class="far fa-address-card"></i>이력서</a></li>
				<li><a href="/requestUser"><i class="far fa-building"></i>기업의 요청</a></li>
				<li><a href="/matchUser"><i class="fas fa-handshake"></i>매칭된 기업</a></li>
				<li><a href="/portfolio"><i class="fas fa-paperclip"></i>포트폴리오</a></li>
			</ul>

		</nav>

	</div> -->
	
	<div class="myhome con">

		<div class="title">

			<p>이직뉴스</p>

		</div>
		
		<div class="news-list">

		<ul>

			<c:forEach var="url" items="${urls}" varStatus="status" begin="1" end="${titles.size()}">
			
				<c:if test="${titles[status.index]!=''}">
	                     
					<li>

					<c:if test="${srcs[status.index] == ''}">
					<a href="${url}" target="_blank" class="img"><img src="/image/2884221-200.png"></a>
					</c:if>
					<c:if test="${srcs[status.index] != ''}">
					<a href="${url}" target="_blank" class="img"><img src="${srcs[status.index]}"></a>
					</c:if>
					
					<a href="${url}" target="_blank" class="url">${titles[status.index]}</a>
					</li>
				
				</c:if>
			
		</c:forEach>

		</ul>

	</div>

	</div>
	

	

<%-- <table class=big>
		<colgroup>
			<col width="50%">
			<col width="50%">
		</colgroup>
		<tr class="title">
			<th colspan="3">뉴스</th>
		</tr>
		<thead>
		<tbody>
			<tr>
				<td>
					<table class="seongbukNews1">
						<colgroup>
							<col width="10%">
							<col width="90%">
						</colgroup>
						<tr>
			
						<c:forEach var="url" items="${urls}" varStatus="status" begin="1"
							end="10">
							<c:if test="${titles[status.index]!=''}">
								
									 <td>${ status.index-2}</td>
									<td><a href="${url}" target="_blank">${titles[status.index]}</a></td>
							
							</c:if>
						</c:forEach>
							</tr>
					</table>
				</td>
				<td>
					<table class="seongbukNews2">
						<colgroup>
							<col width="10%">
							<col width="90%">
						</colgroup>
						<c:forEach var="url" items="${urls}" varStatus="status" begin="11"
							end="${titles.size()}">
							<c:if test="${titles[status.index]!=''}">
								<tr>
									 <td>${ status.index-2}</td> 
									<td><a href="${url}" target="_blank">${titles[status.index]}</a></td>
								</tr>
							</c:if>
						</c:forEach>
					</table>
				</td>
			</tr>
		</tbody>
	</table> --%>

</body>
</html>