<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<!-- Mirrored from www.railcruise.co.kr/website/rc_course_special.asp by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 03 Sep 2021 09:24:37 GMT -->
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
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/specialstyle.css" type="text/css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style2.css" type="text/css" />
	
	<script src="${pageContext.request.contextPath}/resources/lib/jquery-1.11.2.min.js"></script>
	<!--[if lt IE 9]><script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script><![endif]-->
	<!--[if lt IE 9]><script src="http://ie7-js.googlecode.com/svn/version/2.1(beta4)/IE9.js"></script><![endif]-->
	<script src="${pageContext.request.contextPath}/resources/js/menu_current.js"></script>
	<script src="${pageContext.request.contextPath}/resources/lib/jquery-ui-1.12.1/jquery-ui.min.html"></script>
	<script src="${pageContext.request.contextPath}/resources/lib/thumb-slider/lightslider.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/common.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/tab-loader.js"></script>

<style>
    #special-container {
        background-color: #fbf9f9;
        width: 100%;
		padding-bottom: 57px;
    }
	.btn-wrap {
		text-align:center; margin-top:50px;
	}
	.section-haerang1 .btn-wrap a {
		display:inline-block;white-space: nowrap
	}
	.mainImg_1 {
		width: 100%
	}
    .img_area {
        position: relative;
    }
    .img_area01 img {
        width: 1200px;
		margin: auto;
		padding-top:50px;
    }
	.img_area02 {
        display: none;
    }
    .nav_box {
        float: left;
        text-align: center;
        position: relative;
        width: 100%;
        overflow: hidden;
        background: none;
    }

    .special_nav {
        background-color: white;
        list-style: none;
        text-align: center;
        margin: 0 auto;
        padding: 0;
        width: 100%;
    }
    .special_nav ul li{
        display: block;
        color: #a2a2a2;
        padding: 18px 0px 12px 0px;
        text-align: center;
        font-size: 16px;
        text-decoration: none;
        font-weight: 600;
		border-bottom: 3px solid #cbcbcb;

    }
    
    
    
  .active::after {
        border-top: 0.5em solid #000;
        padding: 0 0.5em;
        font-weight: bolder;
        color: black;
        
    
    }  
    .active::before {
        content: "";
        display: block;
    }
    .special_nav ul li:hover {
        color:#000;
        cursor: pointer;
		border-bottom: 3px solid #b68b38;
    }
	.special_nav ul li:focus {
        color:#000;
        cursor: pointer;
		border-bottom: 3px solid #b68b38;
    }
    .special_nav ul li {
        width: 8.333%;
        float: left;
        background-color: white;
		border-right: 1px solid #cbcbcb
    }
	.special_nav ul li.sel {
        color:#000;
		border-bottom: 3px solid #523d10;
	}

	@media all and (max-width:1100px){
		.special_nav ul li {
			width: 33.333%;
			padding: 10px 0px 5px 0px;
			font-size: 14px;
			line-height: 1.5em;
		}
		.img_area01 img {
			width: 100%;
			padding-top: 0px
		}
		.img_area {
			display: none;
		}
		.img_area02 {
			display: block;
		}
	}

    ul > li:hover,
    ul > li:focus,
    ul > li:activ,
    ul > li.active {
        border-top: 0.5em solid #000;
        padding: 0 0.5em;
        font-weight: bolder;
        color: black;
    }
</style>
</head>
<script type="text/javascript">
    $(document).ready(function(){
		const imgSeq = 6;
		if(imgSeq != 0){
			imgChange("img"+imgSeq);
		}
        
    });
	function imgChange(className){
		$(".mainImg_1").hide();
		$(".mainImg_1").css("display", "none");
		
		$("."+className).show();
		$("."+className).css("display", "block");

		$(".special_nav .active").removeClass("sel");
		$("#"+className).addClass("sel");
	}
    
	$(function(){
		var sBtn = $("ul > li");    //  ul > li 이를 sBtn으로 칭한다. (클릭이벤트는 li에 적용 된다.)
		sBtn.find("li").click(function(){   // sBtn에 속해 있는  a 찾아 클릭 하면.
			sBtn.removeClass("active");     // sBtn 속에 (active) 클래스를 삭제 한다.
			$(this).parent().addClass("active"); // 클릭한 a에 (active)클래스를 넣는다.
		});
	});

 

</script>
<body>
<div id="wrap" class="page-introduce">
	<!-- skipNavi -->
	<ul id="skipNavi">
		<li><a href="#container" >본문바로가기</a></li>
	</ul>
	<!-- //skipNavi -->
	

	<!---------- import 「top menu」 here ----------->
	
	<script>
	
		/* function site_change(value){
			//alert(value);
			
			if (value == "KOR"){
				location.href = "infault.html";
			}
			else if (value == "USA"){
				location.href = "${pageContext.request.contextPath}/resources/en/infault.html";
			}
		} */
	
	</script>

	<script src="${pageContext.request.contextPath}/resources/js/menu_display.js"></script>


    <!---------- container------------->
    <div id="special-container">
		
		<div>
			<div class="img_area">
				<img class="mainImg_1 img1" alt="main" src="${pageContext.request.contextPath}/resources/img/s_NewyearDay1.jpg">
				<img class="mainImg_1 img2" alt="main" src="${pageContext.request.contextPath}/resources/img/s_NewyearDay2.jpg" style="display:none;">
				<img class="mainImg_1 img3" alt="main" src="${pageContext.request.contextPath}/resources/img/s_spring.jpg" style="display:none;">
				<img class="mainImg_1 img4" alt="main" src="${pageContext.request.contextPath}/resources/img/s_healing.jpg" style="display:none;">
				<img class="mainImg_1 img5" alt="main" src="${pageContext.request.contextPath}/resources/img/s_Vacance.jpg" style="display:none;">
				<img class="mainImg_1 img6" alt="main" src="${pageContext.request.contextPath}/resources/img/s_Thanksgv1.jpg" style="display:none;">
				<img class="mainImg_1 img7" alt="main" src="${pageContext.request.contextPath}/resources/img/s_Thanksgv2.jpg" style="display:none;">
				<img class="mainImg_1 img8" alt="main" src="${pageContext.request.contextPath}/resources/img/s_Autumncolors.jpg" style="display:none;">
				<img class="mainImg_1 img9" alt="main" src="${pageContext.request.contextPath}/resources/img/s_Christmas.jpg" style="display:none;">
				<img class="mainImg_1 img10" alt="main" src="${pageContext.request.contextPath}/resources/img/s_sunrise1.jpg" style="display:none;">
				<img class="mainImg_1 img11" alt="main" src="${pageContext.request.contextPath}/resources/img/s_sunrise2.jpg" style="display:none;">
				<img class="mainImg_1 img12" alt="main" src="${pageContext.request.contextPath}/resources/img/s_Winterleisure.jpg" style="display:none;">
				
			</div>
			<div class="nav_box">
				<nav class="special_nav">
					<ul>			
						<li class="active sel" id="img1"  onclick="imgChange('img1')">설날1호기<br><small>2박3일</small><br></li>
						<li class="active" id="img2"  onclick="imgChange('img2')">설날2호기<br><small>2박3일</small><br></li>
						<li class="active" id="img3"  onclick="imgChange('img3')">봄꽃<br><small>2박3일</small><br></li>
						<li class="active" id="img4"  onclick="imgChange('img4')">힐링<br><small>2박3일</small><br></li>
						<li class="active" id="img5"  onclick="imgChange('img5')">바캉스<br><small>2박3일</small><br></li>
						<li class="active" id="img6"  onclick="imgChange('img6')">추석1호기<br><small>2박3일</small><br></li>
						<li class="active" id="img7"  onclick="imgChange('img7')">추석2호기<br><small>2박3일</small><br></li>
						<li class="active" id="img8"  onclick="imgChange('img8')">가을단풍<br><small>2박3일</small><br></li>
						<li class="active" id="img9"  onclick="imgChange('img9')">크리스마스<br><small>2박3일</small><br></li>
						<li class="active" id="img10" onclick="imgChange('img10')">해맞이2호기<br><small>2박3일</small><br></li>
						<li class="active" id="img11" onclick="imgChange('img11')">해맞이1호기<br><small>2박3일</small><br></li>
						<li class="active" id="img12" onclick="imgChange('img12')">겨울레저<br><small>2박3일</small><br></li>
						</ul> 
				</nav>
			</div>
			<div class="img_area02">
				<img class="mainImg_1 img1" alt="main" src="${pageContext.request.contextPath}/resources/img/s_NewyearDay1_m.jpg">
				<img class="mainImg_1 img2" alt="main" src="${pageContext.request.contextPath}/resources/img/s_NewyearDay2_m.jpg" style="display:none;">
				<img class="mainImg_1 img3" alt="main" src="${pageContext.request.contextPath}/resources/img/s_spring_m.jpg" style="display:none;">
				<img class="mainImg_1 img4" alt="main" src="${pageContext.request.contextPath}/resources/img/s_healing_m.jpg" style="display:none;">
				<img class="mainImg_1 img5" alt="main" src="${pageContext.request.contextPath}/resources/img/s_Vacance_m.jpg" style="display:none;">
				<img class="mainImg_1 img6" alt="main" src="${pageContext.request.contextPath}/resources/img/s_Thanksgv1_m.jpg" style="display:none;">
				<img class="mainImg_1 img7" alt="main" src="${pageContext.request.contextPath}/resources/img/s_Thanksgv2_m.jpg" style="display:none;">
				<img class="mainImg_1 img8" alt="main" src="${pageContext.request.contextPath}/resources/img/s_Autumncolors_m.jpg" style="display:none;">
				<img class="mainImg_1 img9" alt="main" src="${pageContext.request.contextPath}/resources/img/s_Christmas_m.jpg" style="display:none;">
				<img class="mainImg_1 img10" alt="main" src="${pageContext.request.contextPath}/resources/img/s_sunrise1_m.jpg" style="display:none;">
				<img class="mainImg_1 img11" alt="main" src="${pageContext.request.contextPath}/resources/img/s_sunrise2_m.jpg" style="display:none;">
				<img class="mainImg_1 img12" alt="main" src="${pageContext.request.contextPath}/resources/img/s_Winterleisure_m.jpg" style="display:none;">
				
			</div>
			<div class="img_area01">
				<img class="mainImg_1 img1" alt="main" src="${pageContext.request.contextPath}/resources/img/sp_yet.jpg">
				<img class="mainImg_1 img2" alt="main" src="${pageContext.request.contextPath}/resources/img/sp_yet.jpg" style="display:none;">
				<img class="mainImg_1 img3" alt="main" src="${pageContext.request.contextPath}/resources/img/spring.jpg" style="display:none;">
				<img class="mainImg_1 img4" alt="main" src="${pageContext.request.contextPath}/resources/img/Healing.jpg" style="display:none;">
				<img class="mainImg_1 img5" alt="main" src="${pageContext.request.contextPath}/resources/img/Vacance.jpg" style="display:none;">
				<img class="mainImg_1 img6" alt="main" src="${pageContext.request.contextPath}/resources/img/Thankgiv1.jpg" style="display:none;">
				<img class="mainImg_1 img7" alt="main" src="${pageContext.request.contextPath}/resources/img/Thankgiv2.jpg" style="display:none;">
				<img class="mainImg_1 img8" alt="main" src="${pageContext.request.contextPath}/resources/img/Autumn.jpg" style="display:none;">
				<img class="mainImg_1 img9" alt="main" src="${pageContext.request.contextPath}/resources/img/Christmas.jpg" style="display:none;">
				<img class="mainImg_1 img10" alt="main" src="${pageContext.request.contextPath}/resources/img/Sunrise2.jpg" style="display:none;">
				<img class="mainImg_1 img11" alt="main" src="${pageContext.request.contextPath}/resources/img/Sunrise1.jpg" style="display:none;">
				<img class="mainImg_1 img12" alt="main" src="${pageContext.request.contextPath}/resources/img/sp_yet.jpg" style="display:none;">
				
			</div>
	   </div>
		<div class="btn-wrap">
                  <a href="${pageContext.request.contextPath}/rc_rev01" class="btn btn-reserve">예약하기</a>
               </div>      
    </div>
	
</div>

</body>

<!-- Mirrored from www.railcruise.co.kr/website/rc_course_special.asp by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 03 Sep 2021 09:36:45 GMT -->
</html>
