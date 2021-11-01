<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!-- import footer here -->	
<footer id="footer">
	<div class="foot1">
		<div class="m_main">
			<ul class="foot-ul">
				<li>
					<dl class="cs">
						<dt>
							<span>고객센터</span><strong class="tel">02-6255-8002</strong>
						</dt>
						<dd>								
							<p>평일 09:00~18:00</p>
							<p>토,일,공휴일 휴무</p>
							<p><a href="https://www.itwill.co.kr/"> admin@itwill.co.kr</a></p>
						</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>입금계좌안내</dt>
						<dd>
							<dl class="row-dl">
								<dt>너희은행</dt>
								<dd>1001-101-100001</dd>
							</dl>				
							<p>예금주 : 아이티윌관광개발</p>
						</dd>
					</dl>
				</li>
			</ul>

			<ul class="foot-ul">
				<li>
					<dl>
						<dt>고객안내</dt>
						<dd>
							<ul class="row-ul">								
								<li><a href="${pageContext.request.contextPath}/jaju">자주묻는 질문</a></li>								
								<li><a href="${pageContext.request.contextPath}/direction_info">오시는길</a></li>
							</ul>
						</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>이용정책</dt>
						<dd>
							<ul class="row-ul">
								<li><a href="${pageContext.request.contextPath}/rc_agreement">해랑여행약관</a></li>
								<li><a href="${pageContext.request.contextPath}/rc_agreement?2">이용약관</a></li>
								<li><a href="${pageContext.request.contextPath}/rc_agreement?3">이메일 무단수집 거부</a></li>
								<li><a href="http://www.korailtravel.com/web/accessTerms/personalDate.asp" target="_blank">
										<span style="color:#fff999"><b>개인정보처리방침</b></span>
									</a>
								</li>
							</ul>
						</dd>
					</dl>
				</li>
			</ul>
		</div>
	</div>
	
	<div class="foot2">
		<div class="m_main">
			<ul class="info">
				<li>상호명 : IMO관광개발㈜ |</li>
				<li>주소 : 서울특별시 강남구 테헤란로 124 4층 (역삼동, 삼원타워) </li>
				<li>사업자등록번호 : 101 10 10001 |</li>
				<li>대표번호 :  02-6255-8002</li>
				<li>팩스 : 02-569-8069</li>
				<li>통신판매신고 : 제 2021 서울 강남-00001호 |</li>
				<li>대표이사 : 김이박  |</li>
				<li>개인정보관리담당관 : 은천 |</li>
				<li>메일 : admin@itwill.co.kr</li>
			</ul>
			<p class="copy">
				<img src="<c:url value="${pageContext.request.contextPath}/resources/img/1logo_foot.jpg"/>" width="270" />
				<span>Copyright © 2021 IMO TOURISM DEVELOPMENT. All Rights Reserved.</span>
			</p>
		</div>
	</div>
</footer>