<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%-- <link href="${pageContext.request.contextPath }/resources/css/users_find_success.css" type="text/css" rel="stylesheet"> --%>
<style>
h1 {
   font-size: 20px;
}


</style>

<head>
<meta charset="UTF-8">
</head>
<body>

		<!-- container start -->
	<div id="wrapper">
		<!-- header start -->
		<br>
  		   <br>
  		      <br>
		<div class="header">
			<h1 align="center">
				비밀번호 찾기
			</h1>
			<div class="header_con" align="center">* 가입시 등록한 이메일로 인증 확인 메일을 발송드립니다. *</div>			
		</div>
		<div class="container">
			<form id="formLogin" method="get" action="#" style="width: 100%">
				<fieldset style="border: none; margin-top: 40px">				
						<div class="login_input">
						<div class="member_warning" id="member_warning" align="center">
							<input type="checkbox" id="emailCheck">
								<span class="emailCheck">이메일 인증&nbsp;(${email})</span>													
						</div>
						<div class="btn_center_box" align="center" style="margin-top: 30px;">
							<button type="button" id="btnFindPw">발송</button>
						</div>
					</div>
				</fieldset>
			</form>
		<br>		
		</div>
		<!-- container end -->

	
	</div>
</body>

<script type="text/javascript">
$("#btnFindPw").click(function() {
	if($("#emailCheck").is(":checked")==false) {
		alert("발송할 이메일을 체크해주시기 바랍니다.");
		return false;
	} else {
		alert("발송 완료되었습니다. 이메일 확인 후 다시 로그인하시기 바랍니다.");	
		formLogin.action="/login";
		/* $("#").attr("action", "/login"); */
		$("#formLogin").submit();		
	}
});
</script>
            
</html>