<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<link rel="stylesheet" href="../css/commu.css" type="text/css" />

</head>
<body>
	<div id="board_write" class="wrap">
		<h2 class="board_write_title">
			<span class="board_write_title_bar"></span>이용상세후기
		</h2>
		<form id="reviewForm" name="reviewForm" method="post" enctype="multipart/form-data">
		<table width="100%" border="0" cellpadding="0" cellspacing="0" class="board_write_table">
			<tbody>
				<tr>
					<td>
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tbody>
								<tr>
									<td width="130" height="55" align="center" valign="middle"
										class="board_write_table_title">작성자</td>
									<td width="1070" height="55" align="left" valign="middle">
										<input type="text" id="mId" name="mId" value="" readonly="readonly" style="width: 410px;">
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
										<input type="text" id="rvTitle" readonly="readonly" name="rvTitle" value="" style="width: 1020px;">
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
										class="board_write_table_title">조회수</td>
									<td width="1070" height="55" align="left" valign="middle">
										<input type="text" id="rvHits" name="rvHits" value="" readonly="readonly" style="width: 1020px;">
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
										style="border-bottom: 1px solid #e5e5e5; padding: 0">
										<!-- <img src="#" width="300">  -->
										<br><textarea class="board_write_txt" style="height: 300px;"
												name="rvContent" id="rvContent" readonly="readonly"></textarea>
										</td>
								</tr>
							</tbody>
						</table>
					</td>
				</tr>
				<tr>
					<td>
						<div class="board_write_bt" style="height: 55px;">
							<div class="button-1">
								<div class="eff-1"></div>
								<a href="/review_modify"style="color: black;" >수정</a>
							</div>
							<div class="button-1">
								<div class="eff-1"></div>
								<a href="#" style="color: black;" >삭제</a>
							</div>
							<div class="button-1">
								<div class="eff-1"></div>
								<a href="/review_list"style="color: black;">목록 </a>
							</div>
							<div class="button-1">
								<div class="eff-1"></div>
								<a href="#" style="color: black;" >댓글</a>
							</div>
							
						</div>
					</td>
				</tr>
			</tbody>	
		</table></form></div>
</body>
</html>