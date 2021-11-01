<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
			<span class="board_write_title_bar"></span>후기 작성
		</h2>
		<form id="reviewForm" name="reviewForm" method="post" enctype="multipart/form-data">
		<table width="100%" border="0" cellpadding="0" cellspacing="0"
			class="board_write_table">
			<tbody>
				<tr>
					<td>
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tbody>
								<tr>
									<td width="130" height="55" align="center" valign="middle"
										class="board_write_table_title">작성자</td>
									<td width="1070" height="55" align="left" valign="middle">
										<input type="text" id="mId" name="mId" value=""readonly="readonly" style="width: 410px;">
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
										<input type="text" id="rvTitle" name="rvTitle" style="width: 1020px;">
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
									<td><input type="file" name="file" id="file" style="width: 500px;"></td>
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
										style="border-bottom: 1px solid #e5e5e5; padding: 0">
										<textarea class="board_write_txt" name="rvContent" id="rvContent" style="height: 300px;"></textarea>
									</td>
								</tr>
							</tbody>
						</table>
					</td>
				</tr>
			
				<tr>
					<td>
						<div class="board_write_bt" height="55px">
							<div class="button-1">
								<div class="eff-1"></div>
								<a href="#" onclick="reviewCreate()" style="color: #B4986B;">등록</a>
							</div>
							<div class="button-1">
								<div class="eff-1"></div>
								<a href="/review_list" style="color: #B4986B;">취소</a>
							</div>
						</div>
					</td>
				</tr>
			</tbody>	
		</table>
		</form></div>
		


</body>
</html>