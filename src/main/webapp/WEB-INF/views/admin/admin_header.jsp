<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    	
<%-- 로그인 상태의 관리자만 접근 가능 --%>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/admin.css" type="text/css"/> 

<!-- header -->	
<header id="header">
		<div class="m_main">
			<div class="header-wrap">
				<div id="logo">
					<a href="${pageContext.request.contextPath}/home"><img src="<c:url value="/resources/img/logo2_tmp.jpg"/>"></a>
				</div>
				<ul class="top-nav">
					<!-- 로그아웃 아이콘 -->						
					<li>
						<a href="${pageContext.request.contextPath}/logout" class="btn-depth menu_first" style="margin-left: 50px;" >
						<img src="<c:url value="/resources/img/logout.svg"/>">						
						</a>							
					</li>
					<!-- 마이페이지 아이콘 -->
					<li>
						<a href="${pageContext.request.contextPath}/mypage/main" class="btn-depth menu_first" style="margin-left: 50px;">
						<img src="<c:url value="/resources/img/mypage.svg"/>">								
						</a>							
					</li>
					<!-- 홈 아이콘 -->
					<li>
						<a href="${pageContext.request.contextPath}/home" class="btn-depth menu_first" style="margin-left: 10px;">
						<img src="<c:url value="/resources/img/home.svg"/>">								
						</a>							
					</li>
				</ul>
				<nav class="gnb">
					<a href="javascript:openMenu();" class="btn-menu">
						<span class="bar"></span>
					</a>
					<div class="inner">
						<ul class="nav">
							<li>
								<a href="${pageContext.request.contextPath}/admin/rsvnList" class="btn-depth menu_first">예약관리</a>	
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/admin/usersList" class="btn-depth menu_first">회원관리</a>						
							</li>
							<%-- <li>
								<a href="" class="btn-depth menu_first">게시판관리</a>
   								<ul class="row-depth foo_style" id="menu_style05">
									<li><a href="${pageContext.request.contextPath}/admin/noticeList">공지사항</a></li>							
									<li><a href="${pageContext.request.contextPath}/admin/qnaList">Q&A </a></li>                   
		                            <li><a href="${pageContext.request.contextPath}/admin/reviewList">이용후기</a></li>
								</ul>
							</li> --%>
							<li>
								<a href="${pageContext.request.contextPath}/admin/productList" class="btn-depth menu_first">상품관리</a>
							</li>
						</ul>
					</div>
				</nav>
			</div>
		</div>
	</header>