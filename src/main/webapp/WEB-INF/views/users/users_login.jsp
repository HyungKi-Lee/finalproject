<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
    <%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>   
<!DOCTYPE html>
<html>
<head>
<link href="${pageContext.request.contextPath }/resources/css/users_login.css" type="text/css" rel="stylesheet">
<script type="text/javascript">
function userLogin() {
	
	//아이디가 미입력된 경우
	if ( f.id.value == "" ) {
		alert("아이디를 입력하십시요.");
		f.id.focus();
		return;
	} 
	//아이디 4자 이하 or 12자 이상 입력경우
    if (f.id.value.length < 4 || f.id.value.length > 12)
     {
       alert("아이디는 4~12자 이내로 입력 가능합니다!");
       f.id.select();//입력한 문자를 선택 상태로 만듬.
       return;
      }	
    
	//아이디를 한글로 입력하거나 검증 문자 외의 문자로 입력할 경우
    for (i=0; i<f.id.value.length; i++)
    {
           var ch = f.id.value.charAt(i);//문자를 반환(정수형), 범위 검사 가능
           //입력된 문자를 검사
           if ( ( ch < "a" || ch > "z") && (ch < "A" || ch > "Z") && (ch < "0" || ch > "9" ) )
           {
            alert("아이디는 영문 소문자로만 입력 가능 합니다!");
            f.id.select();
            return;
           }
    }
    //입력된 첫번째 문자가 숫자인경우
    if (!isNaN(f.id.value.substr(0,1)))
    {
         alert("아이디는 숫자로 시작할 수 없습니다!");
         f.id.select();
         return;
    }
    //비밀번호가 미입력된 경우
	if ( f.pw.value == "" ) {
		alert("비밀번호를 입력하십시요.");
		f.password.focus();
		return;
	}
    //비밀번호가 4자 이하 or 12자 이상으로 입력된 경우
	  if (f.pw.value.length < 4 || f.pw.value.length > 12)
      {
           alert("비밀번호는 4~12자 이내로 입력 가능 합니다!");
           f.pw.select();
           return;
      }	
    
/*     if ($("#loginErr")!=null) {
    	alert("탈퇴한 회원입니다");
    	return false;
    }
  */
	  
	f.action = "${pageContext.request.contextPath}/login";
	f.submit();
}

</script>
<meta charset="UTF-8">
</head>
<body>
    <!-- container start -->
	<div id="wrapper">
		<br>
  		<br>
  		<br>
		<c:choose>
		<c:when test="${empty(loginSession) }">
			<div class="header">
				<h1>로그인</h1>
			</div>
			<div class="container">
			<%-- 비로그인 사용자인 경우 --%>
				<form id="formLogin" name="f" method="post" style="width: 100%">
					<fieldset style="border: none;">
						<legend style="display: none;">로그인</legend>
						<div class="id">
							<input type="text" id="id" placeholder="아이디 입력" name="id" value="${id }" >
						</div>
						<div class="passwd">
							<input type="password" id="pw" placeholder="비밀번호 입력" name="pw">
							<div id="ErrMsg" >${message }</div> 
						</div>
						<div class="logBtn">
							<button type="button" onclick="userLogin();">로그인</button>
						</div>
					</fieldset>
				</form>	
				<div class="menu">
					<p align="center">
						<!-- 각 사이트 링크 -->
						<a href="${pageContext.request.contextPath }/join_agree">회원가입</a>
						<a href="${pageContext.request.contextPath }/find_id">ID 찾기</a>
						<a href="${pageContext.request.contextPath }/find_pw">비밀번호 찾기</a>
					</p>
				</div>
			</div>
		</c:when>
	   
		<%-- 로그인 사용자인 경우 --%>
		<c:otherwise>
		<div class="header">
			<h1>로그인 성공</h1>
		</div>
		<div class="container">
			  <table>
				  <tr>
					<td style="width: 500px; text-align: center; height: 22px; font-size: 1.5em; ">
						${loginSession.name }님 환영합니다.
					</td>
			  	  </tr>
			  </table>
			  <div class="homeBtn" style="margin-top: 10px; ">
			  	<button type="button" style="display: block; margin: auto; background: #2a303b; color: #b4986b; font-weight: bold; border: none; padding: 10px; cursor: pointer;" 
			  		onclick="location.href='${pageContext.request.contextPath}/home';">홈으로</button>
			  </div>
		</div>
		</c:otherwise> 
		</c:choose>
		</div>
		
	<%-- 	<%-- 테스트용 블럭 --%>
		<%-- <div>
			test : ${message }
			test : ${id }
		</div> --%> 
		<%-- 테스트용 블럭 --%>
		
		<!-- container end -->
</body>


</html>