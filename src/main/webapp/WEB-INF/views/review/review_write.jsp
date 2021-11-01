<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${loginSession.id == null}">
<script>
alert("로그인 이용자만 사용 가능합니다.")
location.href="${pageContext.request.contextPath}/login";
</script>
</c:if>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>notice</title>
<link rel="stylesheet" href="../css/commu.css" type="text/css" />

</head>
<body>
	<div id="board_write" class="wrap">
		<h2 class="board_write_title">
			<span class="board_write_title_bar"></span>이용후기 작성
		</h2>
		<form method="post" class="rWrite" action="${pageContext.request.contextPath }/review_write" enctype="multipart/form-data">
			<table width="100%" border="0" cellpadding="0" cellspacing="0"
				class="board_write_table">
						<tr>
						<td>
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tbody>
								<tr>
									<td><input type="hidden" id="id" name="id" value="${loginSession.id }" style="width: 1020px;"></td>
									<td width="130" height="55" align="center" valign="middle"
										class="board_write_table_title">작성자</td>
									<td width="1070" height="55" align="left" valign="middle">
										<input type="text" readonly="readonly" id="rwriter" name="rwriter" value="${loginSession.name }" style="width: 410px;">
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
										<input type="text" id="rtitle" name="rtitle"
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
									<td width="130" height="55" align="center" valign="middle"
										class="board_write_table_title">이미지 업로드</td>
									<td><input type="file" name="multipartFile" id="rimg" accept="image/*" style="width: 500px;"></td>
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
											name="rcontent" id="rcontent"></textarea></td>
								</tr>
							</tbody>
						</table>
					</td>
				</tr>

				<tr>
					<td>
						<div class="board_write_bt" style="height: 55px; float: right; margin-top: 10px;">
							<div class="button-1">
								<div class="eff-1"></div>
								<a onClick="submit()" style="color: #B4986B;">등록</a>
							</div>
							<div class="button-1">
								<div class="eff-1"></div>
								<a href="${pageContext.request.contextPath}/review_list" style="color: #B4986B;">취소</a>
							</div>
						</div>
					</td>
				</tr>
				</tbody>
			</table>
		</form>
	</div>
</body>
<script>
	/* function submit() {
		var result = confirm('이용후기를 등록 하시겠습니까?');
		if (result) {
			$('.rWrite').submit();
		}
	} */
	function submit() {
		var rtitle=$("#rtitle").val();
		var rcontent=$("#rcontent").val();
		var result = confirm('이용후기를 등록 하시겠습니까?');
		if(rtitle==""){
			alert("제목을 입력해주세요.");
			return;
		}
		if(rcontent==""){
			alert("내용을 입력해주세요.");
			return;
		}		
		$(".rWrite").submit();
	};
		
</script>
</html>