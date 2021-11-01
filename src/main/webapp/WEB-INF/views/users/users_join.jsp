<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
    <%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title><!-- 참조: https://www.maxmovie.com/join -->
</head>
<link href="${pageContext.request.contextPath }/resources/css/users_join.css" type="text/css" rel="stylesheet">

<body>
<!-- container start -->
<div id="wrapper">
		<br>
  		   <br>
  		      <br>
		<div class="header">
			<h1 style="margin-bottom: 35px;">
			    회원가입
			</h1>
		</div>
		<p>*필수입력</p>
	     <div class="joinForm"> 
	         <form id="join_con" method="post" style="width: 100%">
	          <fieldset style="border: none;">    
	          <!-- 아이디 -->
	          <div class="id">
	              <input type="text" id="id" name="id" placeholder="*아이디" value="${usersInfo.id }" style="display: block;">
	              <!-- <input type="text" autocomplete="off" placeholder="*아이디"> -->
	              <!--<button type="button" id="btnIdCheck">아이디 중복확인</button> -->
	              <span id="idErr" class="error">${message}</span>
	          </div>
	          <!-- 비밀번호 -->
	          <div class="passwd">
	              <input type="password" id="passwd" name="pw" placeholder="*비밀번호" value="${usersInfo.pw }"style="display: block;">
	             <!--<input type="password" autocomplete="off" placeholder="*비밀번호">  -->
	              <span id="passwordErr" class="error"></span>
	          </div>
	          <!-- 비밀번호 확인-->
	          <div class="passwdCheck">
	              <input type="password" id="repassword" name="repassword" placeholder="*비밀번호 확인" style="display: block;">
	              <!-- <input type="password" autocomplete="off" placeholder="*비밀번호 확인">  -->
	              <span id="repasswordErr" class="error"></span>
	          </div>
	          <!-- 이름 -->
	          <div class="name">
	              <input type="text" id="name" name="name" autocomplete="off" placeholder="*이름" value="${usersInfo.name }" style="display: block;">
	              <span id="nameErr" class="error"></span>
	          </div>
	          <!-- 생년월일 -->
	          <div class="birth">
	              <input type="text" id="birthday" name="birthday" maxlength="8" autocomplete="off" placeholder="*생년월일 ex) 20150903" value="${usersInfo.birthday }" style="display: block;">
	              <span id="birthErr" class="error"></span>
	          </div>
	          <!-- 이메일 -->
	          <div class="email">
	              <input type="text" id="email" name="email" autocomplete="off" placeholder="*이메일" value="${usersInfo.email }" style="display: block;">
	              <span id="emailErr" class="error"></span>
	          </div>
	          <!-- 전화번호 -->
	          <div class="phone">
	              <input type="text" id="phone" name="phone" maxlength="11" autocomplete="off" placeholder="*전화번호" value="${usersInfo.phone }" style="display: block;">
	              <span id="phoneErr" class="error"></span>
	          </div>
	          <br>
	          <!-- 주소 -->
	          <div class="address">
	              <p><button type="button" id="btnPostSearch" class="btnPostSearch">우편번호 검색</button></p>
	              <input type="text" id="zipcode" name="zipcode" readonly="readonly" autocomplete="off" id="zipcode" placeholder="*우편번호" value="${usersInfo.zipcode }" style="display: block;">
	              <span id="zipcodeErr" class="error"></span>          
		          <br>
	              <input type="text" id="address1" name="address1" readonly="readonly" autocomplete="off" placeholder="*주소" value="${usersInfo.address1 }" style="display: block;">
	              <span id="address1Err" class="error"></span>
	              <input type="text" id="address2" name="address2" autocomplete="off" placeholder="*상세주소" value="${usersInfo.address2 }" style="display: block;">
	              <span id="address2Err" class="error"></span>
	          </div>
	          
	          <div class="submit" align="center">
	              <button type="reset" id="btnCancel" class="btn_member_cancel">다시입력</button>
			      <button type="button" id="btnJoin" class="btn_comfirm js_btn_join">가입하기</button>
	          </div>
	          </fieldset>  
	        </form>
	        </div>

     </div>
</body>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
$('#btnJoin').click(function () { 
	var emailVal = $("#email").val();
	var emailRegExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	var idVal = $("#id").val();
	var idRegExp = /^[a-z0-9]{3,14}$/g;
	var idRegExp2 = /^(?=.*[a-z])(?=.*[0-9])[a-z0-9]{3,14}$/
	var nameVal = $("#name").val();
	var nameRegExp = /^[가-힣]{2,10}$/;
	var pwVal = $("#passwd").val();
	var pwRegExp = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,20}$/;
	var phoneVal = $("#phone").val();
	var phoneRegExp = /^\d{3}\d{3,4}\d{4}$/;
	var birthVal = $("#birthday").val();
	var birthReg = /^(19[0-9][0-9]|20\d{2})(0[0-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/;
	var zipcodeVal = $("#zipcode").val();
	var address1Val = $("#address1").val();
	var address2Val = $("#address2").val();

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
	
	
	/*비밀번호 에러 체크*/
	if($('#passwd').val()=='') { 
		document.getElementById("passwordErr").innerHTML="비밀번호를 입력해 주세요.";
		$('#passwd').focus();
		return false;
	} else if (pwVal.match(pwRegExp) == null) {
		document.getElementById("passwordErr").innerHTML="숫자, 영문자, 특수문자 포함 8~20자리 이내로 입력해 주세요.";
		$('#passwd').focus();
		return false;
		} else {
		document.getElementById("passwordErr").innerHTML="";
	}
	
	/*비밀번호 재확인 에러 체크 */
	if($('#repassword').val()=='') { 
		document.getElementById("repasswordErr").innerHTML="비밀번호 재확인을 입력해 주세요.";
		$('#repassword').focus();
		return false;
	} else if($('#repassword').val()!=$('#passwd').val()){
		document.getElementById("repasswordErr").innerHTML="입력한 비밀번호와 재입력한 비밀번호가 일치하지 않습니다. 다시 확인해 주세요.";
		return false;
	} else {
		document.getElementById("repasswordErr").innerHTML="";
	}
	
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
	
	/*생일 에러 체크 */
	if($('#birthday').val()=='') { 
		document.getElementById("birthErr").innerHTML="생년월일을 입력해 주세요.";
		$('#birthday').focus();
		return false;
	} else if (birthVal.match(birthReg) == null) {
		document.getElementById("birthErr").innerHTML="입력한 생년월일이 형식에 맞지 않습니다";
		$('#birthday').focus();
		return false;
		} else {
		document.getElementById("birthErr").innerHTML="";
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
	
	/*전화번호 에러 체크 */
	if($('#phone').val()=='') { 
		document.getElementById("phoneErr").innerHTML="전화번호를 입력해 주세요.";
		$('#phone').focus();
		return false;
	} else if (phoneVal.match(phoneRegExp) == null) {
		document.getElementById("phoneErr").innerHTML="잘못된 형식의 전화번호입니다. 정확한 전화번호를 입력해 주세요.";
		$('#phone').focus();
		return false;
		} else {
		document.getElementById("phoneErr").innerHTML="";
	}
	
	/*주소 에러 체크 */
	if($('#zipcode').val()=='') { 
		document.getElementById("zipcodeErr").innerHTML="우편번호를 입력해주세요";
		$("#zipcode").focus();
		return false;
	}
	if($('#address1').val()=='') { 
		$('#address1').focus();
		document.getElementById("address1Err").innerHTML="기본주소를 입력해주세요";
		return false;
	}
	if($('#address2').val()=='') { 
		$('#address2').focus();
		document.getElementById("address2Err").innerHTML="상세주소를 입력해주세요";
		return false;
	}
		$("#join_con").submit();
});

//우편번호 검색 버튼 클릭 시
$("#btnPostSearch").click(function() {
	new daum.Postcode({
        oncomplete: function(data) {
        	$('input[id=zipcode]').val(data.zonecode);    
        	$('input[id=address1]').val(data.address);       	  
        	$('input[id=address2]').focus();       	  
        }
    }).open();
});
	
	
</script>
</html>