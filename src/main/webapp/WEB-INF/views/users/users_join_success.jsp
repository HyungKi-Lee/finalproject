<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link href="${pageContext.request.contextPath }/resources/css/users_success.css" type="text/css" rel="stylesheet">
<head>
<meta charset="UTF-8">
</head>
<body>
	<div id="wrapper">
		<!-- header start -->
		<br>
  		   <br>
  		      <br>
		<div class="header">
			<h1>
				회원가입 성공
			</h1>
		</div>
        <!-- container start -->
		<div class="container">
			<div id="formLogin"  style="width: 100%">
				<fieldset style="border: 1px solid #dbdbdb;; margin-top: 40px">				
					<div class="find_id_box">
					<div class="find_id_sec">					
					<h3 align="center">가입한 아이디로 로그인해 주세요.</h3>							
					</div>
					<!-- //find_id_sec -->
					<div class="btn_member_sec" align="center">
							<button class="btn_member_white js_btn_find_password" onclick="location.href='${pageContext.request.contextPath }/home'">HOME</button>
							<button class="btn_comfirm js_btn_login" onclick="location.href='${pageContext.request.contextPath }/login'">로그인하기</button>			
					</div>
					<!-- //btn_member_sec -->
				</div>
				</fieldset>
			</div>
		<br>		
		</div>
		<!-- container end -->

	</div>
</body>

<script type="text/javascript">

</script>
            
</html>