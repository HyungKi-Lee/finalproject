<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
    <%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>   
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title><!-- 참조: https://www.maxmovie.com/join -->
</head>
<link href="${pageContext.request.contextPath }/resources/css/users_join.css" type="text/css" rel="stylesheet">
<style>
input {
     font-style: 1px bold solid;
}
</style>
<body>
<!-- container start -->
<div id="wrapper">
		<br>
  		   <br>
  		      <br>
		<div class="header">
			<h1 style="margin-bottom: 35px;">
			    회원정보수정
			</h1>
		</div>
		<p>*아이디</p>
	     <div class="modify"> 
	         <!-- <form id="join_con" action="/mypage/main" method="get" style="width: 100%"> -->
	         <form id="modify" name="f" method="post" style="width: 100%">
	          <fieldset style="border: none;">    
	          <!-- 아이디 -->
	          <div class="id">
	              <input type="text" id="id" name="id"  readonly="readonly" " style="display: none;" value="${users.id}">
	             <div id="idsession" style="font-size: 20px"> ${users.id} </div>
	          </div>
	          <!-- 이름 -->
	          <div class="name">
	              <input type="text" id="name" name="name" autocomplete="off"  value="${users.name }" style="display: block;">
	              <span id="nameErr" class="error"></span>
	          </div>
	          <!-- 생년월일 -->
	          <div class="birth">
	          		<fmt:parseDate value="${users.birthday}" var="birthday" pattern="yyyy-MM-dd HH:mm:ss"/>
	              <input type="text" id="birthday" name="birthday" maxlength="8" value="<fmt:formatDate value="${birthday}" pattern="yyyyMMdd"/>" style="display: block;">
	              <span id="birthErr" class="error"></span>
	          </div>
	          <!-- 이메일 -->
	          <div class="email">
	              <input type="text" id="email" name="email" autocomplete="off" value="${users.email }" style="display: block;">
	              <span id="emailErr" class="error"></span>
	          </div>
	          <!-- 전화번호 -->
	          <div class="phone">
	              <input type="text" id="phone" name="phone" maxlength="11" autocomplete="off"  value="${users.phone }" style="display: block;">
	              <span id="phoneErr" class="error"></span>
	          </div>
	          <br>
	          <!-- 주소 -->
	          <div class="address">
	              <p><button type="button" id="btnPostSearch" class="btnPostSearch">우편번호 검색</button></p>
	              <input type="text" id="zipcode" name="zipcode" readonly="readonly" autocomplete="off" id="zipcode" value="${users.zipcode }" style="display: block;">
	              <span id="zipcodeErr" class="error"></span>          
		          <br>
	              <input type="text" id="address1" name="address1" readonly="readonly" autocomplete="off" value="${users.address1 }" style="display: block;">
	              <span id="address1Err" class="error"></span>
	              <input type="text" id="address2" name="address2" autocomplete="off"  value="${users.address2 }" style="display: block;">
	              <span id="address2Err" class="error"></span>
	          </div>
	          
	          <div class="submit" align="center">
	              <button onClick="location.href='${pageContext.request.contextPath}/mypage/main';" type="button" id="btnCancel" class="btn_member_cancel">취소</button>
			      <button type="button" id="btnJoin" class="btn_comfirm js_btn_join">수정하기</button>
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
	var nameVal = $("#name").val();
	var nameRegExp = /^[가-힣]{2,10}$/;
	var phoneVal = $("#phone").val();
	var phoneRegExp = /^\d{3}\d{3,4}\d{4}$/;
	var birthVal = $("#birthday").val();
	var birthReg = /^(19[0-9][0-9]|20\d{2})(0[0-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/;
	var zipcodeVal = $("#zipcode").val();
	var address1Val = $("#address1").val();
	var address2Val = $("#address2").val();
	
	/*이름 에러 체크*/
	if(nameVal!=''){
		 if (nameVal.match(nameRegExp) == null) {
				document.getElementById("nameErr").innerHTML="2자 이상 10자까지 한글로만 입력해주세요.";
				$('#name').focus();
				return false;
				} else {
				document.getElementById("nameErr").innerHTML="";
			}
	}
 	/*생일 에러 체크 */
	if(birthVal!=''){
	if (birthVal.match(birthReg) == null) {
		document.getElementById("birthErr").innerHTML="입력한 생년월일이 형식에 맞지 않습니다";
		$('#birthday').focus();
		return false;
		} else {
		document.getElementById("birthErr").innerHTML="";
	     }
	} 
	/*이메일 에러 체크*/
   if(emailVal!=''){
   if($('#email').val()!=''&& $('#email').val().length>254){
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
   }
	
	/*전화번호 에러 체크 */
   if(phoneVal!=''){
   if (phoneVal.match(phoneRegExp) == null) {
		document.getElementById("phoneErr").innerHTML="잘못된 형식의 전화번호입니다. 정확한 전화번호를 입력해 주세요.";
		$('#phone').focus();
		return false;
		} else {
		document.getElementById("phoneErr").innerHTML="";
	}
   }
	
	/* f.action="${pageContext.request.contextPath}/mypage/modify_success"; */
	f.action="${pageContext.request.contextPath}/mypage/modify"; 
	f.submit();
	
	 $("#modify").submit(); 
	
/* 		$("#modify").submit();
		f.action = "${pageContext.request.contextPath}/mypage/main";
		alert("회원정보가 수정되었습니다."); */
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