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
	<SCRIPT LANGUAGE="JavaScript">
	<!--
		function goClick(){
	
			document.Frm.user_memo.style.backgroundImage=""
		}
		function goChange(){
			swt_amt  = document.Frm.sweet_room_amt.value;
			dlx_amt  = document.Frm.dlx_room_amt.value;
			fmy3_amt = document.Frm.fmy3_room_amt.value;
			fmy4_amt = document.Frm.fmy4_room_amt.value;
			std_amt  = document.Frm.std_room_amt.value;

			swt_cnt  = document.Frm.sel_swt_cnt.value;
			dlx_cnt  = document.Frm.sel_dlx_cnt.value;
			fmy3_cnt = document.Frm.sel_fmy3_cnt.value;
			fmy4_cnt = document.Frm.sel_fmy4_cnt.value;
			std_cnt  = document.Frm.sel_std_cnt.value;

			var FAMILY_NO = "";

			//alert(FAMILY_NO);
			//alert(fmy3_cnt);
			//alert(fmy4_cnt);
			var FMY3 = "0";
			//var FMY4 = "0";
			if (FAMILY_NO-FMY3 - fmy3_cnt <0){
				alert('패밀리 객실의 수량이 많습니다.');
				document.Frm.sel_fmy3_cnt.value = "0";
				//document.Frm.sel_fmy4_cnt.value = "0";
				document.Frm.total_count.value = 0;
				document.Frm.total_price.value = 0;
				document.Frm.hd_total_price.value = 0;
			}

			swt_tot	 = eval(swt_amt) * eval(swt_cnt);
			dlx_tot  = eval(dlx_amt) * eval(dlx_cnt);
			fmy3_tot = eval(fmy3_amt) * eval(fmy3_cnt);
			fmy4_tot = eval(fmy4_amt) * eval(fmy4_cnt);
			std_tot  = eval(std_amt) * eval(std_cnt);

			//최대 인원수대로 일행자 넣기
			swt_max_cnt	 = 2 * eval(swt_cnt);
			dlx_max_cnt  = 2 * eval(dlx_cnt);
			fmy3_max_cnt = 3 * eval(fmy3_cnt);
			fmy4_max_cnt = 4 * eval(fmy4_cnt);
			std_max_cnt  = 4 * eval(std_cnt);

			tot_amt = eval(swt_tot) + eval(dlx_tot) + eval(fmy3_tot)  + eval(fmy4_tot) + eval(std_tot); //금액
			tot_max_cnt = eval(swt_max_cnt) + eval(dlx_max_cnt) + eval(fmy3_max_cnt)  + eval(fmy4_max_cnt)  + eval(std_max_cnt); //최대인원수

			document.Frm.total_count.value = eval(swt_cnt) + eval(dlx_cnt) + eval(fmy3_cnt) + eval(fmy4_cnt) + eval(std_cnt);
			document.Frm.total_price.value = setComma(tot_amt);
			document.Frm.hd_total_price.value = tot_amt;

			document.Frm.max_cnt.value = tot_max_cnt;
		}
		function setComma (number) {
			// 정규표현식 : (+- 존재하거나 존재 안함, 숫자가 1개 이상), (숫자가 3개씩 반복)
			var reg = /(^[+-]?\d+)(\d{3})/;

			// 스트링변환
			number += '';
			while (reg.test(number)) {
				// replace 정규표현식으로 3자리씩 콤마 처리
				number = number.replace(reg,'$1'+','+'$2');
			}

			return number;
		}
		function goSave(){


			var doc = document.Frm;
			//상품 선택 여부
			if (doc.total_price.value=="" || doc.total_price.value=="0"){
				alert("상품을 선택해 주시기 바랍니다.");
				return;
			}

			//개인정보 입력여부
			if (doc.user_name.value==""){ //성명
				alert("예약자명을 입력해 주시기 바랍니다.");
				doc.user_name.focus();
				return;
			}
			/*

			if (doc.user_sex.value==""){ //성별
				alert("예약자 성별을 선택해 주시기 바랍니다.");
				doc.user_sex.focus();
				return;
			}

			if (doc.user_local.value==""){ //지역
				alert("지역을 선택해 주시기 바랍니다.");
				doc.user_local.focus();
				return;
			}

			*/

			if (doc.phone_first.value==""){ //연락처1
				alert("예약자 연락처를 입력해 주시기 바랍니다.");
				doc.phone_first.focus();
				return;
			}
			if (doc.phone_second.value==""){ //연락처2
				alert("예약자 연락처를 입력해 주시기 바랍니다.");
				doc.phone_second.focus();
				return;
			}
			if (doc.phone_third.value==""){ //연락처3
				alert("예약자 연락처를 입력해 주시기 바랍니다.");
				doc.phone_third.focus();
				return;
			}


			//이메일형식 체크					
			
			if (doc.email_id.value != ""){ //이메일 아이디
				if(!emailcheck()) return;
				
			}
			if (doc.email_domain.value != ""){ //이메일 아이디
				if(!emailcheck()) return;
			}
			

			if (doc.STR_REV_ROUTE_CD.value==""){ //유입경로
				alert("유입경로를 선택해 주시기 바랍니다.");
				doc.STR_REV_ROUTE_CD.focus();
				return;
			}

			if (doc.STR_REV_ROUTE_CD.value=="09"){ //유입경로가 기타이면 기타문구 체크 
				if(doc.STR_REV_ROUTE_NM.value== "")
				alert("유입경로를 입력해 주시기 바랍니다.");
				doc.STR_REV_ROUTE_NM.focus();
				return;
			}


			/*
			if (doc.email_id.value==""){ //이메일 아이디
				alert("예약자 이메일을 입력해 주시기 바랍니다.");
				doc.email_id.focus();
				return;
			}
			if (doc.email_domain.value==""){ //이메일 아이디
				alert("예약자 이메일을 입력해 주시기 바랍니다.");
				doc.email_domain.focus();
				return;
			}
			*/
			/*
			for (i=1; i<4 ;i++ ){
				group_name = eval("document.Frm.group_name0"+i);
				group_year = eval("document.Frm.group_birth_year0"+i);
				group_month = eval("document.Frm.group_birth_month0"+i);
				group_day = eval("document.Frm.group_birth_date0"+i);
				group_sex = eval("document.Frm.group_sex0"+i);

				if (group_name.value != "" || group_year.value != "" || group_month.value != "" || group_day.value != "" || group_sex.value != ""){
					if (group_name.value==""){
						alert( i+"번째 일행자 성명을 입력해 주시기 바랍니다.");
						return;
					}
					if (group_year.value==""){
						alert( i+"번째 일행자 생년월일을 입력해 주시기 바랍니다.");
						return;
					}
					if (group_month.value==""){
						alert( i+"번째 일행자 생년월일을 입력해 주시기 바랍니다.");
						return;
					}
					if (group_day.value==""){
						alert( i+"번째 일행자 생년월일을 입력해 주시기 바랍니다.");
						return;
					}
					if (group_sex.value==""){
						alert( i+"번째 일행자 성별을 입력해 주시기 바랍니다.");
						return;
					}
				}
			}
			*/
			
			//user_memo //요청사항


			/*
			recommender_name //추천인
			recommender_phone_first //추천인 연락처1
			recommender_phone_second //추천인 연락처2
			recommender_phone_third //추천인 연락처3
			*/
			

			document.Frm.action = "rc_rev04.html";
			document.Frm.submit();
		}

	//이메일 아이디 체크 (정규식 특수문자 제거하기)
	function specialCharRemove(obj) {

		var val = obj.value;
		var pattern = /[^(가-힣ㄱ-ㅎㅏ-ㅣa-zA-Z0-9)]/gi;   // 특수문자 제거
		  
		//var pattern = /[^(0-9)]/gi;   // 숫자이외는 제거
		  
		if(pattern.test(val)){
			obj.value = val.replace(pattern,"");
		}
	}

	//이메일 도메인 체크 (정규식 특수문자 제거하기)
	function specialCharRemove2(obj) {

		var val = obj.value;

		var pattern = /[^(가-힣ㄱ-ㅎㅏ-ㅣa-zA-Z0-9|\.?)]/gi;   // 특수문자 제거

		if(pattern.test(val)){
			obj.value = val.replace(pattern,"");
		}


	}


 		function emailcheck(){

			//이메일 정규식

			var regExp = /[0-9a-zA-Z][_0-9a-zA-Z-]*@[_0-9a-zA-Z-]+(\.[_0-9a-zA-Z-]+){1,2}$/;

			var email_id = document.Frm.email_id.value;
			var email_domain = document.Frm.email_domain.value;
			var email = email_id + '@' + email_domain;

			if(email_id.length == 0){

				alert('이메일 계정을 입력해 주세요.');
				return false;

			}

			//이메일 형식에 맞지않으면

			if (!email.match(regExp)){

				alert('올바른 이메일 주소가 아닙니다.');
				document.Frm.email_id.focus();
				return false;
			}

			return true;
		}

		function fn_change_route(value){

			var frm = document.Frm;

			frm.STR_REV_ROUTE_NM.value = "";
			
			if (value == "09"){ //기타
				frm.STR_REV_ROUTE_NM.readOnly = false;
				frm.STR_REV_ROUTE_NM.type = "text";
			}
			else{
				frm.STR_REV_ROUTE_NM.readOnly = true;
				frm.STR_REV_ROUTE_NM.type = "hidden";
			}
		}

		 //일행추가
  		function add_mem(){
	

			stringtable = "";
			cnt = document.Frm.mem.value; //입력받은 인원수
			max_cnt = document.Frm.max_cnt.value; //선택한 객실의 최대 인원수

			if (Number(max_cnt) < Number(cnt)){
				alert("선택하신 객실 최대 인원수는 " + max_cnt + "명 입니다.");
				document.Frm.mem.value = max_cnt;
				cnt = max_cnt;
			}

			stringtable = stringtable + "<table class='reserv-sub-table user-table group-table'>";


			for(i=1; i<=cnt; i++){			
				
				stringtable = stringtable + "<tr>";
				stringtable = stringtable + "<td class='td-1'>"+i+"</td>";
				stringtable = stringtable + "<td class='td-2'><input type='text' name='group_name0"+i+"' id='group-01-name'/></td>"
				stringtable = stringtable + "<td  class='td-3'>";

				stringtable = stringtable + "<select name='group_birth_year0"+i+"' id='group-01-birth-year'><option value=''>년</option>";
				for(n=1930; n <= 2020; n++){
					stringtable = stringtable + "<option value='"+n+"'>"+n+"</option>";
				}
				stringtable = stringtable + "</select>&nbsp;";

				stringtable = stringtable + "<select name='group_birth_month0"+i+"' id='group-01-birth-month'><option value=''>월</option>";
				for(n=1; n <= 12; n++){
					stringtable = stringtable + "<option value='"+n+"'>"+n+"</option>";
				}
				stringtable = stringtable + "</select>&nbsp;";

				stringtable = stringtable + "<select name='group_birth_date0"+i+"' id='group-01-birth-date'><option value=''>일</option>";
				for(n=1; n <= 31; n++){
					stringtable = stringtable + "<option value='"+n+"'>"+n+"</option>";
				}
				stringtable = stringtable + "</select>&nbsp;";


				stringtable = stringtable + "<span class='m-block' style='margin-top:5px;'><select name='group_sex0"+i+"'>";
				stringtable = stringtable + "<option value=''>성별</option><option value='M'>남</option><option value='F'>여</option>";
				stringtable = stringtable + "</select></span>";
				stringtable = stringtable + "</td>";
				//stringtable = stringtable + "<td class='td-4'>";
				//stringtable = stringtable + "<select name='group_nation0"+i+"'><option value='1'>내국인</option><option value='0'>외국인</option></select>";
				//stringtable = stringtable + "</td>";
				stringtable = stringtable + "</tr>";				

			}

			stringtable = stringtable + "</table>";

			hope_mem.innerHTML = stringtable ;

		}

		//숫자만 입력받기
		function onlyNumber(e){

			var keyValue = event.keyCode; 
			if( ((keyValue >= 48) && (keyValue <= 57)) ) return true; 
			else return false;

		}




	//-->
	</SCRIPT>
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
	

	<!---------- import 「top menu」 here ----------->
	
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


    <!---------- container------------->
    <div id="container">
		<div class="keyvisual">
			<div class="bg-wrap"><img src="${pageContext.request.contextPath}/resources/img/key1.png" alt="해랑이미지" /></div>
		</div>
		

		<div id="content">
			<section class="section-haerang1">
				<form action="${pageContext.request.contextPath}/rc_rev04" name="Frm" method = "post">
				<input type="hidden" name="pNo" value="${product.pNo}">
				<input type="hidden" name="pName" value="${product.pName}">
				<input type="hidden" name="pDeparture" value="${product.pDeparture}">
				
					<div class="m_main">
						<h2 class="section-tit">JOURNEY DATES</h2>
						<p class="section-dec">
							레일크루즈 해랑의 전체 스케줄입니다. 일정을 확인 하시고 여행 계획을 세워 보세요.<br>
							당신의 여행의 품격을 높이는 해랑 열차
						</p>
						<div class="reserv-section">
							<li class="reserv-sub-title">
								 상품 예약하기
							</li>
							<div class="reserv-sub">
								<div class="reserv-sub-main-title" id="reservation-title">
									&nbsp;${product.pName}&nbsp;:&nbsp; ${product.pDeparture}&nbsp;출발
								</div>
							</div>
							
							<li class="reserv-sub-title">
								객실 예약 <span class="sub-description">객실 정보를 확인해 주세요</span>
							</li>
							<div class="reserv-sub">
								<table class="reserv-sub-table">
									<tr>
										<th style="width:25%">Room Type</th>
										<th style="width:27%">요금</th>
										<th style="width:25%">예약</th>
										<!--th style="width:15%">대기</th-->
										<!-- <th style="width:23%" class="last-col">객실선택</th> -->
									</tr>
									
									<c:forEach var="list" items="${productDetailList}">
										<tr>
											<td>${list.productDetail.pdGrade}</td>
											<td><f:formatNumber value="${list.productDetail.pdHigh*10000}" pattern="#,###,###"/>원</td>
											<c:choose>
												<c:when test="${list.productDetail.pdSeats>0}">
													<td>예약 가능 (${list.productDetail.pdSeats} 석)</td>
												</c:when>
												<c:otherwise>
													<td>예약 불가</td>
												</c:otherwise>
											</c:choose>
										</tr>
									</c:forEach>
								</table>
								<div class="reserv-sub-table-desc">
									<div>
										 패밀리룸은 3인 1실이 기본이며, 1명을 추가하여 4인이 이용하실 경우 추가비용이 발생합니다<br>
										&nbsp;&nbsp;※ 추가비용 : 1박2일 380,000, 2박3일 610,000원<br>
										&nbsp;&nbsp;(단, 성인 2명, 어린이 2명 기준이며 성인 4인의 패밀리객실 사용은 비좁을 수 있습니다.)<br>
										<span class="emphasis">* 디럭스 <b>예약마감</b>시 패밀리객실(2인 이용시)을 디럭스 요금으로 이용 하실 수 있습니다. 패밀리객실로 예약하신 후 하단의 고객 요청사항에 이용인원을 남겨주시기 바랍니다. </span><br>
										* 총 예약객실 수가 10실 미만일 경우 운행이 취소될 수 있습니다.<br>
 										<!--<span class="emphasis">* 상품 예약 완료 후 24시간 안에 10% 예약금 결제 부탁드립니다.</span><br /> -->
										<span class="emphasis">* 객실별 기준인원 초과 시 추가요금이 발생됩니다 (1인 기준/1박2일 45만원, 2박3일 70만원)</span>

										
									</div>
									<div class="table-desc-second">
										* 결제 방법 "예약 후 홈페이지 메인에서 예약확인 선택"<br>
										1. 온라인 송금 : 너희은행 1001-101-100001 아이티윌관광개발㈜<br>
										2. 카드결제 : 공인인증서 발급 후 현재 페이지에서 바로 결제
									</div>
								</div>
							</div>
							
							
							
							<li class="reserv-sub-title more-top-margin">
								 예약자 정보<span class="sub-description">정보를 입력해 주세요</span>
								 <span class="sub-description" style="color:red;">(*필수 입력)</span>
							</li>
							<div class="reserv-sub">
								<table class="reserv-sub-table user-table">
									<tr>
										<th class="td-1">
											<span style="color:red;">*</span> 성명
										</th>
										<td class="td-2">
											<input type="text" name="name" id="name"  maxlength="50" value="${sessionScope.loginSession.name }"/>
										</td>
										<th class="td-3">
											<!--span style="color:red;">*</span--> 성별
										</th>
										<td class="td-4">
											<select name="rSex">
												<option value="">선택</option>
												<option value="남">남</option>
												<option value="여">여</option>
											</select>
										</td>
									<tr>
									<tr>
										<th>
											<span style="color:red;">*</span> 연락처
										</th>
										<td>
											<input type="text" id="phone" name="phone" value="${sessionScope.loginSession.phone }">
										</td>
										
									<tr>
										<th class="td-1">
											<span style="color:red;">*</span> 객실
										</th>
										<td>
											<select name="pdGrade">
												<c:forEach var="list" items="${productDetailList }">
													<option value="${list.productDetail.pdGrade}">${list.productDetail.pdGrade} - ${list.productDetail.pdHigh}만원</option>
												</c:forEach>
											</select>
										</td>
									</tr>
									<tr>
										<th>
											이메일
										</th>
										<td colspan="3">
										<!-- onkeyup="specialCharRemove(this)"-->
											<input type="text" name="email" maxlength="40" value="${sessionScope.loginSession.email }"/>
											&nbsp;
											<!--select name="user-email-select" id="user-email-select">
												<option value="">직접입력</option>
												<option value="naver.com">naver.com</option>
											</select-->
										</td>
									</tr>
									<tr>
										<th>
											요청<span class="m-block">사항</span>
										</th>
										<td colspan="3" class="user-memo-wrapper">
											<textarea name="rRequest" style="width:100%; height:160px; scroll:auto; resize:none;" onclick="javascript:goClick();"></textarea>
										</td>
									</tr>
									
									<tr>
										<th>
											<span style="color:red;">*</span> 유입경로
										</th>
										<td colspan="3">			
											<select id="rPath" name="rPath" onchange="fn_change_route(this.value)">
												<option value="">선택</option>
												<option value="지인 및 가족 추천">지인 및 가족 추천</option>
												<option value="인터넷 검색">인터넷 검색</option>
												<option value="신문/잡지">신문/잡지</option>
												<option value="TV">TV</option>
												<option value="SNS 페이스북">SNS 페이스북</option>
												<option value="SNS 인스타그램">SNS 인스타그램</option>
												<option value="블로그">블로그</option>
												<option value="유튜브">유튜브</option>
												<option value="재구매">재구매</option>
												<option value="임직원">임직원</option>
												<option value="기타">기타</option>
											</select>&nbsp;
											<input type="hidden" size="80"  maxlength="100" name="STR_REV_ROUTE_NM" id="STR_REV_ROUTE_NM"/>
										</td>
									</tr>
								</table>
							</div>

							<span id="hope_mem"></span>



								<!--div class="btn-group">
									<button class="btn-group-save" name="btn-group-save">일행정보저장</button>
								</div-->
								
									<div style="text-align:center;" class="img-btn-link">
										<a href="javascript:history.back();"><img src="${pageContext.request.contextPath}/resources/img/btn_pre.jpg"></a>
										<!-- <a href="/rc_rev04" onclick="return false;"><img src="${pageContext.request.contextPath}/resources/img/btn_reservation_blue.jpg"></a> -->
										<input class="btn btn-danger" onclick="submitInfo()" type="button" value="" />
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
function submitInfo() {
	if($("#name").val() == '' || $("#name").val() == null ) {
		alert("이름을 입력해 주세요");
		return false;
	}
	
	if($("#phone").val() == '' || $("#phone").val() == null) {
		alert("전화번호를 입력해 주세요");
		return false;
	}
	
	if($("#rPath").val() == '' || $("#rPath").val() == null) {
		alert("유입경로를 선택해 주세요");
		return false;
	}
	
	Frm.submit();
}

</script>
<!-- Mirrored from www.railcruise.co.kr/website/rc_rev03.asp by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 03 Sep 2021 10:25:12 GMT -->
</html>
