<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<div class="container">
<%-- 예약 정보 검색 기능 --%>
<div class="search_user">
	<%-- 예약 번호 검색 --%>
	<form action="${pageContext.request.contextPath}/admin/rsvnList?pageNum=${pager.pageNum}" method="post" style="display: inline-block;">
		<input type="text" placeholder="예약 번호" onfocus="this.placeholder=''" onblur="this.placeholder='예약 번호'" 
		name="searchRNo">
		<button type="submit">검색</button>
	</form>
	<%-- 예약자 이름 검색 --%>
	<form action="${pageContext.request.contextPath}/admin/rsvnList?pageNum=${pager.pageNum}" method="post" style="display: inline-block;">
		<input type="text" placeholder="예약자 이름" onfocus="this.placeholder=''" onblur="this.placeholder='예약자 이름'" 
		name="searchName">
		<button type="submit">검색</button>
	</form>
	<!-- 메세지 출력 -->
	<div id="searchMsg" style="display: inline-block; color:red;"></div>
</div>

<%-- 예약 목록을 출력하는 영역 --%>
<div class="baseContent">
	<table class="user_table">
		<tr>
			<th>예약번호</th>
			<th>예약자명</th>
			<th>예약일</th>
			<th>출발일</th>
			<th>상품명</th>
			<th>객실타입</th>
			<th>요금</th>
			<th>상태</th>
		</tr>
		
		<c:choose>
			<c:when test="${!empty(rsvnAllList) }">
				<c:forEach items="${rsvnAllList }" var="rsvnAll">
					<tr onclick="location.href='${pageContext.request.contextPath}/admin/rsvnDetail?rNo=${rsvnAll.rNo }'"  class="moveToDetail">
						<td align="center">${rsvnAll.rNo }</td>
						<td align="center">${rsvnAll.name }</td>
						<td align="center">${rsvnAll.rDate }</td>
						<td align="center">${rsvnAll.pDeparture }</td>
						<td align="center">${rsvnAll.pName }</td>
						<td align="center">${rsvnAll.pdGrade }</td>
						<td align="center"><fmt:formatNumber value="${rsvnAll.pdHigh*10000 }" pattern="#,###,###"/>원</td>
						<c:choose>
							<c:when test="${rsvnAll.rState==1 }">
								<td>예약완료</td>
							</c:when>
							<c:when test="${rsvnAll.rState==0 }">
								<td>취소</td>
							</c:when>
						</c:choose>
					</tr>			
				</c:forEach>
			</c:when>	
			<c:otherwise>
					<tr>
						<td colspan="8">예약 내역이 없습니다.</td>
					</tr>
			</c:otherwise>
		</c:choose>	
	</table>

<%-- 페이징을 출력하는 영역 --%>
<div align="center" style="font-size: 13px; font-weight:bold; letter-spacing: 5px; margin-top: 20px;">
	<!-- < -->
	<c:choose>
		<c:when test="${pager.startPage > pager.blockSize}">
			<c:choose>
				<c:when test="${!empty(searchRNo) }">
					<a href="${pageContext.request.contextPath}/admin/rsvnList?pageNum=${pager.startPage-pager.blockSize}&searchRNo=${searchRNo}">&lt;</a>
				</c:when>		
				<c:when test="${!empty(searchName) }">
					<a href="${pageContext.request.contextPath}/admin/rsvnList?pageNum=${pager.startPage-pager.blockSize}&searchName=${searchName}">&lt;</a>	
				</c:when>
				<c:otherwise>
					<a href="${pageContext.request.contextPath}/admin/rsvnList?pageNum=${pager.startPage-pager.blockSize}">&lt;</a>						
				</c:otherwise>	
			</c:choose>		
		</c:when>
	</c:choose>
	
	<!-- 블럭 -->
	<c:forEach begin="${pager.startPage }" end="${pager.endPage }" var="page">
		<c:choose>
			<c:when test="${page == pager.pageNum }">
				${page}						
			</c:when>
			<c:otherwise>
				<c:choose>
					<c:when test="${!empty(searchRNo) }">
						<a href="${pageContext.request.contextPath}/admin/rsvnList?pageNum=${page}&searchRNo=${searchRNo}">${page}</a>	
					</c:when>		
					<c:when test="${!empty(searchName) }">
						<a href="${pageContext.request.contextPath}/admin/rsvnList?pageNum=${page}&searchName=${searchName}">${page}</a>	
					</c:when>
					<c:otherwise>
						<a href="${pageContext.request.contextPath}/admin/rsvnList?pageNum=${page}">${page}</a>						
					</c:otherwise>	
				</c:choose>				
			</c:otherwise>
		</c:choose>
	</c:forEach>
	
	<!-- > -->
	<c:choose>
		<c:when test="${pager.endPage != pager.totalPage}">
			<c:choose>
				<c:when test="${!empty(searchRNo) }">
					<a href="${pageContext.request.contextPath}/admin/rsvnList?pageNum=${pager.startPage+pager.blockSize}&searchRNo=${searchRNo}">&gt;</a>
				</c:when>		
				<c:when test="${!empty(searchName) }">
					<a href="${pageContext.request.contextPath}/admin/rsvnList?pageNum=${pager.startPage+pager.blockSize}&searchName=${searchName}">&gt;</a>
				</c:when>
				<c:otherwise>
					<a href="${pageContext.request.contextPath}/admin/rsvnList?pageNum=${pager.startPage+pager.blockSize}">&gt;</a>						
				</c:otherwise>	
			</c:choose>				
		</c:when>
	</c:choose>
</div>
<!-- 페이징 블럭 끝 -->
</div>
</div>