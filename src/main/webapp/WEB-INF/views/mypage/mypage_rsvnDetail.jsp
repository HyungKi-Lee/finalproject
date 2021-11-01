<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/admin.css" type="text/css"/>     
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<style type="text/css">
h2 {
	font-size: 1.4em;
	margin-bottom: 10px;
}
.details {
	width: 80%;
	margin: 0 auto;
}
table {
	width: 100%;
	border: 1px solid #2a303b;
	border-collapse: collapse;
	border-left-style: none;
	border-right-style: none;
}

th {
	border: 1px solid #2a303b;
	border-collapse: collapse;
}

td {
	border: 1px solid #bbbbbb;
	border-left-style: none;
	border-right-style: none;
	border-collapse: collapse;
	font-size: 15px;
}

.rsvn {
	margin: 0 auto;
	font-size: 20px;
}

#rsvnTable {
	font-size: 20px;
}

</style>

<div class="baseContent">
	<div class="details">
		<br><br>
		<h2>예약상세정보</h2>	
		<table class="rsvn" id="rsvnTable">
			<tr>
				<td colspan="1" height="50px" style="background: #2a303b; color: #fff;">예약번호</td>
				<td height="20px;" colspan="4" align="left">${rsvnDetail.rNo }</td>
			</tr>
			
			<tr>
				<td colspan="1" height="50px" style="background: #2a303b; color: #fff;">예약일</td>
				
				<td height="20px;" colspan="4" align="left">${rsvnDetail.rDate }</td>
			</tr>
			
			<tr>
				<td colspan="1" height="50px" style="background: #2a303b; color: #fff;">출발일</td>
				<td height="20px;" colspan="4" align="left">${rsvnDetail.pDeparture }</td>
			</tr>
			
			<tr>
				<td colspan="1" height="50px" style="background: #2a303b; color: #fff;">상품명</td>
				<td height="20px;" colspan="4" align="left">${rsvnDetail.pName }</td>
			</tr>
			
			<tr>
				<td colspan="1" height="50px" style="background: #2a303b; color: #fff;">객실타입</td>
				<td height="20px;" colspan="4" align="left">${rsvnDetail.pdGrade }</td>
			</tr>
			
			<tr>
				<td colspan="1" height="50px" style="background: #2a303b; color: #fff;">요금</td>
				<td height="20px;" colspan="4" align="left"><fmt:formatNumber value="${rsvnDetail.pdHigh*10000 }" pattern="#,###,###"/>원</td>
			</tr>
			
			<tr>
				<td colspan="1" height="50px" style="background: #2a303b; color: #fff;">상태</td>
				<c:choose>
					<c:when test="${rsvnDetail.rState==1 }">
						<td height="20px;" colspan="4" align="left">예약완료</td>
					</c:when>
					<c:when test="${rsvnDetail.rState==0 }">
						<td height="20px;" colspan="4" align="left">취소</td>
					</c:when>
				</c:choose>
			</tr>
		</table>
		<br>
				
		<div style="padding-bottom: 100px;">
		<c:if test="${rsvnDetail.rState==1 }">
		<button type="button" class="removeBtn" id="removeRsvnBtn">예약취소</button>
		</c:if>
		<button type="button" class="modifyBtn" id="listBtn" style="background-color:#dcdcdc;">목록으로</button>
		</div>
	</div>
</div>

<script type="text/javascript">
$("#removeRsvnBtn").click(function() {
	if(window.confirm("예약을 취소 처리 하겠습니까?")) {
		location.href="${pageContext.request.contextPath}/mypage/rsvnCancel?rNo=${rsvnDetail.rNo}";
	}
});

$("#listBtn").click(function() {
	location.href="${pageContext.request.contextPath}/mypage/rsvnList";
}); 
</script>