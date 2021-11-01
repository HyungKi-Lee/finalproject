<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%-- <link href="${pageContext.request.contextPath }/resources/css/users_success.css" type="text/css" rel="stylesheet"> --%>
<style>
#wrapper {
	max-width: 492px;
	min-width: 360px;
	margin: 0 auto;
	padding: 0 16px 200px;
}

.header {
    text-align: center;
}

.header h1 {
    border-bottom: 2px solid #17191d;
	padding-bottom: 5px;
	font-size: 25px;
	width: 200px;
	margin: 10px auto;
}
h3 {
     margin: 12px;
 }

.btn_member_sec {
  margin: 15px 0 15px;
}
.btn_member_sec button {
	width: 190px;
	height: 43px;
	background-color: #17191d;
	color: #fff;
	font-size: 18px;
	cursor: pointer;
	
	/*변형 완료 1초*/
	transition-duration: 0.2s;
	/*빠른 시작 서서히 감속*/
	transition-timing-function: linear ;
}

.btn_member_sec button:hover {
	background-color: #0077ff;
	transition: all 0.2s linear;
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
			<h1>
				비밀번호찾기
			</h1>
		</div>
		<div class="container">
			<form id="formLogin" style="width: 100%">
				<fieldset style="border: 1px solid #dbdbdb;; margin-top: 40px">				
					<div class="find_id_box">
					<div class="find_id_sec">					
					<h3 align="center">회원님의 비밀번호는 ${findpw } 입니다</h3>							
					</div>
					<!-- //find_id_sec -->
					<div class="btn_member_sec" align="center">
						<button class="btn_member_white js_btn_find_password" type="submit" "location.href='/home'">HOME</button>
						<button class="btn_comfirm js_btn_login" type="submit" onclick="location.href='/login'">로그인하기</button>			
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

</script>
            
</html>