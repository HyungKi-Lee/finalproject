<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="${pageContext.request.contextPath}/resources/lib/slider/slider.js"></script>
<!-- container-->
<div id="container">      
	<!--레이어 팝업 Start//-->
	<div id="divpop" style="position: absolute; top: 1%; left: 50%; z-index: 2;">
	<div>
		<a href="http://www.itwill.xyz/imocake/home.jsp"><img src="${pageContext.request.contextPath}/resources/img/4OpenLayer.jpg" alt="2022해랑오픈" ></a>
		<div class="popup_bottom_wrap">
			<div class="popup_bottom_btn" onclick="selfClose('divpop');">오늘하루 보지않기</div>
			<div class="popup_bottom_btn" onclick="closeWin('divpop');">창닫기</div>
		</div>
	</div>
	</div>
	      
	<div id="divpop2">
	<div>
		<div>
			<div class="popup_bottom_btn" onclick="closeWin('divpop2');" style="margin-left: 105px; margin-bottom: 10px;"><img src="${pageContext.request.contextPath}/resources/img/Openlayer_close.png" alt="운행변동안내"></div>
			<img src="${pageContext.request.contextPath}/resources/img/1Openlayer_stoppage.png" alt="운행변동안내" >
		</div>
	</div>
	</div>          
	<!--레이어팝업END-->
	
	<!-- 슬라이더 start -->
	<div class="keyvisual">
		<div id="slider-container" style="height:auto; background:#fbf9f9;">
			<img src="${pageContext.request.contextPath}/resources/img/arrow_left.png" id="prev" alt="좌측이동">
			<ul id="slider">
	                       <!-- 메인 배너 순서 4 -->    
				<li class="slide">
					<img src="${pageContext.request.contextPath}/resources/img/keyvisual_05.jpg" alt="해랑소개이미지">
				</li>
	                       <!-- 메인 배너 순서 3 -->
				<li class="slide">
					<img src="${pageContext.request.contextPath}/resources/img/keyvisual_03.jpg" alt="해랑소개이미지">
				</li>
					<!-- 메인 배너 순서 2 --> 
				<li class="slide">
					<img src="${pageContext.request.contextPath}/resources/img/keyvisual_04.jpg" alt="해랑소개이미지">
				</li>                          
			</ul>
			<img src="${pageContext.request.contextPath}/resources/img/arrow_right.png" id="next" alt="우측이동">
		</div>
	</div>
	<!-- 슬라이더 end -->	
	
	<div id="content">
		<section class="section-haerang1">
			<div class="m_main">
				<h2 class="section-tit">RAILCRUISE HAERANG</h2>
				<p class="section-dec">
					레일크루즈 해랑 RAILCRUISE HAERANG은 국내 유일 땅 위를 달리는 유람선으로<br/> 바다 위의 고급스러운 유람선을<br/>
					철도와 접목한 호텔식 관광열차를 의미 합니다.<br/> 레일크루즈 해랑과 함께 전국의 명소와 산해진미를 즐겨보세요.
				</p>
			</div>
			<div id="slid-schedule" class="owl-carousel owl-theme">				
				<div class="item">
					<div class="img-wrap">
						<img src="${pageContext.request.contextPath}/resources/img/s1.png" alt="전국일주" />
						<span class="mark">
							<small>KOREA</small>
							<span class="mark_sub"><br>우수여행상품<br>선정</span>
						</span>
					</div>
					<div class="txt-wrap">
						<strong class="tit">전국일주 2박 3일</strong>
						<p class="ellip">전국 방방곡곡을 다니는 명품기차여행</p>
						<dl>
							<dt>출발일 :</dt>
							<dd>매주 화/금요일 출발</dd>
						</dl>
						<dl>
							<dt>상품가 :</dt>
							<dd><strong>1,220,000</strong>부터</dd>
							<dd>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(디럭스룸 1인 기준)</dd>
						</dl>
						<a href="${pageContext.request.contextPath}/rc_course?1" class="btn btn-plus">자세히보기</a>
					</div>
				</div>
	
				<div class="item">
					<div class="img-wrap">
						<img src="${pageContext.request.contextPath}/resources/img/s2.png" alt="동부권" />
						<span class="mark">
							<small>KOREA</small>
							<span class="mark_sub"><br>우수여행상품<br>선정</span>
						</span>
					</div>
					<div class="txt-wrap">
						<strong class="tit">동부권 1박 2일</strong>
						<p class="ellip">동남부권을 다니는 명품 기차여행</p>
						<dl>
							<dt>출발일 :</dt>
							<dd>격주 토요일 출발</dd>
						</dl>
						<dl>
							<dt>상품가 :</dt>
							<dd><strong>800,000</strong>부터</dd>
							<dd>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(디럭스룸 1인 기준)</dd>
						</dl>
						<a href="${pageContext.request.contextPath}/rc_course?2" class="btn btn-plus">자세히보기</a>
					</div>
				</div>
	
				<div class="item">
					<div class="img-wrap">
						<img src="${pageContext.request.contextPath}/resources/img/s3.png" alt="서부권
						" />
						<span class="mark">
							<small>KOREA</small>
							<span class="mark_sub"><br>우수여행상품<br>선정</span>
						</span>
					</div>
					<div class="txt-wrap">
						<strong class="tit">서부권 1박 2일</strong>
						<p class="ellip">서남부권을 다니는 명품 기차여행</p>
						<dl>
							<dt>출발일 :</dt>
							<dd>격주 토요일 출발</dd>
						</dl>
						<dl>
							<dt>상품가 :</dt>
							<dd><strong>800,000</strong>부터</dd>
							<dd>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(디럭스룸 1인 기준)</dd>
						</dl>
						<a href="${pageContext.request.contextPath}/rc_course?3" class="btn btn-plus">자세히보기</a>
					</div>
				</div>									
			</div>
			<div class="btn-wrap">
				<a href="${pageContext.request.contextPath}/rc_rev01"><img src="${pageContext.request.contextPath}/resources/img/btn_date.png" alt="전체일정" /></a>
				<a href="${pageContext.request.contextPath}/rc_course"><img src="${pageContext.request.contextPath}/resources/img/btn_course.jpg" alt="코스안내" /></a>
			</div>
		</section>
	
		<section class="section-haerang2">
			<div class="m_main">
				<h2 class="section-tit">LUXURY TRAIN TRAVEL HAERANG</h2>
				<p class="section-dec">
					기존의 예약 시스템을 개편하고  로그인, 회원가입, 관리자 페이지와<br/> 
					이용후기, Q&A, 공지사항 페이지를 추가 하여 새롭게 리뉴얼 하였습니다.<br/>
					
					
				</p>
			</div>
		</section>
	</div><!--content-->
</div><!--container-->