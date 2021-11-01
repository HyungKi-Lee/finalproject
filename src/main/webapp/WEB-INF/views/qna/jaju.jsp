<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#content {
	
	font-size: 15px;
}


</style>
</head>
<body>
	<div id="container">
		<div class="keyvisual">
			<div class="bg-wrap">
				<img src="${pageContext.request.contextPath}/resources/img/key1.png" alt="해랑이미지" />
			</div>

		</div>
		<div id="content">
			<section class="section-haerang1">
				<form name="FRM_FAQ" method="post">
					<div class="m_main">
						<h2 class="section-tit align-left">
							자주묻는질문 <span class="section-tit-small">FAQ</span>
						</h2>
						<p class="section-dec align-left font-common">레일크루즈 해랑 여행에 관해
							문의하시기 전에 먼저 읽어보세요.</p>
						<div class="community_head">
							<img src="${pageContext.request.contextPath}/resources/img/img_l09.jpg" alt="해랑이미지2" />
						</div>
						<div class="reserv-section">
							<div class="reserv-sub">
								<!-- board 시작 -->
								<!-- 게시판 위쪽 (최신순/오래된순/검색)-->

								<!-- 게시판 -->

								<table class="board-faq-table">
									<caption style="font-size: 35px; margin-top: 30px; margin-bottom: 30px" ><strong>자주묻는질문 FAQ</strong></caption>
									<!-- 글 -->

									<tr class="faq-element active">

										<td class="td02"><b>Q. 해랑열차는 연령별 할인이 있나요?</b> <!--a href="javascript:void(0);" class="faq-link" >해랑열차는 연령별 할인이 있나요?</a-->
											<div class="faq-content">A. 해랑열차는 객실당으로 판매가 되며
												장애,경노,어린이 요금이 따로 없습니다. 48개월 미만 유아동반은 무임입니다.</div></td>
									</tr>
								
									<tr class="faq-element active">

										<td class="td02"><b>Q. 2인기준의 디럭스룸 또는 스위트룸에 혼자 여행할 경우
												요금은 어떻게 되나요?</b> <!--a href="javascript:void(0);" class="faq-link" >2인기준의 디럭스룸 또는 스위트룸에 혼자 여행할 경우 요금은 어떻게 되나요?</a-->
											<div class="faq-content">A. 2인실 객실(스위트, 디럭스)에 1인 이용 시
												10% 할인, 3~4인실 객실(패밀리, 스탠다드)에 2인 이용 시 5% 할인이 적용됩니다.</div></td>
									</tr>

									<tr class="faq-element active">

										<td class="td02"><b>Q. 해랑열차는 서울역에서만 출발 하나요?</b> <!--a href="javascript:void(0);" class="faq-link" >해랑열차는 서울역에서만 출발 하나요?</a-->
											<div class="faq-content">A. 현재 해랑열차는 서울 출발을 기준으로 하나,
												지방고객님을 배려하여 수원,서대전,대전 등 큰 역에서 승차가 가능하며 미리 해랑팀으로 말씀해주시면 개별 탑승
												안내해드립니다. (이외의 다른역들은 열차 사정을 고려하여 승/하차 여부를 재확인 하여야 합니다.)</div></td>
									</tr>

									<tr class="faq-element active">

										<td class="td02"><b>Q. 해랑열차의 티켓은 없나요?</b> <!--a href="javascript:void(0);" class="faq-link" >해랑열차의 티켓은 없나요?</a-->
											<div class="faq-content">A. 여행 당일 집결지인 서울역 대합실 3층
												빈스엔베리즈 커피숍에서 해랑승무원이 고객님의 예약정보를 확인한 후 해랑 카드키와 일정표가 배부됩니다.</div></td>
									</tr>

									<tr class="faq-element active">

										<td class="td02"><b>Q. 해랑의 상품가 구성은 어떻게 되나요?</b> <!--a href="javascript:void(0);" class="faq-link" >해랑의 상품가 구성은 어떻게 되나요?</a-->
											<div class="faq-content">A. 철도 운임, 숙박 및 식사요금, 안내자 경비,
												입장료, 이벤트, 여행보험료 등 제반비용 일체가 포함된 금액으로 추가경비가 발생하지 않습니다.</div></td>
									</tr>

									<tr class="faq-element active">

										<td class="td02"><b>Q. 해랑열차 내 노트북 사용이 가능한가요?</b> <!--a href="javascript:void(0);" class="faq-link" >해랑열차 내 노트북 사용이 가능한가요?</a-->
											<div class="faq-content">A. 4호차 카페칸에 오셔서 말씀해주시면 태블릿 PC를
												대여해줍니다. 개인용 노트북을 휴대하신분은 4호차 카페칸과 5호차 이벤트칸에서 와이파이 사용이 가능합니다.
											</div></td>
									</tr>

									<tr class="faq-element active">

										<td class="td02"><b>Q. 해랑열차 내 에서 식사가 제공되나요?</b> <!--a href="javascript:void(0);" class="faq-link" >해랑열차 내 에서 식사가 제공되나요?</a-->
											<div class="faq-content">A. 모두 관광지 특산식운영 식당 외부식입니다. 열차
												내에서는 간단한 다과와 와인이 제공됩니다.</div></td>
									</tr>

									<tr class="faq-element active">

										<td class="td02"><b>Q. 해랑열차에서 식당칸에서 제공되는 서비스는 무엇인가요?</b>
											<!--a href="javascript:void(0);" class="faq-link" >해랑열차에서 식당칸에서 제공되는 서비스는 무엇인가요?</a-->
											<div class="faq-content">A. 스낵,티,음료,계절과일,맥주,와인 등 무상으로
												제공됩니다.</div></td>
									</tr>

									<tr class="faq-element active">

										<td class="td02"><b>Q. 2인 객실인 디럭스룸 과 스위트룸 차이점은 무엇인가요?</b>
											<!--a href="javascript:void(0);" class="faq-link" >2인 객실인 디럭스룸 과 스위트룸 차이점은 무엇인가요?</a-->
											<div class="faq-content">
												A. 두 객실의 차이점은 스위트룸에는 침대 외에 응접실과 개인 냉장고가 비치되어 있습니다. <br>디럭스룸과
												스위트룸 침대사이즈도 약간 차이가 있으나 그 외에는 모두 동일합니다.
											</div></td>
									</tr>

									<tr class="faq-element active">

										<td class="td02"><b>Q. 샤워/화장실에는 무엇이 있나요?</b> <!--a href="javascript:void(0);" class="faq-link" >샤워/화장실에는 무엇이 있나요?</a-->
											<div class="faq-content">A. 1회용
												세면도구(비누,치약,칫솔,샴푸,바디클렌져),수건,드라이기가 비치되어있습니다.</div></td>
									</tr>

									<tr class="faq-element active">

										<td class="td02"><b>Q. 여행시 필요 준비물은 무엇인가요?</b> <!--a href="javascript:void(0);" class="faq-link" >여행시 필요 준비물은 무엇인가요?</a-->
											<div class="faq-content">A. 별도의 요구하는 준비물은 따로 없으며 개인
												필요용품과 계절에 적합한 편한복장으로 준비하시면 됩니다.</div></td>
									</tr>
									
									<tr class="faq-element active">

										<td class="td02"><b>Q. 재 구매 시 할인 혜택이 있나요?</b> <!--a href="javascript:void(0);" class="faq-link" >재 구매 시 할인 혜택이 있나요?</a-->
											<div class="faq-content">A. 2~15회 이용 시 상품가의 10%, 15~20회
												이용 시 13%, 20회 이상은 15% 할인해드립니다.</div></td>
									</tr>

								</table>
								<!-- 페이징 -->


								<!-- board 끝 -->
							</div>

						</div>
					</div>
				</form>
			</section>

		</div>
		<!--content-->
	</div>
	<!--container-->
</body>
</html>