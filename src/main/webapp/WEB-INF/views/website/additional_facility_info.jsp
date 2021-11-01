<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<!-- Mirrored from www.railcruise.co.kr/website/additional_facility_info.asp by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 03 Sep 2021 10:19:10 GMT -->
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
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style2.css" type="text/css" />
	
	<script src="${pageContext.request.contextPath}/resources/lib/jquery-1.11.2.min.js"></script>
	<!--[if lt IE 9]><script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script><![endif]-->
	<!--[if lt IE 9]><script src="http://ie7-js.googlecode.com/svn/version/2.1(beta4)/IE9.js"></script><![endif]-->
	<script src="${pageContext.request.contextPath}/resources/js/menu_current.js"></script>
	<script src="${pageContext.request.contextPath}/resources/lib/jquery-ui-1.12.1/jquery-ui.min.html"></script>
	<script src="${pageContext.request.contextPath}/resources/lib/thumb-slider/lightslider.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/common.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/tab-loader.js"></script>
	<script>
		var checkLoad = [false,false];
    	 $(document).ready(function() {
			var index = get_index();
			if(!is_available_index(index)){
				index = 0;
			}
			slide_ready(index+1);
		});
		
		function slide_ready(num){
			if(!checkLoad[num-1]){
				$('#image-gallery'+num).lightSlider({
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
						$('#image-gallery'+num).removeClass('cS-hidden');
					}  
				});
				checkLoad[num-1] = true;
			}
		}
    </script>
</head>
<body>
<div id="wrap" class="page-introduce">
	<!-- skipNavi -->
	<ul id="skipNavi">
		<li><a href="#container" >본문바로가기</a></li>
	</ul>
	<!-- //skipNavi -->
	

	<!---------- import 「top menu」 here ------------->
	<script src="${pageContext.request.contextPath}/resources/js/menu_display.js"></script>
	
    <!---------- container------------->
    <div id="container">
		<div class="keyvisual">
			<div class="bg-wrap"><img src="${pageContext.request.contextPath}/resources/img/key1.png" alt="해랑이미지" /></div>
			
			
		</div>
		<div id="content">
			<section class="section-rourneys">
				<div class="m_main">
					<h2 class="section-tit t2">부대시설<small>Additional Facilities</small></h2>
					<ul class="tab-wrap two-blocks">
						<li class="active">
							<a href="javascript:slide_ready(1);">
								<strong>썬라이즈</strong>
								<small>Sunrise</small>
							</a>
						</li>
						<li>
							<a href="javascript:slide_ready(2);">
								<strong>포시즌</strong>
								<small>Four Season</small>
							</a>
						</li>
					</ul>
					<hr />

					<div class="tab-con active">
						<p class="dec">창 밖의 풍경과 함께하는 해랑 썬라이즈(식당칸)</p>
						<!-- 갤러리 -->
						<div class="room-preview">
							<div class="room-preview-title">
								<span class="main-title">썬라이즈(식당칸)</span><span class="sub-title">Sunrise</span>
								<div class="clear-both"></div>
							</div>
							<div class="room-preview-img">
								<ul id="image-gallery1" class="gallery list-unstyled cS-hidden">
									<li data-thumb="${pageContext.request.contextPath}/resources/img/img_sunrise_t01.jpg"> 
										<img src="${pageContext.request.contextPath}/resources/img/img_sunrise_01.jpg" />
										 </li>
									<li data-thumb="${pageContext.request.contextPath}/resources/img/img_sunrise_t02.jpg"> 
										<img src="${pageContext.request.contextPath}/resources/img/img_sunrise_02.jpg" />
										 </li>
									<li data-thumb="${pageContext.request.contextPath}/resources/img/img_sunrise_t03.jpg"> 
										<img src="${pageContext.request.contextPath}/resources/img/img_sunrise_03.jpg" />
										 </li>
								</ul>
							</div>
						</div>
						
						<article>
							<h3 class="article-tit">INFORMATION</h3>
							<p class="dec">
								창 밖의 풍경과 함께하는 해랑 썬라이즈 (식당칸)
							</p>
						</article>

						<article>
							<h3 class="article-tit">썬라이즈 식당칸 서비스</h3>
								<p class="dec">
									프리미엄다과 및 음료 서비스<br />
									와인파티 무료 제공
								</p>
							
						</article>	
					</div>

					<div class="tab-con">
						<p class="dec">행복한 웃음소리가 끊이지 않는 공간 포시즌(라운지)</p>
						<!-- 갤러리 -->
						<div class="room-preview">
							<div class="room-preview-title">
								<span class="main-title">포시즌(라운지)</span><span class="sub-title">Four Season</span>
								<div class="clear-both"></div>
							</div>
							<div class="room-preview-img">
								<ul id="image-gallery2" class="gallery list-unstyled cS-hidden">
									<li data-thumb="${pageContext.request.contextPath}/resources/img/img_four_t01.jpg"> 
										<img src="${pageContext.request.contextPath}/resources/img/img_four_01.jpg" />
										 </li>
									<li data-thumb="${pageContext.request.contextPath}/resources/img/img_four_t02.jpg"> 
										<img src="${pageContext.request.contextPath}/resources/img/img_four_02.jpg" />
										 </li>
									<li data-thumb="${pageContext.request.contextPath}/resources/img/img_four_t03.jpg"> 
										<img src="${pageContext.request.contextPath}/resources/img/img_four_03.jpg" />
										 </li>
								</ul>
							</div>
						</div>
						
						<article>
							<h3 class="article-tit">INFORMATION</h3>
							<p class="dec">
								행복한 웃음소리가 끊이지 않는 공간 포시즌 라운지<br />
								양쪽 창을 통해 멋진 사계절을 볼 수 있는 전망칸
							</p>
						</article>

						<article>
							<h3 class="article-tit">포시즌 라운지 서비스</h3>
								<p class="dec">
									승무원 아카펠라 이벤트와 공연이 펼쳐지는 이벤트칸<br />
									다양한 잡지와 신문 구비<br />
									오락 편의 시설 제공 갤럭시 탭 대여 5대, 닌텐도 Wii<br />
									라이브 콘서트 및 생일 및 기념일 파티
								</p>
							
						</article>
					</div>
				</div>
			</section>
		</div><!--content-->
	</div><!--container-->
</div>
<script>
	$(function(){

        $(".tab-wrap > li").each(function(i){
            $(".tab-wrap > li").eq(i).find(">a").click(function(){
                $(".tab-wrap > li").removeClass("active");
                $(".tab-wrap > li").eq(i).addClass("active");
                $(".tab-con").removeClass("active");
                $(".tab-con").eq(i).addClass("active");
            })
        })
	})
</script>
</body>

<!-- Mirrored from www.railcruise.co.kr/website/additional_facility_info.asp by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 03 Sep 2021 10:19:10 GMT -->
</html>
