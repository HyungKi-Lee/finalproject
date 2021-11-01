<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<div class="container">
<%-- 회원 정보 검색 기능 --%>
<div class="search_user">
	<%-- ID 검색 --%>
	<form action="${pageContext.request.contextPath}/admin/usersList?pageNum=${pager.pageNum}" method="post" style="display: inline-block;">
		<input type="text" placeholder="회원 ID" onfocus="this.placeholder=''" onblur="this.placeholder='회원 ID'" 
		name="searchId">
		<button type="submit">검색</button>
	</form>
	<%-- 이름 검색 --%>
	<form action="${pageContext.request.contextPath}/admin/usersList?pageNum=${pager.pageNum}" method="post" style="display: inline-block;">
		<input type="text" placeholder="회원 이름" onfocus="this.placeholder=''" onblur="this.placeholder='회원 이름'" 
		name="searchName">
		<button type="submit">검색</button>
	</form>
	<!-- 메세지 출력 -->
	<div id="searchMsg" style="display: inline-block; color:red;"></div>
</div>

<%-- 회원 목록을 출력하는 영역 --%>
<form name="userForm" class="baseContent" id="userForm">
	<table class="user_table">
		<tr>	
			<th width="5%;"><input type="checkbox" id="allCheck"></th>
			<th width="8%;">아이디</th>
			<th width="8%;">이름</th>
			<th width="15%;">이메일</th>
			<th width="10%;">전화번호</th>
			<th width="10%;">생년월일</th>
			<th>주소</th>
			<th width="10%;">가입날짜</th>
			<th width="5%;">상태</th>
		</tr>
		
		<c:forEach items="${usersAllList }" var="usersAll">
			<tr>
				<c:choose>
					<c:when test="${usersAll.status==9 }">
						<td align="center"></td>
					</c:when>
					<c:otherwise>
						<td><input type="checkbox" name="checkId" value="${usersAll.id }" class="check"></td>
					</c:otherwise>
				</c:choose>
				<td align="center">${usersAll.id }</td>
				<td align="center">${usersAll.name }</td>
				<td align="center">${usersAll.email }</td>
				<td align="center">${usersAll.phone }</td>								
				<fmt:parseDate value="${usersAll.birthday}" var="birthday" pattern="yyyy-MM-dd HH:mm:ss"/>
				<td align="center"><fmt:formatDate value="${birthday}" pattern="yyyy.MM.dd"/></td>		
				<td align="center">${usersAll.zipcode } ${usersAll.address1 } ${usersAll.address2 }</td>
				<fmt:parseDate value="${usersAll.joindate}" var="joindate" pattern="yyyy-MM-dd HH:mm:ss"/>
				<td align="center"><fmt:formatDate value="${joindate}" pattern="yyyy-MM-dd"/></td>
				<c:choose>
					<c:when test="${usersAll.status==9 }">
						<td align="center">관리자</td>	
					</c:when>
					<c:when test="${usersAll.status==0 }">
						<td align="center">탈퇴</td>	
					</c:when>	
					<c:otherwise>
						<td align="center">일반</td>						
					</c:otherwise>	
				</c:choose>
			</tr>			
		</c:forEach>
	</table>
	
	<div><button type="button" class="btn" id="removeBtn">선택회원 삭제</button></div>
	<div id="message"></div>

<%-- 페이징을 출력하는 영역 --%>
<div align="center" style="font-size: 13px; font-weight:bold; letter-spacing: 5px; margin-top: 20px;">
	<!-- < -->
	<c:choose>
		<c:when test="${pager.startPage > pager.blockSize}">
			<c:choose>
				<c:when test="${!empty(searchId) }">
					<a href="${pageContext.request.contextPath}/admin/usersList?pageNum=${pager.startPage-pager.blockSize}&searchId=${searchId}">&lt;</a>
				</c:when>		
				<c:when test="${!empty(searchName) }">
					<a href="${pageContext.request.contextPath}/admin/usersList?pageNum=${pager.startPage-pager.blockSize}&searchName=${searchName}">&lt;</a>	
				</c:when>
				<c:otherwise>
					<a href="${pageContext.request.contextPath}/admin/usersList?pageNum=${pager.startPage-pager.blockSize}">&lt;</a>						
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
					<c:when test="${!empty(searchId) }">
						<a href="${pageContext.request.contextPath}/admin/usersList?pageNum=${page}&searchId=${searchId}">${page}</a>	
					</c:when>		
					<c:when test="${!empty(searchName) }">
						<a href="${pageContext.request.contextPath}/admin/usersList?pageNum=${page}&searchName=${searchName}">${page}</a>
					</c:when>
					<c:otherwise>
						<a href="${pageContext.request.contextPath}/admin/usersList?pageNum=${page}">${page}</a>						
					</c:otherwise>	
				</c:choose>		
											
			</c:otherwise>
		</c:choose>
	</c:forEach>
	
	<!-- > -->
	<c:choose>
		<c:when test="${pager.endPage != pager.totalPage}">
			<c:choose>
				<c:when test="${!empty(searchId) }">
					<a href="${pageContext.request.contextPath}/admin/usersList?pageNum=${pager.startPage+pager.blockSize}&searchId=${searchId}">&gt;</a>
				</c:when>		
				<c:when test="${!empty(searchName) }">
					<a href="${pageContext.request.contextPath}/admin/usersList?pageNum=${pager.startPage+pager.blockSize}&searchName=${searchName}">&gt;</a>					
				</c:when>
				<c:otherwise>
					<a href="${pageContext.request.contextPath}/admin/usersList?pageNum=${pager.startPage+pager.blockSize}">&gt;</a>																
				</c:otherwise>	
			</c:choose>	
		</c:when>
	</c:choose>
</div>
<!-- 페이징 블럭 끝 -->

</form>
</div>


<script type="text/javascript">
$("#allCheck").change(function() {
		if($(this).is(":checked")) {
			$(".check").prop("checked",true);
		} else {
			$(".check").prop("checked",false);
		}
});

$("#removeBtn").click(function() {
	if($(".check").filter(":checked").length==0) {
		alert("회원을 선택해 주세요.");
		//$("#message").text("회원을 선택해 주세요.");
		return;
	}
	
	$("#userForm").attr("method", "post");
	$("#userForm").attr("action", "${pageContext.request.contextPath}/admin/usersDelete");
	$("#userForm").submit();
});

</script>
	