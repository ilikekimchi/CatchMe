<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>CatchMe - 이직정보</title>

<link rel="icon" type="image/png" href="/image/favicon/favicon-32x32.png">

<link href="/css/header.css" rel="stylesheet" />
<link href="/css/footer.css" rel="stylesheet" />
<link href="/css/board.css" rel="stylesheet" />
<link href="/css/biz-card.css" rel="stylesheet" />
<link href="/css/side-filter.css" rel="stylesheet" />

<link href="/css/search-box.css" rel="stylesheet" />

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css">

<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.12.4.min.js"></script>

<script src="/js/login-modal.js" type="text/javascript"></script>

<script src="/js/board.js" type="text/javascript"></script>

<jsp:include page="../footer.jsp" />
<jsp:include page="../topbar.jsp" />

<script type="text/javascript">
	$(document).ready(function() {
		$('.request-resume').click(function() {
			
			let customerId = $(this).children('.customer-info').val();
			let companyId = '${sessionScope.company.companyId}';
			
			let data = {
			
				customerId: customerId,
				companyId: companyId
			
			}
			
			console.log(data);
			
			$.ajax({
				type: "POST",
				url: "/board/chatRoom",
				contentType: "application/json",
				data: JSON.stringify(data),
				success: function(result) {
							
					console.log(result);
					
				},
				error: function() {
							
				}
			});
			
		})
	})
</script>

</head>
<body>
	
	<div id="filter">
		<div class="scroll"></div>
		<aside class="filter-menu">
			<ul class="filter-info">
				<li class="location sort"><a class="location-info"> <strong>지역</strong>
						<span id="location-btn" class="btn down"></span>
				</a>
					<ul class="location-list">
						<c:forEach var="areaList" items="${areaList}">
							<li><a>${areaList.area1}</a></li>
						</c:forEach>
					</ul>
				</li>
				<li class="gender sort"><a class="gender-info"> <strong>성별</strong>
						<span id="gender-btn" class="btn down"></span>
				</a>
					<ul class="gender-list">
						<li><a>남자</a></li>
						<li><a>여자</a></li>
					</ul></li>
				<li class="career1 sort"><a class="career-info"> <strong>경력</strong>
						<span id="career-btn" class="btn down"></span>
				</a>
					<ul class="career-list">
						<li><a>~1년</a></li>
						<li><a>~2년</a></li>
						<li><a>~3년</a></li>
						<li><a>~4년</a></li>
						<li><a>~5년</a></li>
						<li><a>이상</a></li>
					</ul></li>
				<li class="sort"><a href="/companyNews" class="cp-info">기업정보 <span
						class="cp-btn"></span>
				</a></li>
				<li class="sort"><a href="/customerNews" class="ct-info">이직정보 <span
						class="ct-btn"></span>
				</a></li>
			</ul>
		</aside>
		<button id="filter-btn">
			<span class="btn block"></span>
		</button>
	</div>
	<div id="container">
		<div class="wrap">
			<h1>이직정보</h1>
			<div class="content-filter"></div>
			<div>
				<%-- <c:if test="${ sessionScope.profile.list == null }">
					<div>등록된 이직 정보가 없습니다.</div>
				</c:if>
				<c:if test="${sessionScope.profile.list != null }"> --%>
				<div>
					<%-- <div>
						<div>
							<form method="get" action="">
								<div class="search">
									<span> 
										<select name="search">
												<option value="0">선택</option>
												<option value="1" ${pager.search == 1 ? 'selected' : ''}>닉네임</option>
												<option value="2" ${pager.search == 2 ? 'selected' : ''}>지역</option>
												<option value="3" ${pager.search == 3 ? 'selected' : ''}>직종/직급</option>
												<option value="4" ${pager.search == 4 ? 'selected' : ''}>기술/능력</option>
												<option value="5" ${pager.search == 5 ? 'selected' : ''}>경력</option>
										</select>
									</span> 
									<span> 
										<input type="text" name="keyword" placeholder="검색어를 입력해 주세요" value="${pager.keyword}">
									</span>
									<span> 
										<input type="submit" value="검색" class="button">
									</span>
								</div>
							</form>
						</div> --%>
						<div class="biz-card">
							<c:if test="${listAll.size() < 1}">
								<div>
									<div>등록 된 명함 없습니다</div>
								</div>
							</c:if>
							<c:forEach var="item" items="${listAll}">
								<div class="biz-card-1">
									<div class="img-box">
				                       <c:if test="${item.customerGender eq 'm' || item.customerGender eq '남성'}">
				                         <a href="" class="img-change-click"><img src="/image/men.png" alt=""></a>
				                           </c:if>
				                           <c:if test="${item.customerGender eq 'f' || item.customerGender eq '여성'}">
				                         <a href="" class="img-change-click"><img src="/image/woman.png" alt=""></a>
				                       </c:if>
									</div>
									<div class="biz-card-small">
										<div class="name">${item.customerNnm}</div>
										<div class="birth">
											<fmt:formatDate pattern="yyyy-MM-dd"
												value="${item.customerBirthday}" />
										</div>
										<div class="career_work">${item.careerWork}</div>
										<%-- <div class="rank">${item.careerCategory}</div> --%>
										<div class="career">${item.careerDate}</div>
										<div class="education">${item.profileSchoolState}</div>
										<div class="short-intro">${item.profileWriting}</div>
									</div>
									<div class="license">
										<ul>
											<li>${item.skillContent}</li>
										</ul>
									</div>
									<c:if test="${sessionScope.customer.customerId == 'admin'}">
										<div style="position: absolute;">
											<a href="${item.profileSeq}/profileCheck">검증(관리자전용)</a>
										</div>
									</c:if>
									<c:if test="${sessionScope.company != null }">
										<div class="request-resume">
											<input class="customer-info" type="hidden" value="${item.customerId}">
                     						<a class="request-btn">요청하기</a>
                     					</div>
                     				</c:if>
								</div>
							</c:forEach>
						</div>
						<div>
							<!-- 페이지네이션 -->
							<div id="page">
								<ul>
									<li class="prev"><a href="?page=${pager.prev}&${pager.query}">
										<i class="fas fa-chevron-left"></i></a></li>
									<c:forEach var="page" items="${pager.list}">
										<li id="pager-list"
											class="${page == pager.page ? 'active' : ''}"><a
											href="?page=${page}">${page}</a></li>
									</c:forEach>
									<li class="next"><a href="?page=${pager.next}&${pager.query}">
									<i class="fas fa-chevron-right"></i></a></li>
								</ul>
							</div>
							<!-- 페이지네이션 -->
						</div>
						<c:if test="${sessionScope.customer.customerId == 'admin' }">
					      <div>
					      	<div>
					            <button><a href="dummy">더미등록</a></button>
					            <button><a href="init">초기화</a></button>
					         </div>
					       </div>
					   </c:if>
					</div>
				</div>
			</div>
		</div>
</body>
</html>