<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<div class="container">
<%-- 공지사항 정보 검색 기능 --%>
<div class="search_user">
	<%-- 공지사항 번호 검색 --%>
	<form action="${pageContext.request.contextPath}/admin/noticeList?pageNum=${pager.pageNum}" method="post" style="display: inline-block;">
		<input type="text" placeholder="게시글 번호" onfocus="this.placeholder=''" onblur="this.placeholder='게시글 번호'" 
		name="searchNNo">
		<button type="submit">검색</button>
	</form>
	<%-- 공지사항 제목 검색 --%>
	<form action="${pageContext.request.contextPath}/admin/noticeList?pageNum=${pager.pageNum}" method="post" style="display: inline-block;">
		<input type="text" placeholder="게시글 제목" onfocus="this.placeholder=''" onblur="this.placeholder='게시글 제목'" 
		name="searchNTitle">
		<button type="submit">검색</button>
	</form>
	<!-- 메세지 출력 -->
	<div id="searchMsg" style="display: inline-block; color:red;"></div>
</div>

<%-- 공지사항 목록을 출력하는 영역 --%>
<div class="baseContent">
	<table class="user_table">
		<tr>
			<th>글번호</th>
			<th>제목</th>
			<th>작성일자</th>
		</tr>
		
		<c:choose>
			<c:when test="${!empty(noticeAllList) }">
				<c:forEach items="${noticeAllList }" var="noticeAll">
					<tr onclick="location.href='${pageContext.request.contextPath}/admin/noticeDetail?nno=${noticeAll.nno }'"  class="moveToDetail">
						<td align="center">${noticeAll.nno }</td>
						<td align="center">${noticeAll.ntitle }</td>
						<td align="center"><fmt:formatDate value="${noticeAll.ndate }" pattern="yyyy-MM-dd" /></td>
					</tr>			
				</c:forEach>
			</c:when>	
			<c:otherwise>
					<tr>
						<td colspan="3">공지사항 내역이 없습니다.</td>
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
				<c:when test="${!empty(searchNNo) }">
					<a href="${pageContext.request.contextPath}/admin/noticeList?pageNum=${pager.startPage-pager.blockSize}&searchNNo=${searchNNo}">&lt;</a>
				</c:when>		
				<c:when test="${!empty(searchNTitle) }">
					<a href="${pageContext.request.contextPath}/admin/noticeList?pageNum=${pager.startPage-pager.blockSize}&searchNTitle=${searchNTitle}">&lt;</a>	
				</c:when>
				<c:otherwise>
					<a href="${pageContext.request.contextPath}/admin/noticeList?pageNum=${pager.startPage-pager.blockSize}">&lt;</a>						
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
					<c:when test="${!empty(searchNNo) }">
						<a href="${pageContext.request.contextPath}/admin/noticeList?pageNum=${page}&searchNNo=${searchNNo}">${page}</a>	
					</c:when>		
					<c:when test="${!empty(searchNTitle) }">
						<a href="${pageContext.request.contextPath}/admin/noticeList?pageNum=${page}&searchNTitle=${searchNTitle}">${page}</a>	
					</c:when>
					<c:otherwise>
						<a href="${pageContext.request.contextPath}/admin/noticeList?pageNum=${page}">${page}</a>						
					</c:otherwise>	
				</c:choose>				
			</c:otherwise>
		</c:choose>
	</c:forEach>
	
	<!-- > -->
	<c:choose>
		<c:when test="${pager.endPage != pager.totalPage}">
			<c:choose>
				<c:when test="${!empty(searchNNo) }">
					<a href="${pageContext.request.contextPath}/admin/noticeList?pageNum=${pager.startPage+pager.blockSize}&searchNNo=${searchNNo}">&gt;</a>
				</c:when>		
				<c:when test="${!empty(searchNTitle) }">
					<a href="${pageContext.request.contextPath}/admin/noticeList?pageNum=${pager.startPage+pager.blockSize}&searchNTitle=${searchNTitle}">&gt;</a>
				</c:when>
				<c:otherwise>
					<a href="${pageContext.request.contextPath}/admin/noticeList?pageNum=${pager.startPage+pager.blockSize}">&gt;</a>						
				</c:otherwise>	
			</c:choose>				
		</c:when>
	</c:choose>
</div>
<!-- 페이징 블럭 끝 -->
</div>
</div>