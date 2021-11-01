<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>	
<!-- container-->
<div class="container">  
	<%-- 예약 관리 --%>
	<div class="baseContent">
		<div class="summary">
			<h3 class="summary_h">예약 관리</h3>
			<p class="summary_p">오늘 들어온 예약 : <span style="color:red;"></span>${todayRsvnCount} 건</p>
			<a href="${pageContext.request.contextPath}/admin/rsvnList">
				<button type="button">MORE ></button>
			</a>
		</div>
		<table class="user_table">
			<tr>
				<th>예약번호</th>
				<th>예약자 이름</th>
				<th>예약일</th>
				<th>출발일</th>
				<th>상품명</th>
				<th>객실타입</th>
				<th>요금</th>
				<th>예약상태</th>
			</tr>
			<c:choose>
				<c:when test="${empty(todayRsvnList) }">
					<tr>
					<td colspan="8">오늘 들어온 예약이 없습니다.</td>
					</tr>
				</c:when>
				<c:otherwise>
					<c:forEach var="todayRsvn" items="${todayRsvnList }">
						<tr>
							<td>${todayRsvn.rNo }</td>
							<td>${todayRsvn.name }</td>
							<td>${todayRsvn.rDate }</td>
							<td>${todayRsvn.pDeparture }</td>
							<td>${todayRsvn.pName }</td>
							<td>${todayRsvn.pdGrade }</td>
							<td align="center"><fmt:formatNumber value="${todayRsvn.pdHigh*10000 }" pattern="#,###,###"/>원</td>
							<c:choose>
								<c:when test="${todayRsvn.rState==1 }">
									<td>예약완료</td>
								</c:when>	
								<c:when test="${todayRsvn.rState==0 }">
									<td>취소</td>
								</c:when>	
							</c:choose>								
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>				
		</table>
	</div>
	
	
	<%-- 회원 관리 --%>
	<div class="baseContent">
		<div class="summary">
			<h3 class="summary_h">회원 관리</h3>
			<p class="summary_p">오늘 가입한 회원 : <span style="color:red;"></span>${todayUsersCount} 명</p>
			<a href="${pageContext.request.contextPath}/admin/usersList">
				<button type="button">MORE ></button>
			</a>
		</div>
		<table class="user_table">
			<tr>
				<th width="8%">아이디</th>
				<th width="8%">이름</th>
				<th width="15%">이메일</th>
				<th width="12%">전화번호</th>
				<th width="12%">생년월일</th>
				<th>주소</th>
				<th width="10%">가입날짜</th>
				<th width="8%">상태</th>
			</tr>
			<c:choose>
				<c:when test="${empty(todayUsersList) }">
					<tr>
					<td colspan="8">오늘 가입한 회원이 없습니다.</td>
					</tr>
				</c:when>
				<c:otherwise>
					<c:forEach var="todayUser" items="${todayUsersList }">
						<tr>
							<td>${todayUser.id }</td>
							<td>${todayUser.name }</td>
							<td>${todayUser.email }</td>
							<td>${todayUser.phone }</td>
							<fmt:parseDate value="${todayUser.birthday}" var="birthday" pattern="yyyy-MM-dd HH:mm:ss"/>
							<td><fmt:formatDate value="${birthday}" pattern="yyyy년 MM월 dd일"/></td>
							<td>${todayUser.zipcode } ${todayUser.address1 } ${todayUser.address2 }</td>
							<fmt:parseDate value="${todayUser.joindate}" var="joindate" pattern="yyyy-MM-dd HH:mm:ss"/>
							<td><fmt:formatDate value="${joindate}" pattern="yyyy-MM-dd"/></td>
							<c:choose>
								<c:when test="${todayUser.status==1}">
									<td>일반회원</td>
								</c:when>	
								<c:when test="${todayUser.status==9}">
									<td>관리자</td>
								</c:when>	
							</c:choose>						
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>		
		</table>
	</div>
	
	<%-- 문의글 관리
	<div class="baseContent">
		<div class="summary">
			<h3 class="summary_h">Q&A 관리</h3>
			<p class="summary_p">오늘 들어온 Q&A : <span style="color:red;"></span>${todayQnaCount} 건</p>
			<a href="${pageContext.request.contextPath}/admin/qnaList">
				<button type="button">MORE ></button>
			</a>
		</div>
		<table class="user_table">
			<tr>
				<th>글번호</th>
				<th>제목</th>
				<th>작성일자</th>
				<th>상태</th>
			</tr>
			<c:choose>
				<c:when test="${empty(todayQnaList) }">
					<tr>
					<td colspan="4">오늘 들어온 Q&A가 없습니다.</td>
					</tr>
				</c:when>
				<c:otherwise>
					<c:forEach var="todayQna" items="${todayQnaList }">
						<tr>
							<td align="center">${todayQna.qno }</td>
							<td align="center">${todayQna.qtitle }</td>
							<td align="center"><fmt:formatDate value="${todayQna.qdate }" pattern="yyyy-MM-dd" /></td>
							<c:choose>
								<c:when test="${todayQna.qstate==1 }">
									<td>미답변</td>
								</c:when>
								<c:when test="${todayQna.qState==2 }">
									<td>답변완료</td>
								</c:when>
								<c:otherwise>
									<td>구현중</td>
								</c:otherwise>
							</c:choose>						
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>				
		</table>
	</div> --%>
	
	<%-- 상품 관리 --%>	
	<div class="baseContent">
		<div class="summary">
			<h3 class="summary_h">상품 관리</h3>
			<p class="summary_p">총 상품 개수 : <span style="color:red;"></span>${totalProductCount} 개</p>
			<a href="${pageContext.request.contextPath}/admin/productList">
				<button type="button">MORE ></button>
			</a>
		</div>
		<table class="user_table">
			<tr>
				<th>상품번호</th>
				<th>상품명</th>
				<th>출발일자</th>
				<th>코스이름</th>
				<th>이미지</th>
			</tr>
			<c:choose>
				<c:when test="${empty(totalProductList) }">
					<tr>
					<td colspan="5">등록된 상품이 없습니다.</td>
					</tr>
				</c:when>
				<c:otherwise>
					<c:forEach var="totalProduct" items="${totalProductList }">
						<tr>
							<td>${totalProduct.pNo }</td>
							<td>${totalProduct.pName }</td>
							<td>${totalProduct.pDeparture }</td>
							<td>${totalProduct.pCourse }</td>
							<td>${totalProduct.pImg }</td>			
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>				
		</table>
	</div>
</div><!--container-->
