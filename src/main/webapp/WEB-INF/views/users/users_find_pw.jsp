<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link href="${pageContext.request.contextPath }/resources/css/users_find.css" type="text/css" rel="stylesheet">
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
			<span class="header_con">* 회원가입 시 등록한 정보로 아이디를 확인하실 수 있습니다. *</span>
			
		</div>
		<div class="container">
			<form id="formLogin" method="post"  style="width: 100%" action="${pageContext.request.contextPath }/find_pw">
				<fieldset style="border: none;">
					<div class="id">
						<input type="text" id="id" placeholder="아이디 입력" name="id" value="${id }">
						<span id="idErr" class="error"></span>
					</div>
					<div class="email">
						<input type="text" id="email" placeholder="이메일 입력" name="email" value="${email}">
						<span id="emailErr" class="error"></span>
					</div>
					<div>
						${message }
					</div>
					<div class="submitBtn">
						<button type="button" id="nextBtn">다음</button>
					</div>
				</fieldset>
			</form>
		<br>		
		</div>
		<!-- container end -->		
	
	</div>
</body>

<script type="text/javascript">
$('#nextBtn').click(function () { 
	var idVal = $("#id").val();
	var idRegExp = /^[a-z0-9]{3,14}$/g;
	var idRegExp2 = /^(?=.*[a-z])(?=.*[0-9])[a-z0-9]{3,14}$/
	var emailVal = $("#email").val();
	var emailRegExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;

	/*아이디 에러 체크*/
	if($('#id').val()=='') { 
		document.getElementById("idErr").innerHTML="아이디를 입력해 주세요.";
		$('#id').focus();
		return false;
	} else if($('#id').val().length>15 || $('#id').val().length<3){
		document.getElementById("idErr").innerHTML="3자 이상 15자까지 사용할 수 있습니다.";
		$('#id').focus();
		return false;
	} else if (idVal.match(idRegExp) == null) {
		document.getElementById("idErr").innerHTML="아이디는 영문 소문자, 숫자만 사용할 수 있습니다.";
		$('#id').focus();
		return false;
	} else if (idVal.match(idRegExp2) == null) {
		document.getElementById("idErr").innerHTML="아이디는 영문 소문자, 숫자가 하나 이상 포함되어야 합니다.";
		$('#id').focus();
		return false;
	} else {
		document.getElementById("idErr").innerHTML="";
	} 
	/*이메일 에러 체크*/
	if($('#email').val()=='') { 
		document.getElementById("emailErr").innerHTML="이메일을 입력해 주세요.";
		$('#email').focus();
		return false;
	} else if($('#email').val()!=''&& $('#email').val().length>254){
		document.getElementById("emailErr").innerHTML="254자까지 사용할 수 있습니다.";
		$('#email').focus();
		return false;
	} else if (emailVal.match(emailRegExp) == null) {
		document.getElementById("emailErr").innerHTML="이메일 형식에 맞게 입력해 주세요.";
		$('#email').focus();
		return false;
		} else {
		document.getElementById("emailErr").innerHTML="";
	}

     $("#formLogin").submit();
    });
	
</script>
            
</html>