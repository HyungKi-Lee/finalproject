<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container">
<%-- 상품 정보 검색 기능 --%>
<div class="search_user">
	<%-- 상품번호 검색 --%>
	<form action="${pageContext.request.contextPath}/admin/productList?pageNum=${pager.pageNum}" method="post" style="display: inline-block;">
		<input type="text" placeholder="상품번호" onfocus="this.placeholder=''" onblur="this.placeholder='상품번호'" 
		name="searchPNo">
		<button type="submit">검색</button>
	</form>
	<%-- 상품명 검색 --%>
	<form action="${pageContext.request.contextPath}/admin/productList?pageNum=${pager.pageNum}" method="post" style="display: inline-block;">
		<input type="text" placeholder="상품명" onfocus="this.placeholder=''" onblur="this.placeholder='상품명'" 
		name="searchPName">
		<button type="submit">검색</button>
	</form>	
</div>

<div class="baseContent">
<table class="user_table">
	<tr>
		<th>상품번호</th>
		<th>상품명</th>
		<th>출발일자</th>
		<th>코스이름</th>
		<th>이미지</th>
	</tr>
	
	<c:forEach items="${productAllList}" var="productAll">
		<tr onclick="location.href='${pageContext.request.contextPath}/admin/productDetail?pNo=${productAll.pNo }'"  class="moveToDetail">
			<td>${productAll.pNo }</td>
			<td>${productAll.pName }</td>
			<td>${productAll.pDeparture }</td>
			<td>${productAll.pCourse }</td>							
			<td>${productAll.pImg }</td>							
		</tr>
	</c:forEach>	
</table>

<%-- 페이징을 출력하는 영역 --%>
<div align="center" style="font-size: 13px; font-weight:bold; letter-spacing: 5px; margin-top: 20px;">
	<!-- < -->
	<c:choose>
		<c:when test="${pager.startPage > pager.blockSize}">
			<c:choose>
				<c:when test="${!empty(searchPNo) }">
					<a href="${pageContext.request.contextPath}/admin/productList?pageNum=${pager.startPage-pager.blockSize}&searchPNo=${searchPNo}">&lt;</a>
				</c:when>		
				<c:when test="${!empty(searchPName) }">
					<a href="${pageContext.request.contextPath}/admin/productList?pageNum=${pager.startPage-pager.blockSize}&searchPName=${searchPName}">&lt;</a>
				</c:when>
				<c:otherwise>
					<a href="${pageContext.request.contextPath}/admin/productList?pageNum=${pager.startPage-pager.blockSize}">&lt;</a>						
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
				<c:when test="${!empty(searchPNo) }">
					<a href="${pageContext.request.contextPath}/admin/productList?pageNum=${page}&searchPNo=${searchPNo}">${page}</a>
				</c:when>		
				<c:when test="${!empty(searchPName) }">
					<a href="${pageContext.request.contextPath}/admin/productList?pageNum=${page}&searchPName=${searchPName}">${page}</a>
				</c:when>
				<c:otherwise>
					<a href="${pageContext.request.contextPath}/admin/productList?pageNum=${page}">${page}</a>						
				</c:otherwise>	
			</c:choose>									
			</c:otherwise>
		</c:choose>
	</c:forEach>
	
	<!-- > -->
	<c:choose>
		<c:when test="${pager.endPage != pager.totalPage}">
			<c:choose>
				<c:when test="${!empty(searchPNo) }">
					<a href="${pageContext.request.contextPath}/admin/productList?pageNum=${pager.startPage+pager.blockSize}&searchPNo=${searchPNo}">&gt;</a>
				</c:when>		
				<c:when test="${!empty(searchPName) }">
					<a href="${pageContext.request.contextPath}/admin/productList?pageNum=${pager.startPage+pager.blockSize}&searchPName=${searchPName}">&gt;</a>
				</c:when>
				<c:otherwise>
					<a href="${pageContext.request.contextPath}/admin/productList?pageNum=${pager.startPage+pager.blockSize}">&gt;</a>						
				</c:otherwise>	
			</c:choose>		
		</c:when>
	</c:choose>
</div>
<!-- 페이징 블럭 끝 -->
</div>
</div>
