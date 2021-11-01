<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../css/commu.css" type="text/css" />

<title>notice</title>
</head>
<body>
	<div id="board_write" class="wrap">
		<h2 class="board_write_title">
			<span class="board_write_title_bar"></span>이용후기
		</h2>
		<form  method="post"
			enctype="multipart/form-data">
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
										<div id="mId" name="mId" style="width: 1020px;">${read.rwriter}</div>
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
											<div id="rvTitle" name="ntitle" style="width: 1020px;">${read.rtitle}</div>
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
											<br> 
										<div class="board_write_txt" style="height: 300px; width: 1020px; margin-left: 20px;" 
											 name="ncontent" id="rvContent">${read.rcontent}</div>
											 <img alt="" src="${pageContext.request.contextPath}/reviewimg/${read.rimg}">
										</td>
									</tr>
								</tbody>
							</table>
						</td>
					</tr>
					<tr>
						<td>
							<div class="board_write_bt" style="height: 55px; float: right; margin-top: 10px;">
								<c:if test="${loginSession.id == read.id || loginSession.status == 9 }">
								<div class="button-1">
									<div class="eff-1"></div>
									<a style="color: #B4986B;" href="${pageContext.request.contextPath}/review_modify?rno=${read.rno}">수정</a>
								</div>
								<div class="button-1">
									<div class="eff-1"></div>
									<a style="color: #B4986B;" onclick="submit()" id="da">삭제</a>
								</div>
								</c:if>	
								
								<div class="button-1">
									<div class="eff-1"></div>
									<a href="${pageContext.request.contextPath}/review_list" style="color: #B4986B;">목록 </a>
								</div>

							</div>
						</td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
	
	<script>
	function submit() {
		var result = confirm('이용후기를 삭제 하시겠습니까?');
		if (result) {
			$("#da").prop("href", "${pageContext.request.contextPath}/review_delete?rno=${read.rno}")
		}
	}
		

</script>
</body>
</html>