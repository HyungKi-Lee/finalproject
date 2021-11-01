<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<header id="header">
		<div class="m_main">
			<div class="header-wrap">
				<div id="logo">
					<a href="${pageContext.request.contextPath}/home"><img src="${pageContext.request.contextPath}/resources/img/logo2_tmp.jpg"/></a>
				</div>
				<ul class="top-nav">	
						<c:choose>	
							<c:when test="${loginSession.status==1}">
								<!-- 로그아웃 아이콘 -->
								<li>
									<a href="${pageContext.request.contextPath}/logout" class="btn-depth menu_first" style="margin-left: 50px;" >
									<img src="${pageContext.request.contextPath}/resources/img/logout.svg"/>						
									</a>							
								</li>
								<!-- 마이페이지 아이콘 -->
								<li>
									<a href="${pageContext.request.contextPath}/mypage/main" class="btn-depth menu_first"  style="margin-left: 10px;">
									<img src="${pageContext.request.contextPath}/resources/img/mypage.svg"/>							
									</a>							
								</li>
							</c:when>
							<c:when test="${loginSession.status==9}">
								<!-- 로그아웃 아이콘 -->
								<li>
									<a href="${pageContext.request.contextPath}/logout" class="btn-depth menu_first" style="margin-left: 50px;" >
									<img src="${pageContext.request.contextPath}/resources/img/logout.svg"/>						
									</a>							
								</li>
								<!-- 마이페이지 아이콘 -->
								<li>
									<a href="${pageContext.request.contextPath}/mypage/main" class="btn-depth menu_first"  style="margin-left: 50px;">
									<img src="${pageContext.request.contextPath}/resources/img/mypage.svg"/>							
									</a>							
								</li>
								<!-- 관리자 아이콘 -->
								<li>
									<a href="${pageContext.request.contextPath}/admin" class="btn-depth menu_first" style="margin-left: 10px;">
									<img src="${pageContext.request.contextPath}/resources/img/admin.svg"/>								
									</a>							
								</li>
							</c:when>
							<c:otherwise>
							<!-- 로그인 아이콘 -->					
							<li>
								<a href="${pageContext.request.contextPath}/login" class="btn-depth menu_first" style="margin-left: 50px;" >
								<img src="${pageContext.request.contextPath}/resources/img/login_black_24dp.svg"/>						
								</a>							
							</li>
							<!-- 회원가입 아이콘 -->
							<li>
								<a href="${pageContext.request.contextPath}/join_agree" class="btn-depth menu_first"  style="margin-left: 10px;">
								<img src="${pageContext.request.contextPath}/resources/img/person_add_alt_1_black_24dp.svg"/>							
								</a>							
							</li>
							</c:otherwise>
						</c:choose>
				</ul>
				<nav class="gnb">
					<a href="javascript:openMenu();" class="btn-menu">
						<span class="bar"></span>
					</a>
					<div class="inner">
						<ul class="nav">
							<li>
								<a href="" class="btn-depth menu_first">해랑소개</a>								
								<ul class="row-depth foo_style" id="menu_style01">
									<li><a href="${pageContext.request.contextPath}/rc_info_ci">해랑 BI</a></li>
									<li><a href="${pageContext.request.contextPath}/rc_history">해랑 HISTORY</a></li>
									<li><a href="${pageContext.request.contextPath}/media_notice">시설 안내</a></li>
								</ul>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/rc_course_special" class="btn-depth menu_first">해랑테마코스</a>
    							
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/rc_course" class="btn-depth menu_first">해랑정규코스</a>
							</li>
							
							<li>
								<a href="${pageContext.request.contextPath}/review_list" class="btn-depth menu_first">이용후기</a>
   	
							</li>
							<li>
								<a href="" class="btn-depth menu_first">고객센터</a>
   								<ul class="row-depth foo_style" id="menu_style05">
									<li><a href="${pageContext.request.contextPath}/notice_list">공지사항</a></li>
									<li><a href="${pageContext.request.contextPath}/jaju">자주묻는질문</a></li>									
									<li><a href="${pageContext.request.contextPath}/qna_list">Q&A </a></li>                   
		                            <li><a href="${pageContext.request.contextPath}/rc_price_raise">금액안내</a></li>
								</ul>
							</li>
							
							
						</ul>
					</div>
				</nav>
			</div>
		</div>
	</header>