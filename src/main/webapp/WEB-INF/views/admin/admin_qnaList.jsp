<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<div class="container">
<%-- Q&A 정보 검색 기능 --%>
<div class="search_user">
	<%-- Q&A 번호 검색 --%>
	<form action="${pageContext.request.contextPath}/admin/qnaList?pageNum=${pager.pageNum}" method="post" style="display: inline-block;">
		<input type="text" placeholder="게시글 번호" onfocus="this.placeholder=''" onblur="this.placeholder='게시글 번호'" 
		name="searchQNo">
		<button type="submit">검색</button>
	</form>
	<%-- Q&A 제목 검색 --%>
	<form action="${pageContext.request.contextPath}/admin/qnaList?pageNum=${pager.pageNum}" method="post" style="display: inline-block;">
		<input type="text" placeholder="게시글 제목" onfocus="this.placeholder=''" onblur="this.placeholder='게시글 제목'" 
		name="searchQTitle">
		<button type="submit">검색</button>
	</form>
	<!-- 메세지 출력 -->
	<div id="searchMsg" style="display: inline-block; color:red;"></div>
</div>

<%-- Q&A 목록을 출력하는 영역 --%>
<div class="baseContent">
	<table class="user_table">
		<tr>
			<th>글번호</th>
			<th>제목</th>
			<th>작성일자</th>
			<th>상태</th>
		</tr>
		
		<c:choose>
			<c:when test="${!empty(qnaAllList) }">
				<c:forEach items="${qnaAllList }" var="qnaAll">
					<tr onclick="location.href='${pageContext.request.contextPath}/admin/qnaDetail?qno=${qnaAll.qno }'"  class="moveToDetail">
						<td align="center">${qnaAll.qno }</td>
						<td align="center">${qnaAll.qtitle }</td>
						<td align="center"><fmt:formatDate value="${qnaAll.qdate }" pattern="yyyy-MM-dd" /></td>
						<c:choose>
							<c:when test="${qnaAll.qstate==1 }">
								<td>미답변</td>
							</c:when>
							<c:when test="${qnaAll.qState==2 }">
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
						<td colspan="4">Q&A 내역이 없습니다.</td>
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
				<c:when test="${!empty(searchQNo) }">
					<a href="${pageContext.request.contextPath}/admin/qnaList?pageNum=${pager.startPage-pager.blockSize}&searchQNo=${searchQNo}">&lt;</a>
				</c:when>		
				<c:when test="${!empty(searchQTitle) }">
					<a href="${pageContext.request.contextPath}/admin/qnaList?pageNum=${pager.startPage-pager.blockSize}&searchQTitle=${searchQTitle}">&lt;</a>	
				</c:when>
				<c:otherwise>
					<a href="${pageContext.request.contextPath}/admin/qnaList?pageNum=${pager.startPage-pager.blockSize}">&lt;</a>						
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
					<c:when test="${!empty(searchQNo) }">
						<a href="${pageContext.request.contextPath}/admin/qnaList?pageNum=${page}&searchQNo=${searchQNo}">${page}</a>	
					</c:when>		
					<c:when test="${!empty(searchQTitle) }">
						<a href="${pageContext.request.contextPath}/admin/qnaList?pageNum=${page}&searchQTitle=${searchQTitle}">${page}</a>	
					</c:when>
					<c:otherwise>
						<a href="${pageContext.request.contextPath}/admin/qnaList?pageNum=${page}">${page}</a>						
					</c:otherwise>	
				</c:choose>				
			</c:otherwise>
		</c:choose>
	</c:forEach>
	
	<!-- > -->
	<c:choose>
		<c:when test="${pager.endPage != pager.totalPage}">
			<c:choose>
				<c:when test="${!empty(searchQNo) }">
					<a href="${pageContext.request.contextPath}/admin/qnaList?pageNum=${pager.startPage+pager.blockSize}&searchQNo=${searchQNo}">&gt;</a>
				</c:when>		
				<c:when test="${!empty(searchQTitle) }">
					<a href="${pageContext.request.contextPath}/admin/qnaList?pageNum=${pager.startPage+pager.blockSize}&searchQTitle=${searchQTitle}">&gt;</a>
				</c:when>
				<c:otherwise>
					<a href="${pageContext.request.contextPath}/admin/qnaList?pageNum=${pager.startPage+pager.blockSize}">&gt;</a>						
				</c:otherwise>	
			</c:choose>				
		</c:when>
	</c:choose>
</div>
<!-- 페이징 블럭 끝 -->
</div>
</div>