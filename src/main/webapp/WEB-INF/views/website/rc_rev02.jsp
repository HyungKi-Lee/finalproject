<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<!-- Mirrored from www.railcruise.co.kr/website/rc_rev01.asp by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 03 Sep 2021 09:47:15 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
	<meta charset="UTF-8">
	<title> 고품격 기차여행의 새로운 감동 – 레일크루즈 해랑 </title>
	<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
	<meta name="description" content="고품격 기차여행의 새로운 감동 - 레일크루즈 해랑" />
	<meta name="keywords" content="레일크루즈 해랑" />
	<meta property="og:type" content="website"> 
	<meta property="og:description" content="고품격 기차여행의 새로운 감동 - 레일크루즈 해랑"> 
	<meta property="og:title" content="레일크루즈 해랑" />
	<meta property="og:site_name" content="레일크루즈 해랑" />

	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/lib/jquery-ui-1.12.1/jquery-ui.min-2.html" type="text/css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" type="text/css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/sub_calendar.css" type="text/css" />

	<script src="${pageContext.request.contextPath}/resources/lib/jquery-1.11.2.min.js"></script>
	<!--[if lt IE 9]><script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script><![endif]-->
	<!--[if lt IE 9]><script src="http://ie7-js.googlecode.com/svn/version/2.1(beta4)/IE9.js"></script><![endif]-->
	<script src="${pageContext.request.contextPath}/resources/js/menu_current.js"></script>
	<script src="${pageContext.request.contextPath}/resources/lib/jquery-ui-1.12.1/jquery-ui.min.html"></script>
	<script src="${pageContext.request.contextPath}/resources/js/common.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/sub_calendar.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/iframeheight.js"></script>
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<style type="text/css">
table {
	border: 1px solid black;
	border-collapse: collapse;
	width: 800px;
	padding: 0 auto;
	margin: 0 auto;
	margin-top: 15px;
	margin-bottom: 15px;
	text-align: center;
}

th, td{
	border: 1px solid black;
	
}

tr {
	height: 40px;
}

a:hover {
	font-size: 15px;
	font-weight: bold;
	color: red;
}

#searchDiv {
	width: 800px;
	margin: 0 auto;
}

#searchBtn {
	float: right;
	border: none;
	height: 30px;
	margin-left: 10px;
	background: #90703c;
	color: white;
}

#clearDate {
	float: left;
	border: none;
	height: 30px;
	margin-left: 10px;
	background: #90703c;
	color: white;
}

#search {
	float:left;
	width: 200px;
	height: 30px;
}



#searchBtn:hover {
	background: #2a303b;
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
	

	<!-- import 「top menu」 here -->	<script src="${pageContext.request.contextPath}/resources/js/menu_display.js"></script>

    <!-- container -->
    <div id="container">
		<div class="keyvisual">
			<div class="bg-wrap"><img src="${pageContext.request.contextPath}/resources/img/sub_autumn.jpg" alt="해랑이미지" /></div>
			
		</div>
		<div id="content">
			<section class="section-haerang1">
				<div class="m_main">
					<h2 class="section-tit">JOURNEY DATES</h2>
					<p class="section-dec">
						레일크루즈 해랑의 전체 스케줄 입니다. 일정을 확인 하시고 여행 계획을 세워 보세요<br/>
						당신의 여행의 품격을 높이는 해랑 열차
					</p>
					<p class="section_info">(2021년 12월까지 예약가능합니다.)</p>
					
					
				</div>
				
				<form name="Frm" method="post">
				<input type="hidden" name="hd_day" value="">
				<input type="hidden" name="data">
				</form>				

				
				<form>
					<table>
						<tr>
							<th>출발일자</th>
							<th>코스이름</th>
							<th>상세페이지 보기</th>
						</tr>
						
						
						<c:forEach items="${productList}" var="productList">
							<tr>
								<td><a href="${pageContext.request.contextPath}/rc_rev03?pDeparture=${productList.pDeparture}&pName=${productList.pName}&pNo=${productList.pNo}">${productList.pDeparture}</a></td>
								<td>${productList.pName }</td>
								<td><a href="${pageContext.request.contextPath}/${productList.pUrl}">상세페이지로 이동</a></td>							
							</tr>
						</c:forEach>	
						 	
						 
					</table>
				</form>
				<br><br>
				
				<!-- 페이징 블럭 배치 -->
				<div align="center" style="font-size: 15px; font-weight:bold; letter-spacing: 5px;">
					<!-- < -->
					<c:choose>
						<c:when test="${pager.startPage > pager.blockSize}">
							<a href="${pageContext.request.contextPath}/rc_rev02?pageNum=${pager.startPage-pager.blockSize}&search=${search}">&lt;</a>
						</c:when>
					</c:choose>
					
					<!-- 블럭 -->
					<c:forEach begin="${pager.startPage }" end="${pager.endPage }" var="page">
						<c:choose>
							<c:when test="${page == pager.pageNum }">
								${page}						
							</c:when>
							<c:otherwise>
								<a href="${pageContext.request.contextPath}/rc_rev02?pageNum=${page}&search=${search}">${page}</a>							
							</c:otherwise>
						</c:choose>
					</c:forEach>
					
					<!-- > -->
					<c:choose>
						<c:when test="${pager.endPage != pager.totalPage}">
							<a href="${pageContext.request.contextPath}/rc_rev02?pageNum=${pager.startPage+pager.blockSize}&search=${search}">&gt;</a>
						</c:when>
					</c:choose>
				</div>
				<!-- 페이징 블럭 끝 -->
				
				<br><br>
				
				<!-- 검색 : 선택한 날짜 이후의 코스 -->
				<div id="searchDiv">
					<form action="${pageContext.request.contextPath}/rc_rev02?pageNum=${pager.pageNum}&search=${search}" method="get">
						<div>
							<span><button type="button" id="clearDate">삭제</button></span>
							<span><input type="text" readonly="readonly" id="search" name="search"></span>	
							<span><button type="submit" id="searchBtn" >검색</button></span>
						</div>
					</form>
				</div>
				<!-- 검색 끝 -->
				<br><br>
				
				<div class="journey_info">
				<span class="info_title">날짜 선택시 해당일자 이후의 상품 검색이 가능 합니다</span>
				<p class="info_cotent">
				상기 일정은 사정에 따라 변경될 수있습니다. 자세한 사항은 전화로 문의하여주시기 바랍니다.<br/>
				전화문의 : 1544-1111    운영시간 : 평일 09:00 ~18:00 (공휴일/주말 휴무)  </p>
				</div>
			</section>
         	<!--section class="section-haerang2">
				<div class="m_main">
					<h2 class="section-tit">LUXURY TRAIN TRAVEL HAERANG</h2>
					<p class="section-dec">
						레일크루즈 해랑 RAILCRUISE HAERANG 땅 위의 유람선으로 바다 위의 고급스러운 유람선을<br />
						철도와 접목한 새롭고 유일한 호텔식 관광열차를 의미 합니다
					</p>

					<ul class="ft">
						<li>
							<a href="../website/rev_identify01.asp">예약 확인</a>
						</li>
						<li>
							<a href="../website/rc_event.asp">승무원 이벤트</a>
						</li>
						<li>
							<a href="../website/additional_facility_info.asp">해랑 홍보관</a>
						</li>
						<li>
							<a href="../website/rc_history.asp">해랑 영상소개</a>
						</li>
					</ul>
				</div>
			</section-->   
			   
		</div><!--content-->
	</div><!--container-->

</div>
</body>
<script type="text/javascript">
$(function () {
	$("#search").datepicker({
		dateFormat: 'yy.mm.dd' //Input Display Format 변경
            ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
            ,showMonthAfterYear:true //년도 먼저 나오고, 뒤에 월 표시
            ,changeYear: true //콤보박스에서 년 선택 가능
            ,changeMonth: true //콤보박스에서 월 선택 가능                
            ,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
            ,buttonImage: "${pageContext.request.contextPath}/resources/img/calendar_small.png" //버튼 이미지 경로
            ,buttonImageOnly: true //기본 버튼의 회색 부분을 없애고, 이미지만 보이게 함
            ,buttonText: "선택" //버튼에 마우스 갖다 댔을 때 표시되는 텍스트                
            ,yearSuffix: "년" //달력의 년도 부분 뒤에 붙는 텍스트
            ,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'] //달력의 월 부분 텍스트
            ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip 텍스트
            ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 부분 텍스트
            ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 부분 Tooltip 텍스트
            ,minDate: "0Y" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
            ,maxDate: "+1Y" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후) 
	});
})

$("#clearDate").click(function() {
	$("#search").val("");
});

</script>

<!-- Mirrored from www.railcruise.co.kr/website/rc_rev01.asp by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 03 Sep 2021 09:47:18 GMT -->
</html>
