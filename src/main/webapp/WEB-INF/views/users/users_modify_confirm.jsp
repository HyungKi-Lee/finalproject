<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="${pageContext.request.contextPath }/resources/css/users_confirm.css" type="text/css" rel="stylesheet">

<div id="container">
        <div id="contents">
        <!-- 본문 시작 -->
        <div class="sub_content">  
		<div class="content">
   		<div class="mypage_cont">
        <div class="my_page_password">
            <div class="mypage_zone_tit">
            <br>
                  <br>
                        <br>
                <h2>회원정보수정</h2>
            </div>
            <p><strong>회원님의 정보를 안전하게 보호하기 위해 비밀번호를 다시 한번 확인해 주세요.</strong></p>

            <form id="formPwCheck" name="formPwCheck" method="post">
                <div class="id_pw_cont">
                    <dl>
                        <dt>아이디</dt>
                        <dd><strong>${loginSession.id}</strong></dd>
                    </dl>
                    <dl>
                        <dt style="margin-left: 81px;">비밀번호</dt>
                        <dd>
                            <div class="member_warning" style="margin-right: 27px;">
                                <input type="password" name="pw" id="pw">
                                <div id="message" class="error"></div>
                            </div>
                        </dd>
                    </dl>
                </div>
                <div class="btn_center_box">
                     <button type="button" class="btn_pw_certify" id="btnPrevStep" onclick="back();">취소</button>
                    <button type="button" class="btn_pw_certify" id="btnPwCheck" onclick="confirm();">인증하기</button>
                </div>
            </form>
        </div>
        <!-- //my_page_password -->
    </div>
    <!-- //mypage_cont -->
</div>
<!-- //content -->
</div>
<!-- //sub_content -->
</div>
</div>
<!-- //container -->

<script type="text/javascript">
$("#btnPwCheck").click(function() {
	if($("#pw").val()=="") {
		$("#message").text("비밀번호를 입력해 주세요.");
		return;
	}
	$("#formPwCheck").submit();
	
});
		
</script>

