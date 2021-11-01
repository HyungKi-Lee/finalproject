<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>	
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/admin.css" type="text/css"/> 
<!-- container-->
<div class="container"> 
	<p class="title"><b>마이페이지</b></p> 
	
	<%-- 회원 정보 --%>
	<div class="baseContent">
		<div class="summary">
			<h3 class="summary_h">회원 정보</h3>
		</div>
		<div class="user_box">														
				<table class="user_info">
					<tr>
						<td class="info">아이디</td>
						<td class="value">${loginSession.id}</td>
					</tr>
					<tr>
						<td class="info">이름</td>
						<td class="value">${loginSession.name}</td>
					</tr>
					<tr>
						<td class="info">이메일</td>
						<td class="value">${loginSession.email}</td>
					</tr>
					<tr>
						<td class="info">전화번호</td>
						<td class="value">${loginSession.phone}</td>
					</tr>
					<tr>
						<td class="info">생년월일</td>
						<fmt:parseDate value="${loginSession.birthday}" var="birthday" pattern="yyyy-MM-dd HH:mm:ss"/>
						<td class="value"><fmt:formatDate value="${birthday}" pattern="yyyy년 MM월 dd일"/></td>
					</tr>
					<tr>
						<td class="info">주소</td>
						<td class="value">(${loginSession.zipcode}) ${loginSession.address1} ${loginSession.address2} </td>
					</tr>
				</table>
				<div class="user_button" >
					<a href="${pageContext.request.contextPath}/mypage/modify?id=${loginSession.id}">
						<button type="button" class="user_modify">회원정보수정</button>
					</a>
					<a href="${pageContext.request.contextPath}/mypage/delete">
						<button type="button" class="user_delete">회원탈퇴</button>
					</a>
				</div>
		</div>
	</div>	
	
	<%-- 예약 내역 --%>
	<div class="baseContent">
		<div class="summary">
			<h3 class="summary_h">예약 내역</h3>
			<a href="${pageContext.request.contextPath}/mypage/rsvnList">
				<button type="button">MORE ></button>
			</a>
		</div>
		<table class="user_table">
			<tr>
				<th>예약번호</th>
				<th>예약일</th>
				<th>출발일</th>
				<th>상품명</th>
				<th>객실타입</th>
				<th>요금</th>
				<th>상태</th>
			</tr>
			<c:choose>
				<c:when test="${empty(myRsvnList) }">
					<tr>
					<td colspan="7">예약 내역이 없습니다.</td>
					</tr>
				</c:when>
				<c:otherwise>
					<c:forEach var="myRsvn" items="${myRsvnList }">
						<tr onclick="location.href='${pageContext.request.contextPath}/mypage/rsvnDetail?rNo=${myRsvn.rNo }'"  class="moveToDetail">
							<td>${myRsvn.rNo }</td>
							<td>${myRsvn.rDate }</td>
							<td>${myRsvn.pDeparture }</td>
							<td>${myRsvn.pName }</td>
							<td>${myRsvn.pdGrade }</td>						
							<td align="center"><fmt:formatNumber value="${myRsvn.pdHigh*10000 }" pattern="#,###,###"/>원</td>						
							<c:choose>
								<c:when test="${myRsvn.rState==1 }">
									<td>예약완료</td>
								</c:when>
								<c:when test="${myRsvn.rState==0 }">
									<td>취소</td>
								</c:when>
							</c:choose>
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>						
		</table>
	</div>
	
	
	<%-- 문의 내역 --%>
	<div class="baseContent">
		<div class="summary">
			<h3 class="summary_h">문의 내역</h3>
			<a href="${pageContext.request.contextPath}/mypage/qnaList">
				<button type="button">MORE ></button>
			</a>
		</div>
		<table class="user_table">
			<tr>
				<th>글 번호</th>
				<th>제목</th>
				<th>작성일자</th>
				<%-- <th>상태</th> --%>
			</tr>
			<c:choose>
				<c:when test="${empty(myQnaList) }">
					<tr>
					<td colspan="3">문의 내역이 없습니다.</td>
					</tr>
				</c:when>
				<c:otherwise>
					<c:forEach var="myQna" items="${myQnaList }">
						<tr onclick="location.href='${pageContext.request.contextPath}/qna_detail?qno=${myQna.qno}'"  class="moveToDetail">
							<td>${myQna.qno }</td>
							<td>${myQna.qtitle }</td>
							<td><fmt:formatDate value="${myQna.qdate }" pattern="yyyy-MM-dd"/></td>				
							<%-- <c:choose>
								<c:when test="${myQna.qstate==1 }">
									<td>미답변</td>
								</c:when>
								<c:when test="${myQna.qstate==2 }">
									<td>답변완료</td>
								</c:when>
								<c:otherwise>
									<td>구현중</td>
								</c:otherwise>
							</c:choose>		 --%>						
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</table>
	</div>
	
	
	<%-- 후기 내역 --%>
	<div class="baseContent">
		<div class="summary">
			<h3 class="summary_h">후기 내역</h3>
			<a href="${pageContext.request.contextPath}/mypage/reviewList">
				<button type="button">MORE ></button>
			</a>
		</div>
		<table class="user_table">
			<tr>
				<th>글 번호</th>
				<th>제목</th>
				<th>작성일자</th>
				<%-- <th>상태</th> --%>
			</tr>
			<c:choose>
				<c:when test="${empty(myReviewList) }">
					<tr>
					<td colspan="3">작성한 후기가 없습니다.</td>
					</tr>
				</c:when>
				<c:otherwise>
					<c:forEach var="myReview" items="${myReviewList }">
						<tr onclick="location.href='${pageContext.request.contextPath}/review_detail?rno=${myReview.rno}'"  class="moveToDetail">
							<td>${myReview.rno }</td>
							<td>${myReview.rtitle }</td>
							<td><fmt:formatDate value="${myReview.rdate }" pattern="yyyy-MM-dd"/></td>				
							<%-- <c:choose>
								<c:when test="${myReview.rstate==1 }">
									<td>미답변</td>
								</c:when>
								<c:when test="${myReview.rstate==2 }">
									<td>답변완료</td>
								</c:when>
								<c:otherwise>
									<td>구현중</td>
								</c:otherwise>
							</c:choose>	 --%>							
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</table>
	</div>
</div><!--container-->
