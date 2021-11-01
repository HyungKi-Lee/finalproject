<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <!DOCTYPE html>
<html lang="ko">

<!-- Mirrored from www.railcruise.co.kr/website/rc_course_info.asp by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 03 Sep 2021 09:48:08 GMT -->
<head>
	<meta charset="UTF-8">
	<title> 고품격 기차여행의 새로운 감동 – 레일크루즈 해랑 </title>
	<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta property="og:title" content="" />
	<meta property="og:description" content="" />
	<meta property="og:url" content="" />
	<meta property="og:type" content="article" />
	<meta property="og:site_name" content="" />

	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" type="text/css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style2.css" type="text/css" />
	
	<script src="${pageContext.request.contextPath}/resources/lib/jquery-1.11.2.min.js"></script>
	<!--[if lt IE 9]><script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script><![endif]-->
	<!--[if lt IE 9]><script src="http://ie7-js.googlecode.com/svn/version/2.1(beta4)/IE9.js"></script><![endif]-->
	<script src="${pageContext.request.contextPath}/resources/js/menu_current.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/common.js"></script>
<%-- 	<script src="${pageContext.request.contextPath}/resources/lib/jquery-ui-1.12.1/jquery-ui.min.html"></script> --%>
	<script src="${pageContext.request.contextPath}/resources/js/tab-loader.js"></script>

</head>
<body>
<div id="wrap" class="page-introduce">
	<!-- skipNavi -->
	<ul id="skipNavi">
		<li><a href="#container" >본문바로가기</a></li>
	</ul>
	<!-- //skipNavi -->
	

	<!-- import 「top menu」 here -->
	
	<script>
	<!--
		function site_change(value){
			//alert(value);
			
			if (value == "KOR"){
				location.href = "infault.html";
			}
			else if (value == "USA"){
				location.href = "../en/infault.html";
			}
		}
	//-->
	</script>

	<script src="${pageContext.request.contextPath}/resources/js/menu_display.js"></script>


    <!-- container -->
    <div id="container">
		

		<!-- ################# 코스안내 내용 시작  ###########################-->

		<div id="content">
			<section class="section-rourneys">
				<div class="m_main">
					<h2 class="section-tit t2">코스안내<small>Haerang Journeys</small></h2>
					<ul class="tab-wrap three_blocks"> <!-- 기본버튼5개 버튼이 4개면 class에  추가-->
						<li>
							<a href="javascript:void(0);" id="cos_korea">
								<strong>전국일주</strong>
								<small>2박3일</small>
							</a>
						</li>
						<li>
							<a href="javascript:void(0);" id="cos_east">
								<strong>동부권</strong>
								<small>1박2일</small>
							</a>
						</li>
						<li>
							<a href="javascript:void(0);" id="cos_west">
								<strong>서부권</strong>
								<small>1박2일</small>
							</a>
						</li>
					</ul>
					<hr />
				
				</div><!-- m_main -->
				
				
				<!-- ####################################################### -->
				<!-- ################## 전국일주 2박3일 #########################-->
				<!-- ####################################################### -->
                <div class="tab-con">
					<div class="img_st">
                          
						<div class="bg-wrap"> 
							<ul>
	                              <li><img src="${pageContext.request.contextPath}/resources/img/whole_9.jpg" alt="전국일주" /></li>   <!--  whole_1 9월 이후 파일명 변경/모바일동일  -->
	                              <!-- <li><a href="${pageContext.request.contextPath}/resources/schedule/GrandTour3Days.pdf"><img src="${pageContext.request.contextPath}/resources/img/whole_2.jpg" alt="전국일주" /></a></li> -->
	                              <li><img src="${pageContext.request.contextPath}/resources/img/whole_3.jpg" alt="전국일주" /></li>
	                        </ul>
	                 	</div>
	                          
<!-- 			            <div class="bg-wrap_m"> -->
<!-- 	                    	<ul> -->
<%-- 	                              <li><img src="${pageContext.request.contextPath}/resources/img/m_whole_9.jpg" alt="전국일주 모바일" /></li> --%>
<%-- 	                              <li><a href="${pageContext.request.contextPath}/resources/schedule/GrandTour3Days.pdf"><img src="${pageContext.request.contextPath}/resources/img/m_whole_2.jpg" alt="전국일주 모바일" /></a></li> --%>
<%-- 	                              <li><img src="${pageContext.request.contextPath}/resources/img/m_whole_3.jpg" alt="전국일주 모바일" /></li> --%>
<!-- 	                    	</ul> -->
<!--                         </div>	 -->

                        <div class="btn-wrap">
              				<a href="${pageContext.request.contextPath}/rc_rev01" class="btn btn-reserve">예약하기</a>
            			</div>   	   
					</div>	
				</div>

				<!-- ####################################################### -->
				<!-- ################## 동부권 1박 2일 #########################-->
				<!-- ####################################################### -->
				
                <div class="tab-con">
					<div class="img_st">
                          
						<div class="bg-wrap"> 
							<ul>
	                              <li><img src="${pageContext.request.contextPath}/resources/img/eastbloc_1.jpg" alt="동부권 1박 2일" /></li>
	                              <!-- <li><a href="${pageContext.request.contextPath}/resources/schedule/Southeast2Days.pdf"><img src="${pageContext.request.contextPath}/resources/img/eastbloc_2.jpg" alt="동부권 1박 2일" /></a></li> -->
	                              <li><img src="${pageContext.request.contextPath}/resources/img/eastbloc_3.jpg" alt="동부권 1박 2일" /></li>
	                       	</ul>
	                    </div>
	                          
<!-- 			            <div class="bg-wrap_m"> -->
<!-- 	                    	<ul> -->
<%-- 	                              <li><img src="${pageContext.request.contextPath}/resources/img/m_eastbloc_1.jpg" alt="동부권 1박 2일 모바일" /></li> --%>
<%-- 	                              <li><a href="${pageContext.request.contextPath}/resources/schedule/Southeast2Days.pdf"><img src="${pageContext.request.contextPath}/resources/img/m_eastbloc_2.jpg" alt="동부권 1박 2일 모바일" /></a></li> --%>
<%-- 	                              <li><img src="${pageContext.request.contextPath}/resources/img/m_eastbloc_3.jpg" alt="동부권 1박 2일 모바일" /></li> --%>
<!-- 	                   		</ul> -->
<!-- 	                    </div>	 -->
	
	                    <div class="btn-wrap">
	              			<a href="${pageContext.request.contextPath}/rc_rev01" class="btn btn-reserve">예약하기</a>
	           			</div>   	   
					</div>	
				</div>

				<!-- ####################################################### -->
				<!-- ################## 서부권 1박 2일 #########################-->
				<!-- ####################################################### -->
  
				<div class="tab-con">
					<div class="img_st">
                          
						<div class="bg-wrap"> 
							<ul>
                                <li><img src="${pageContext.request.contextPath}/resources/img/westbloc_1.jpg" alt="서부권 1박 2일" /></li>
                                <!-- <li><a href="${pageContext.request.contextPath}/resources/schedule/Southwest2Days.pdf"><img src="${pageContext.request.contextPath}/resources/img/westbloc_2.jpg" alt="서부권 1박 2일" /></a></li> -->
                                <li><img src="${pageContext.request.contextPath}/resources/img/westbloc_3.jpg" alt="서부권 1박 2일" /></li>
                               </ul>
                           </div>
                           
<!-- 			            <div class="bg-wrap_m"> -->
<!--                                <ul> -->
<%--                                 <li><img src="${pageContext.request.contextPath}/resources/img/m_westbloc_1.jpg" alt="서부권 1박 2일 모바일" /></li> --%>
<%--                                 <li><a href="${pageContext.request.contextPath}/resources/schedule/Southwest2Days.pdf"><img src="${pageContext.request.contextPath}/resources/img/m_westbloc_2.jpg" alt="서부권 1박 2일 모바일" /></a></li> --%>
<%--                                 <li><img src="${pageContext.request.contextPath}/resources/img/m_westbloc_3.jpg" alt="서부권 1박 2일 모바일" /></li> --%>
<!--                                </ul> -->
<!--                            </div>  -->
                                       
                           <div class="btn-wrap">
                				 <a href="${pageContext.request.contextPath}/rc_rev01" class="btn btn-reserve">예약하기</a>
             				 </div>  
            				      
					</div>	
				</div>
			</section>
		</div><!-- content -->

		<!-- ################# 코스안내 내용 종료  ###########################-->
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

<!-- Mirrored from www.railcruise.co.kr/website/rc_course_info.asp by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 03 Sep 2021 09:48:08 GMT -->
</html>
