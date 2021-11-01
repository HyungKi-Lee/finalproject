<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${loginSession.id == null}">
	<script>
		alert("로그인 이용자만 사용 가능합니다.")
		location.href = "${pageContext.request.contextPath}/login";
	</script>
</c:if>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/commu.css" type="text/css" />
</head>
<body>
	<div id="board_write" class="wrap">
		<h2 class="board_write_title">
			<span class="board_write_title_bar"></span>Q&A 등록
		</h2>
		<form method="post" class="qWrite">
			<table width="100%" border="0" cellpadding="0" cellspacing="0"
				class="board_write_table">
				<tbody>
					<tr>
						<td>
							<table width="100%" border="0" cellpadding="0" cellspacing="0">
								<tbody>
									<tr>
										<td><input type="hidden" id="id" name="id"
											value="${loginSession.id }" style="width: 1020px;"></td>
										<td width="130" height="55" align="center" valign="middle"
											class="board_write_table_title">작성자</td>
										<td width="1070" height="55" align="left" valign="middle">
											<input type="text" readonly="readonly" id="qwriter"
											name="qwriter" value="${loginSession.name }"
											style="width: 410px;"> <!-- value="홍길동"readonly="readonly" -->
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
										<td width="130" height="55" align="center" valign="middle"
											class="board_write_table_title">제목</td>
										<td width="1070" height="55" align="left" valign="middle">
											<input type="text" id="qtitle" name="qtitle"
											style="width: 1020px;">
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
										<td width="1070" align="left" height="300" valign="top"
											style="border-bottom: 1px solid #e5e5e5; padding: 0"><textarea
												class="board_write_txt" style="height: 300px;"
												name="qcontent" id="qcontent"></textarea></td>
									</tr>
								</tbody>
							</table>
						</td>
					</tr>

					<tr>
						<td>
							<div class="board_write_bt" style="height: 55px; float: right; margin-top: 10px;" >
								<div class="button-1">
									<div class="eff-1"></div>
									<a onClick="qsubmit()" style="color: #B4986B;">등록</a>
								</div>
								<div class="button-1">
									<div class="eff-1"></div>
									<a href="${pageContext.request.contextPath}/qna_list" style="color: #B4986B;">취소</a>
								</div>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
	<script>
		/* function qsubmit() {
			var result = confirm('QnA를 등록 하시겠습니까?');
			if (result) {
				$('.qWrite').submit();
			}
		} */
		function qsubmit() {
			var qtitle = $("#qtitle").val();
			var qcontent = $("#qcontent").val();
			var result = confirm('질문사항을 등록 하시겠습니까?');
			if (qtitle == "") {
				alert("제목을 입력해주세요.");
				return;
			}
			if (qcontent == "") {
				alert("내용을 입력해주세요.");
				return;
			}
			$(".qWrite").submit();
		};
	</script>


</body>
</html>