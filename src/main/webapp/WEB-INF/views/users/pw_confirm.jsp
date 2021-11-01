<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
    
 <style>
 /* CSS Document */
.sub_content .content {margin-top: 70px;}
#container{height: 400px;}

.mypage_zone_tit{margin:0 0 0 0; padding:0 0 10px 0; font-size:16px;}
.mypage_zone_tit span{padding:0 0 0 5px; color:#777777; font-size:12px; font-weight:normal;}
.mypage_shipping .mypage_zone_tit h3{display:inline-block;}
.mypage_shipping .mypage_zone_tit .pick_list_num{display:inline-block;}

/* ------------- 마이페이지 > 회원 회원정보 ------------- */
.my_page_password p{font-size:14px; text-align:center;}
.my_page_password h2{font-size:30px; text-align:center;}
.my_page_password .mypage_zone_tit{margin:0 0 20px 0; padding:0 0 10px 0; font-size:14px; }
.my_page_password .id_pw_cont{margin:20px auto; padding:26px 0 24px 0; border:1px solid #dadada; text-align:center; width: 550px;}
.my_page_password .id_pw_cont dl{display:inline-block; margin:15px; vertical-align:top;}
.my_page_password .id_pw_cont dt{display:inline-block; padding:5px 10px 0 0; font-size:14px; text-align:center; font-weight:bold; vertical-align:top;}
.my_page_password .id_pw_cont dd{display:inline-block; font-size:14px; text-align:left;}
.my_page_password .id_pw_cont dd strong{display:block; padding:5px 0 0 0; color:#ab3e55;}
.my_page_password .id_pw_cont dd .error{font-size:14px; color:#ab3e55;}
.my_page_password .id_pw_cont .errorMsg{font-size: 18px;}

/* ------------- 마이페이지 > 내정보수정 ------------- */
.my_page h3{font-weight:bold;}
.my_page .mypage_zone_tit{margin:0 0 50px 0; padding:0 0 10px 0; font-size:14px; border-bottom:1px solid #3c3c3c;}
.my_page .join_base_wrap .member_cont{width:100%; margin:0; padding:0;}


/* ------------- 마이페이지 > 회원탈퇴 ------------- */
.hack_out {margin:0 0 50px 0;}
.hack_out .mypage_zone_tit{margin:0 0 50px 0; padding:0 0 10px 0; font-size:14px; border-bottom:1px solid #999999;}
.hack_out .mypage_unregister .mypage_zone_tit{margin:0; padding:0 0 10px 0; font-size:14px; border-bottom:none 0;}
.hack_out .mypage_unregister .unregister_info{margin:0 0 40px 0; padding:15px 15px 15px 15px; color:#717171; border:1px solid #dadada;}
.hack_out .mypage_unregister .hack_out_list li{float:left; width:35%; padding:0 0 7px 0;}
.hack_out .mypage_unregister textarea{width:98%; height:100px;}
 
.btn_left_box{text-align:left;}
.btn_center_box{text-align:center;}
.btn_right_box{text-align:right;}
.btn_pw_cancel{display:inline-block;min-width:80px;height:42px;padding:0 10px 0 10px;line-height:40px;color:#3e3d3c;font-size:14px;border:1px solid #cccccc;background:#ffffff;text-align:center;cursor:pointer;}
.btn_pw_cancel:hover{color:#333333; border:1px solid #bbbbbb;}
.btn_pw_cancel em{font-weight:bold;}
.btn_pw_certify{min-width:100px;height:44px;padding:0 10px 0 10px;
font-size:14px;font-weight:bold;text-align:center;vertical-align:top;}
.btn_pw_certify:hover{border:1px solid #333; background:#333;}
.btn_pw_certify em{font-weight:bold;}

 </style>
 
 
 <!-- container start -->
<div id="container">
        <div id="contents">
        <!-- 본문 시작 -->
        <div class="sub_content">  
		<div class="content">
   		<div class="mypage_cont">
        <div class="my_page_password">
            <div class="mypage_zone_tit">
            <!-- 
<%--             	<% if(action.equals("modify")) { %> --%>
                <h2>회원정보수정</h2>
<%--                 <% } else if(action.equals("delete")) { %> --%>
<%--                <h2>회원탈퇴</h2>
                 <% } %> --%> 
                  -->
            <c:choose>
                   <c:when test="${ param.equals("modify")}">
                          <h2>회원정보수정</h2>
                    </c:when>
                    <c:otherwise>
					     <h2>회원탈퇴</h2>
				    </c:otherwise>
            </c:choose>      
                  
            </div>
            <p><strong>회원님의 정보를 안전하게 보호하기 위해 비밀번호를 다시 한번 확인해 주세요.</strong></p>

            <form id="formPwCheck" name="formPwCheck" method="post">
                <div class="id_pw_cont">
                    <dl>
                        <dt>아이디</dt>
<%--                         <dd><strong><%=loginUsers.getId() %></strong></dd> --%>
                        <dd><strong>로그인한 아이디</strong></dd>
                    </dl>
                    <dl>
                        <dt style="margin-left: 81px;">비밀번호</dt>
                        <dd>
                            <div class="member_warning" style="margin-right: 27px;">
                                <input type="password" name="pw" id="pw">
                               <%--<div id="message" class="error"><%=message %></div> --%>
                                <div id="message" class="error"><!-- 에러메세지 및 에러페이지로 이동 --></div>
                            </div>
                        </dd>
                    </dl>
                </div>
                <div class="btn_center_box">
                    <a class="btn_pw_cancel" href="/admin/mypage_cancel">취소</a>
                    <button type="button" class="btn_pw_certify" id="btnPwCheck">인증하기</button>
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
	
	<%-- 
	<% if(action.equals("modify")) { %>
		formPwCheck.action="<%=request.getContextPath() %>/home.jsp?workgroup=users&work=users_modify";
	<% } else if(action.equals("delete")) { %>
		formPwCheck.action="<%=request.getContextPath() %>/home.jsp?workgroup=users&work=users_delete";
	<% } %>
	
	$("#formPwCheck").submit();
	--%>
	
});
		
</script>

