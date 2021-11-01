<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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

.id, .passwd {
	margin: 25px 10px;
	
}

.submitBtn {
	margin: 0 4px 0 10px;
}

.btn_center_box button {
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

.btn_center_box button:hover {
	background-color: #0077ff;
	transition: all 0.2s linear;
}
</style>
<link href="css/login.css" type="text/css" rel="stylesheet">
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
				회원정보수정 완료
			</h1>	
		</div>
	
		<!-- header end -->

		<!-- container start -->
		<div class="container">
			  <table>
				  <tr>
					<td style="width: 500px; text-align: center; height: 22px; font-size: 1.5em; ">
						${loginSession.id }님의 정보가 변경되었습니다
					</td>
			  	  </tr>
			  </table>
			  <div class="homeBtn" style="margin-top: 10px; ">
			  	<button type="button" style="display: block; margin: auto; background: #2a303b; color: #b4986b; font-weight: bold; border: none; padding: 10px; cursor: pointer;" 
			  		onclick="location.href='${pageContext.request.contextPath}/mypage/main';">마이페이지로 돌아가기</button>
			  </div>
		</div>
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
		$("#formFindPw").attr("action", "${pageContext.request.contextPath}/login");
		$("#formFindPw").submit();		
	}
});
</script>
            
</html>