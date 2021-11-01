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
		

		<div id="content">
			<section class="section-haerang1">
				<form action="${pageContext.request.contextPath}/rc_rev05" name="Frm" method = "post">
				
				<input type="hidden" name="id" value="${sessionScope.loginSession.id}">
				<input type="hidden" name="pName" value="${reservation.pName}">
				<input type="hidden" name="pDeparture" value="${reservation.pDeparture}">
				<input type="hidden" name="name" value="${reservation.name}">
				<input type="hidden" name="phone" value="${reservation.phone}">
				<input type="hidden" name="pdGrade" value="${reservation.pdGrade}">
				<input type="hidden" name="pdHigh" value="${reservation.pdHigh}">
				<input type="hidden" name="rRequest" value="${reservation.rRequest}">
				<input type="hidden" name="rSex" value="${reservation.rSex}">
				<input type="hidden" name="email" value="${reservation.email}">
				<input type="hidden" name="rPath" value="${reservation.rPath}">
				
					<div class="m_main">
						<h2 class="section-tit">RESERVATION INFO</h2>
						<p class="section-dec">
							레일크루즈 해랑의 예약 페이지 입니다.&nbsp; 정보를 확인해 주세요.<br>
						</p>
						<div class="reserv-section">
							
							<li class="reserv-sub-title">
								예약하기 <span class="sub-description">입력 정보를 확인해 주세요</span>
							</li>
							<div class="reserv-sub">
								<table class="reserv-sub-table">
									<tr >
										<th class="td-1">
											코스
										</th>
										<td class="td-2" colspan="3">
											${reservation.pName}
										</td>
									</tr>
									<tr >
										<th class="td-1">
											출발일자
										</th>
										<td class="td-2" colspan="3">
											${reservation.pDeparture}
										</td>
									</tr>
									<tr>
										<th class="td-1">
											성명
										</th>
										<td class="td-2" colspan="3">
											${reservation.name}
										</td>
									</tr>
									<tr>
										<th>
											연락처
										</th>
										<td colspan="3">
											${reservation.phone}
										</td>
										
									</tr>
									<tr>
										<th class="td-1">
											객실
										</th>
										<td colspan="3">
											${reservation.pdGrade}
										</td>
									</tr>
									<tr >
										<th class="td-1">
											가격
										</th>
										<td class="td-2" colspan="3">
											<f:formatNumber value="${reservation.pdHigh*10000}" pattern="#,###,###"/>원
										</td>
									</tr>
									<tr>
										<th>
											이메일
										</th>
										<td colspan="3">
											${reservation.email}
										</td>
									</tr>
									<tr>
										<th>
											요청<span class="m-block">사항</span>
										</th>
										<td colspan="3" class="user-memo-wrapper">
											${reservation.rRequest}
										</td>
									</tr>
									
									<tr>
										<th>
											유입경로
										</th>
										<td colspan="3">			
											${reservation.rPath}
										</td>
									</tr>
								</table>
								<div class="">
									<div class="">
										* 결제 방법 "예약 후 홈페이지 메인에서 예약확인 선택"<br />
										1. 온라인 송금 : 너희은행 1001-101-100001 아이티윌관광개발㈜<br />
										2. 카드결제 : 공인인증서 발급 후 현재 페이지에서 바로 결제
									</div>
								</div>
								<div style="text-align:center;" class="img-btn-link">
										<a href="javascript:history.back();"><img src="${pageContext.request.contextPath}/resources/img/btn_pre.jpg"></a>
										<!-- <a href="/rc_rev04" onclick="return false;"><img src="${pageContext.request.contextPath}/resources/img/btn_reservation_blue.jpg"></a> -->
										<input type="image" src="${pageContext.request.contextPath}/resources/img/btn_reservation_blue.jpg" onclick="reservate()">
								</div>
							</div>
						</div>
					</div>
				</form>
			</section>


			<!--section class="section-haerang2">
				<div class="m_main">
					<ul class="ft">
						<li>
							<a href="">예약 확인</a>
						</li>
						<li>
							<a href="">승무원 이벤트</a>
						</li>
						<li>
							<a href="">해랑 홍보관</a>
						</li>
						<li>
							<a href="">해랑 영상소개</a>
						</li>
					</ul>
				</div>
			</section-->
		</div><!--content-->
	</div><!--container-->
</div>
</body>
<script type="text/javascript">
function reservate() {
	if(confirm("예약 하시겠습니까?")) {
		Frm.submit();
	}
}
</script>

<!-- Mirrored from www.railcruise.co.kr/website/rc_rev03.asp by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 03 Sep 2021 10:25:12 GMT -->
</html>
