<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
			<span class="board_write_title_bar"></span>공지사항 작성
		</h2>
		<form method="post" class="nWrite">
			<table width="100%" border="0" cellpadding="0" cellspacing="0"
				class="board_write_table">

				<tr>
					<td>
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tbody>
								<tr>
									<td width="130" height="55" align="center" valign="middle"
										class="board_write_table_title">제목</td>
									<td width="1070" height="55" align="left" valign="middle">
										<input type="text" id="ntitle" name="ntitle"
										placeholder="제목을 입력해 주세요" style="width: 1020px;">
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
											placeholder="내용을 입력해 주세요" name="ncontent" id="ncontent"></textarea></td>
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
								<a href="${pageContext.request.contextPath}/notice_list" style="color: #B4986B;">취소</a>
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
		var result = confirm('공지사항을 등록 하시겠습니까?');
		if (result) {
			$('.nWrite').submit();
		}
	} */
	function submit() {
		var ntitle = $("#ntitle").val();
		var ncontent = $("#ncontent").val();
		var result = confirm('공지사항을 등록 하시겠습니까?');
		if (ntitle == "") {
			alert("제목을 입력해주세요.");
			return;
		}
		if (ncontent == "") {
			alert("내용을 입력해주세요.");
			return;
		}
		$(".nWrite").submit();
	};
</script>
</html>