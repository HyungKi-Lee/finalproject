<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link href="${pageContext.request.contextPath }/resources/css/users_find_success.css" type="text/css" rel="stylesheet">
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
			<h1>
				아이디찾기
			</h1>
		</div>
		<div class="container">
			<form id="formLogin" name="f" method="get" action="#" style="width: 100%">
				<fieldset style="border: 1px solid #dbdbdb;; margin-top: 40px">				
					<div class="find_id_box">
					<div class="find_id_sec">					
					<h3 align="center" style="margin: 30px 0 30px 0; font-size: 1.5em">회원님의 아이디는<span style="color: #B4986B;"> ${loginid }</span>입니다</h3>							
					</div>
					<!-- //find_id_sec -->
					<div class="btn_member_sec" align="center">		
							<button class="btn_member_white js_btn_find_password" onclick='home()'>HOME</button>
							<button class="btn_comfirm js_btn_login" onclick='login()'>로그인하기</button>		
					</div>
					<!-- //btn_member_sec -->
				</div>
				</fieldset>
			</form>
		<br>		
		</div>
		<!-- container end -->
		

	
	</div>
</body>

<script type="text/javascript">
function home(){
	f.action = "${pageContext.request.contextPath}/home";
	f.submit();
}
function login(){
	f.action = "${pageContext.request.contextPath}/login";
	f.submit();
}


</script>
            
</html>