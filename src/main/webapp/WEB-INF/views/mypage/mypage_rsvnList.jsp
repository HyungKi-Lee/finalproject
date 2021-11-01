<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/admin.css" type="text/css"/> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<%-- 나의 예약 목록을 출력하는 영역 --%>
<div class="container">
	<div class="baseContent">
		<h2 style="font-size: 1.3em; margin-bottom: 10px;">나의 예약내역</h2>
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
				<c:when test="${!empty(myRsvnAllList) }">
					<c:forEach items="${myRsvnAllList }" var="myRsvnAll">
						<tr onclick="location.href='${pageContext.request.contextPath}/mypage/rsvnDetail?rNo=${myRsvnAll.rNo }'"  class="moveToDetail">
							<td align="center">${myRsvnAll.rNo }</td>
							<td align="center">${myRsvnAll.rDate }</td>
							<td align="center">${myRsvnAll.pDeparture }</td>
							<td align="center">${myRsvnAll.pName }</td>
							<td align="center">${myRsvnAll.pdGrade }</td>
							<td align="center"><fmt:formatNumber value="${myRsvnAll.pdHigh*10000 }" pattern="#,###,###"/>원</td>
							<c:choose>
								<c:when test="${myRsvnAll.rState==1 }">
									<td>예약완료</td>
								</c:when>
								<c:when test="${myRsvnAll.rState==0 }">
									<td>취소</td>
								</c:when>
							</c:choose>
						</tr>			
					</c:forEach>
				</c:when>	
				<c:otherwise>
						<tr>
							<td colspan="7">예약 내역이 없습니다.</td>
						</tr>
				</c:otherwise>
			</c:choose>	
		</table>
	</div>

<%-- 페이지 번호를 출력하는 영역 --%>
<div style="display: block; text-align: center; margin: 20px;">		
	<c:if test="${paging.startPage != 1 }">
		<a href="${pageContext.request.contextPath}/admin/usersList?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&lt;</a>
	</c:if>
	<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
		<c:choose>
			<c:when test="${p == paging.nowPage }">
				<b>${p }</b>
			</c:when>
			<c:when test="${p != paging.nowPage }">
				<a href="${pageContext.request.contextPath}/admin/usersList?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
			</c:when>
		</c:choose>
	</c:forEach>
	<c:if test="${paging.endPage != paging.lastPage}">
		<a href="${pageContext.request.contextPath}/admin/usersList?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;</a>
	</c:if>
</div>
</div>
