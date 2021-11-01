<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<!-- Mirrored from www.railcruise.co.kr/website/rc_event.asp by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 03 Sep 2021 10:19:10 GMT -->
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

	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/lib/owl-carousel/owl.carousel.css" type="text/css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/lib/owl-carousel/owl.theme.css" type="text/css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/lib/jquery-ui-1.12.1/jquery-ui.min-2.html" type="text/css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" type="text/css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style2.css" type="text/css" />
	
	<script src="${pageContext.request.contextPath}/resources/lib/jquery-1.11.2.min.js"></script>
	<!--[if lt IE 9]><script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script><![endif]-->
	<!--[if lt IE 9]><script src="http://ie7-js.googlecode.com/svn/version/2.1(beta4)/IE9.js"></script><![endif]-->
	<script src="${pageContext.request.contextPath}/resources/js/menu_current.js"></script>
	<script src="${pageContext.request.contextPath}/resources/lib/owl-carousel/owl.carousel.js"></script>
	<script src="${pageContext.request.contextPath}/resources/lib/jquery-ui-1.12.1/jquery-ui.min.html"></script>
	<script src="${pageContext.request.contextPath}/resources/lib/thumb-slider/lightslider.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/datepicker.regional.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/common.js"></script>
	<script>
    	 $(document).ready(function() {
			$('#image-gallery').lightSlider({
					gallery:true,
					item:1,
					thumbItem:3,
					slideMargin: 0,
					speed:300,
					auto:true,
					loop:true,
					galleryMargin: 10,
					thumbMargin: 10,
					onSliderLoad: function() {
						$('#image-gallery').removeClass('cS-hidden');
					}  
				});
		});
    </script>
</head>
<body>
<div id="wrap" class="page-introduce">
	<!-- skipNavi -->
	<ul id="skipNavi">
		<li><a href="#container" >본문바로가기</a></li>
	</ul>
	<!-- //skipNavi -->
	

	<!---------- import 「top menu」 here ----------->
	
	<script>
	</script>

	<script src="${pageContext.request.contextPath}/resources/js/menu_display.js"></script>

    <!---------- container------------->
    <div id="container">
		<div class="keyvisual">
			<div class="bg-wrap"><img src="${pageContext.request.contextPath}/resources/img/key1.png" alt="해랑이미지" /></div>
			<!--ul class="right-btn">
				<li>
					<a href="rc_course_info.asp">
						<strong>코스안내<span>Course</span></strong>
						<p>해랑열차 타고 떠나는 즐거운 여정, 지금 확인해 보세요</p>
					</a>
				</li>
				<li>
					<a href="room_info.asp">
						<strong>시설안내<span>Train facilities</span></strong>
						<p>행복한 웃음소리가 끊이지않는 공간 </p>
					</a>
				</li>
				<li>
					<a href="rc_faq.asp">
						<strong>커뮤니티<span>Community</span></strong>
						<p>아름다운 추억을 함께 공유해 보세요 </p>
					</a>
				</li>
			</ul-->
		</div>
		<div id="content">
			<section class="section-rourneys">
				<div class="m_main">
					<h2 class="section-tit t2">승무원 이벤트<small>Crew's Event</small></h2>
					<div class="font-common margin">고품격 레일크루즈 해랑을 여행하시면 승무원들의 아카펠라, 마술쇼, 가야금, 피아노연주 등 다양한 이벤트가 준비되어 있습니다.<br />
					</div>
						<!-- 갤러리 -->
					<div class="room-preview">
						<div class="room-preview-img">
							<ul id="image-gallery" class="gallery list-unstyled cS-hidden">
								<li data-thumb="${pageContext.request.contextPath}/resources/img/img_crew_t01.jpg"> 
									<img src="${pageContext.request.contextPath}/resources/img/img_crew_01.jpg" />
									 </li>
								<li data-thumb="${pageContext.request.contextPath}/resources/img/img_crew_t02.jpg"> 
									<img src="${pageContext.request.contextPath}/resources/img/img_crew_02.jpg" />
									 </li>
								<li data-thumb="${pageContext.request.contextPath}/resources/img/img_crew_t03.jpg"> 
									<img src="${pageContext.request.contextPath}/resources/img/img_crew_03.jpg" />
									 </li>
							</ul>
						</div>
					</div>
					<article>
						<div class="font-small">* 사진을 클릭하면 상세히 보실 수 있습니다.</div>
					</article>
					<article>
						<h3 class="article-tit">해랑 승무원 이벤트</h3>
						<p class="dec">
							고품격 레일크루즈 해랑을 여행하시면 승무원들의 아카펠라, 마술쇼, 가야금, 피아노연주 등 다양한 이벤트가 준비되어 있습니다.<br />
						</p>
					</article>	
				</div>
			</section>
		</div><!--content-->
	</div><!--container-->
</div>
</body>

<!-- Mirrored from www.railcruise.co.kr/website/rc_event.asp by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 03 Sep 2021 10:19:10 GMT -->
</html>
