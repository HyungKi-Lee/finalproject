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
		<br>
  		   <br>
  		      <br>
		<div class="header">
			<h1>
				아이디찾기
			</h1>
			<span class="header_con">* 회원가입 시 등록한 정보로 아이디를 확인하실 수 있습니다. *</span>
			
		</div>
		<div class="container">
			<form id="formLogin" method="post" style="width: 100%" action="${pageContext.request.contextPath }/find_id">
				<fieldset style="border: none;">
					<div class="name">
						<input type="text" id="name" placeholder="이름 입력" name="name" value="${name }">
   					   <span id="nameErr" class="error"></span>
					</div>
					<div class="email">
						<input type="text" id="email" placeholder="이메일 입력" name="email" value="${email }">
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
		
		<!-- footer -->
	
	</div>
</body>

<script type="text/javascript">
$('#nextBtn').click(function () { 
	var emailVal = $("#email").val();
	var emailRegExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	var nameVal = $("#name").val();
	var nameRegExp = /^[가-힣]{2,10}$/;

	/*이름 에러 체크*/
	if($('#name').val()=='') { 
		document.getElementById("nameErr").innerHTML="이름을 입력해 주세요.";
		$('#name').focus();
		return false;
	} else if (nameVal.match(nameRegExp) == null) {
		document.getElementById("nameErr").innerHTML="2자 이상 10자까지 한글로만 입력해주세요.";
		$('#name').focus();
		return false;
		} else {
		document.getElementById("nameErr").innerHTML="";
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