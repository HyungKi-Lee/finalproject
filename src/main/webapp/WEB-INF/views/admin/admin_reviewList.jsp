<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<div class="container">
<%-- 리뷰 정보 검색 기능 --%>
<div class="search_user">
	<%-- 리뷰 번호 검색 --%>
	<form action="${pageContext.request.contextPath}/admin/reviewList?pageNum=${pager.pageNum}" method="post" style="display: inline-block;">
		<input type="text" placeholder="게시글 번호" onfocus="this.placeholder=''" onblur="this.placeholder='게시글 번호'" 
		name="searchRNo">
		<button type="submit">검색</button>
	</form>
	<%-- 리뷰 제목 검색 --%>
	<form action="${pageContext.request.contextPath}/admin/reviewList?pageNum=${pager.pageNum}" method="post" style="display: inline-block;">
		<input type="text" placeholder="게시글 제목" onfocus="this.placeholder=''" onblur="this.placeholder='게시글 제목'" 
		name="searchRTitle">
		<button type="submit">검색</button>
	</form>
	<!-- 메세지 출력 -->
	<div id="searchMsg" style="display: inline-block; color:red;"></div>
</div>

<%-- 리뷰 목록을 출력하는 영역 --%>
<div class="baseContent">
	<table class="user_table">
		<tr>
			<th>글번호</th>
			<th>제목</th>
			<th>작성일자</th>
			<th>상태</th>
		</tr>
		
		<c:choose>
			<c:when test="${!empty(reviewAllList) }">
				<c:forEach items="${reviewAllList }" var="reviewAll">
					<tr onclick="location.href='${pageContext.request.contextPath}/admin/reviewDetail?rno=${reviewAll.rno }'"  class="moveToDetail">
						<td align="center">${reviewAll.rno }</td>
						<td align="center">${reviewAll.rtitle }</td>
						<td align="center"><fmt:formatDate value="${reviewAll.rdate }" pattern="yyyy-MM-dd" /></td>
						<c:choose>
							<c:when test="${reviewAll.rstate==1 }">
								<td>미답변</td>
							</c:when>
							<c:when test="${reviewAll.rState==2 }">
								<td>답변완료</td>
							</c:when>
							<c:otherwise>
								<td>구현중</td>
							</c:otherwise>
						</c:choose>
					</tr>			
				</c:forEach>
			</c:when>	
			<c:otherwise>
					<tr>
						<td colspan="4">리뷰 내역이 없습니다.</td>
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
					<a href="${pageContext.request.contextPath}/admin/reviewList?pageNum=${pager.startPage-pager.blockSize}&searchRNo=${searchRNo}">&lt;</a>
				</c:when>		
				<c:when test="${!empty(searchRTitle) }">
					<a href="${pageContext.request.contextPath}/admin/reviewList?pageNum=${pager.startPage-pager.blockSize}&searchRTitle=${searchRTitle}">&lt;</a>	
				</c:when>
				<c:otherwise>
					<a href="${pageContext.request.contextPath}/admin/reviewList?pageNum=${pager.startPage-pager.blockSize}">&lt;</a>						
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
						<a href="${pageContext.request.contextPath}/admin/reviewList?pageNum=${page}&searchRNo=${searchRNo}">${page}</a>	
					</c:when>		
					<c:when test="${!empty(searchRTitle) }">
						<a href="${pageContext.request.contextPath}/admin/reviewList?pageNum=${page}&searchRTitle=${searchRTitle}">${page}</a>	
					</c:when>
					<c:otherwise>
						<a href="${pageContext.request.contextPath}/admin/reviewList?pageNum=${page}">${page}</a>						
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
					<a href="${pageContext.request.contextPath}/admin/reviewList?pageNum=${pager.startPage+pager.blockSize}&searchRNo=${searchRNo}">&gt;</a>
				</c:when>		
				<c:when test="${!empty(searchRTitle) }">
					<a href="${pageContext.request.contextPath}/admin/reviewList?pageNum=${pager.startPage+pager.blockSize}&searchRTitle=${searchRTitle}">&gt;</a>
				</c:when>
				<c:otherwise>
					<a href="${pageContext.request.contextPath}/admin/reviewList?pageNum=${pager.startPage+pager.blockSize}">&gt;</a>						
				</c:otherwise>	
			</c:choose>				
		</c:when>
	</c:choose>
</div>
<!-- 페이징 블럭 끝 -->
</div>
</div>