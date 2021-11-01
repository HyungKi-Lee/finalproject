<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>     
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>고품격 기차여행의 새로운 감동 – 레일크루즈 해랑</title>
	<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta name="naver-site-verification" content="8a7c84bb6e473b01779de225e0689af5b9e71397"/>
	<meta name="description" content="고품격 기차여행의 새로운 감동 - 레일크루즈 해랑" />
	<meta name="keywords" content="레일크루즈 해랑" />

	<!-- <link rel="canonical" href="infault.html"> -->
	 
	<!-- <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/admin.css" type="text/css"/> -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/lib/owl-carousel/owl.carousel.css" type="text/css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/lib/owl-carousel/owl.theme.css" type="text/css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" type="text/css" />

	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/commu.css" type="text/css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/lib/slider/slider_main.css" type="text/css" />

	<link href="${pageContext.request.contextPath}/resources/img/train.ico" rel="shortcut icon" type="image/x-icon">

	<script src="${pageContext.request.contextPath}/resources/lib/jquery-1.11.2.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/menu_current.js"></script>
	
	<script src="${pageContext.request.contextPath}/resources/lib/owl-carousel/owl.carousel.js"></script>
	<script src="${pageContext.request.contextPath}/resources/lib/jquery-ui-1.12.1/jquery-ui.min.html"></script>
	<script src="${pageContext.request.contextPath}/resources/js/common.js"></script>
	<script>

	function download(file){
		 var filename = file;
		 location.href ="web_download92bd.html?file="+filename;
	}

	function getCookie( name ) { 
	  var nameOfCookie = name + "="; 
	  var x = 0; //
	  while ( x <= document.cookie.length ) { 
		var y = (x+nameOfCookie.length); 
		if ( document.cookie.substring( x, y ) == nameOfCookie ) { 
		  if ( (endOfCookie=document.cookie.indexOf( ";", y )) == -1 ) 
			endOfCookie = document.cookie.length; 
			return unescape( document.cookie.substring( y, endOfCookie ) ); 
		} 
		  x = document.cookie.indexOf( " ", x ) + 1; 
			if ( x == 0 ) 
		   break; 
	  }
	}

	function setCookie( name,value,expiredays ) {
		var todayDate = new Date();
		todayDate.setDate(todayDate.getDate() + expiredays);
		document.cookie = name + "=" + escape( value ) + ";path=/;expires=" + todayDate.toGMTString() + ";"
	}
	//=== 레이어 팝업 :: S ===
	function openlayer(divID) {
		var layerCookie=getCookie(divID);
		if(layerCookie != "no"){
			$("#"+divID).show();
		} else {
			$("#"+divID).hide();
		}
	}
	function closeWin(divID) {
		document.all[divID].style.visibility = "hidden";
	}
	function selfClose(divID) {
		setCookie(divID, "no", 1);
		document.all[divID].style.visibility = "hidden";
	}
	$(document).ready(function(){
		//레이어 팝업 open
		openlayer("divpop");
		openlayer("divpop02");
	});
	//=== 레이어 팝업 :: E ===
	</script>
	
<style>
.popup_bottom_wrap {
    height: 30px;
    line-height: 30px;
    background: #fff;
    border-top: none;
    text-align: center;
    font-size: 13px;
    font-weight: bold;
}
.popup_bottom_btn {
    float: left;
    width: 49%;
    height: 30px;
    line-height: 30px;
	cursor: pointer;
}
	#divpop2 {
		position:fixed;
		bottom: 0;
		right: 0%; 
		margin-left: 600px; 
		z-index: 192;
	}
</style>
</head>

<body class="main_body">
<div id="wrap" class="page-introduce">
	<!-- skipNavi -->
	<ul id="skipNavi">
		<li><a href="#container" >본문바로가기</a></li>
	</ul>
	<!-- //skipNavi -->

	<!-- import 「top menu」 here -->
	<script src="${pageContext.request.contextPath}/resources/js/menu_display.js"></script>

	<div id="header">
		<tiles:insertAttribute name="header"/>
	</div>
	
	<div id="content">
		<tiles:insertAttribute name="content"/>
	</div>
	
	<div id="footer">
		<tiles:insertAttribute name="footer"/>
	</div>
</div>	

<script>
	$(function() {
		var owl = $("#slid-schedule");

        owl.owlCarousel({
			items : 3, //10 items above 1000px browser width
			itemsDesktop : [1000,3], //5 items between 1000px and 901px
			itemsDesktopSmall : [900,2], // betweem 900px and 601px
			itemsTablet: [768,2], //2 items between 600 and 0
			itemsMobile : [500,1], //2 items between 600 and 0
            navigationText: ["",""],
			navigation: true,
            pagination: false
		});
	});
</script>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-131942666-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-131942666-1');
</script>
	
</body>
</html>
