<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">

<!-- Mirrored from www.railcruise.co.kr/website/rc_rev03.asp by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 03 Sep 2021 10:25:01 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
	<meta charset="UTF-8">
	<title> 고품격 기차여행의 새로운 감동 – 레일크루즈 해랑 </title>
	<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no" />
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta property="og:title" content="" />
	<meta property="og:description" content="" />
	<meta property="og:url" content="" />
	<meta property="og:type" content="article" />
	<meta property="og:site_name" content="" />

	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/lib/jquery-ui-1.12.1/jquery-ui.min-2.html" type="text/css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" type="text/css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reservation.css" type="text/css" />
	<link href="${pageContext.request.contextPath }/resources/css/users_login.css" type="text/css" rel="stylesheet">

	<script src="${pageContext.request.contextPath}/resources/lib/jquery-1.11.2.min.js"></script>
	<!--[if lt IE 9]><script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script><![endif]-->
	<!--[if lt IE 9]><script src="http://ie7-js.googlecode.com/svn/version/2.1(beta4)/IE9.js"></script><![endif]-->
	<script src="${pageContext.request.contextPath}/resources/js/menu_current.js"></script>
	<script src="${pageContext.request.contextPath}/resources/lib/jquery-ui-1.12.1/jquery-ui.min.html"></script>
	<script src="${pageContext.request.contextPath}/resources/js/common.js"></script>
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	
	<style>
	.txt_c {
	  height: 27px;
	  width: 100px;
	  background-color:fbf9f9;
	  padding: 5px;
	  border-radius: 5px;
	  font-size:20px;
	  border:0px;

	  text-align:center;
	  
	}
	</style>
</head>
<body>

<div id="wrap" class="page-introduce">
	<!-- skipNavi -->
	<ul id="skipNavi">
		<li><a href="#container" >본문바로가기</a></li>
	</ul>
	<!-- //skipNavi -->

	<script src="${pageContext.request.contextPath}/resources/js/menu_display.js"></script>


    <!---------- container------------->
    <div id="container">
		<div class="keyvisual">
			<div class="bg-wrap"><img src="${pageContext.request.contextPath}/resources/img/key1.png" alt="해랑이미지" /></div>
		</div>
		<br>

		<div id="content" align="center">
			<img src="${pageContext.request.contextPath}/resources/img/success.png" width="160px" height="160px">
		</div><!--content-->
		
		<div class="m_main">
			<h2 class="section-tit">RESERVATION SUCCESS</h2>
			<p class="section-dec">
				예약이 완료되었습니다. 이용해 주셔서 감사합니다.<br>
			</p>
		</div>
		<br>
		
		<div class="homeBtn" style="margin-top: 10px; ">
	  		<button type="button" style="display: block; margin: auto; background: #2a303b; color: #b4986b; font-weight: bold; border: none; padding: 10px; cursor: pointer;" 
	  		onclick="location.href='${pageContext.request.contextPath}/home';">홈으로</button>
	  	</div>
		
	</div><!--container-->
</div>
</body>

<!-- Mirrored from www.railcruise.co.kr/website/rc_rev03.asp by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 03 Sep 2021 10:25:12 GMT -->
</html>
