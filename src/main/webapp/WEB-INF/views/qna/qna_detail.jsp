<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/commu.css"
	type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/reply.css"
	type="text/css" />
<style type="text/css">
.repl {
	text-align: center;
	margin-top: -50px;
}
#comments{
	text-align: center;
}
#float::after {
	content: "";
	display: block;
	clear: both;
}
#float button {
	background-color: #2a303b;
	color: #B4986B;
}

#float button:hover {
	background-color: #e5e5e5;;
}
</style>
<title>notice</title>
</head>
<body>
	<div id="board_write" class="wrap">
		<h2 class="board_write_title">
			<span class="board_write_title_bar"></span>QnA
		</h2>
		<form method="post" enctype="multipart/form-data">
			<table width="100%" border="0" cellpadding="0" cellspacing="0"
				class="board_write_table">
				<tr>
					<td>
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tbody>
								<tr>
									<td width="130" height="55" align="center" valign="middle"
										class="board_write_table_title">작성자</td>
									<td width="1070" height="55" align="left" valign="middle">
										<div id="qwriter" name="qwriter" style="width: 410px;">${qread.qwriter}</div>
									</td>
								</tr>
							</tbody>
						</table>
					</td>
				</tr>
				<tbody>
					<tr>
						<td>
							<table width="100%" border="0" cellpadding="0" cellspacing="0">
								<tbody>
									<tr>
										<td width="130" height="55" align="center" valign="middle"
											class="board_write_table_title">제목</td>
										<td width="1070" height="55" align="left" valign="middle">
											<div id="rvTitle" name="ntitle" style="width: 1020px;">${qread.qtitle}</div>
										</td>
									</tr>
								</tbody>
							</table>
						</td>
					</tr>
					<tr>
						<td>
							<table width="100%" border="0" cellpadding="0" cellspacing="0">
								<tbody>
									<tr>
										<td width="130" height="300" align="center" valign="middle"
											style="border-bottom: 1px solid #e5e5e5"
											class="board_write_table_title">내용</td>
										<td width="1070" height="300" align="left" valign="top"
											style="border-bottom: 1px solid #e5e5e5; padding: 0"><br>
											<div class="board_write_txt"
												style="height: 300px; width: 1020px; margin-left: 20px;"
												name="ncontent" id="rvContent">${qread.qcontent}</div></td>
									</tr>
								</tbody>
							</table>

						</td>
					</tr>
					<tr>
						<td>
							<div class="board_write_bt"
								style="height: 55px; float: right; margin-top: 10px;">
								<c:if
									test="${loginSession.id == qread.id  || loginSession.status == 9 }">
									<div class="button-1">
										<div class="eff-1"></div>
										<a style="color: #B4986B;" href="${pageContext.request.contextPath}/qna_modify?qno=${qread.qno}">수정</a>
									</div>
									<div class="button-1">
										<div class="eff-1"></div>
										<a style="color: #B4986B;" onclick="submit()" id="qda">삭제</a>
									</div>
								</c:if>
								<div class="button-1">
									<div class="eff-1"></div>
									<a href="${pageContext.request.contextPath}/qna_list" style="color: #B4986B;">목록 </a>
								</div>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>

	<div class="repl">
		<form method="post" action="${pageContext.request.contextPath}/write">
			<div id="form-commentInfo">
				<div id="comment-count">
					댓글 <span id="count">0</span>
				</div>
				<input type="hidden" name="qrwriter" value="${qread.qwriter}">
				<input id="comment-input" name="qrcontent"placeholder="로그인 사용자만 이용 가능합니다."> 
				<input type="hidden" name="qno"value="${qread.qno}">
				<c:if
									test="${loginSession.status == 9 || loginSession.status == 1  }">
					<button id="submit">등록</button>
			</c:if>
			</div>
		</form>
	</div>
	<div id=comments >

		<ul>
			<c:forEach items="${reply}" var="reply">
				<li>
					<div id="float" style="width: 50%; margin: 0 auto; border-bottom: 1px solid black;">
						<div style="float: left;">
							<span style="text-align: center; font-weight: bold;">
								[${reply.qrwriter}] /
								<fmt:formatDate value="${reply.qrdate}" pattern="yyyy-MM-dd" />
							</span>
							<br>
							<span style="font-weight: bold;">${reply.qrcontent }</span>
							<br> <br>
						</div>
							<c:if test="${loginSession.name == reply.qrwriter ||loginSession.status == 9 }">
							<div style="float: right; width: 50px;">
								<button onclick="" type="button" style="margin: 5px 0;">삭제</button>
								<button onclick="" type="button">수정</button>
							</div>
							</c:if>
					</div>
				</li>
			</c:forEach>
		</ul>
   </div>	



	<%-- <div>

		<form method="post" action="/write">

			<p>
				<label>댓글 작성자</label> <input type="text" name="qrwriter">
			</p>
			<p>
				<textarea rows="5" cols="50" name="qrcontent"></textarea>
			</p>
			<p>
				<input type="hidden" name="qno" value="${qread.qno}">
				<button type="submit">댓글 작성</button>
			</p>
		</form>
		<br>
		<br>
		<ul>
			<c:forEach items="${reply}" var="reply">
				<li>
					<div>
						<p>
							- 글쓴이 : [${reply.qrwriter}] /
							<fmt:formatDate value="${reply.qrdate}" pattern="yyyy-MM-dd" />
						</p>
						<p>${reply.qrcontent }</p>
						<button onclick="" type="button">삭제</button>
						<button onclick="" type="button">수정</button>
						<br>
						<br>
					</div>
				</li>
			</c:forEach>
		</ul>

	</div> --%>
	<script>
		function submit() {
			var result = confirm('QnA를 삭제 하시겠습니까?');
			if (result) {
				$("#qda").prop("href", "${pageContext.request.contextPath}/qna_delete?qno=${qread.qno}")
			}
		}
	</script>
</body>
</html>