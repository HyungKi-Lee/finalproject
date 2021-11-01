<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style type="text/css">
#btn {
	text-align: right;
	margin-top: 20px;
}

.myboard {
	margin: 0 auto;
	width: 1050px;
	margin-bottom: 80px;
}

.titleArea {
	min-height: 30px;
	margin: 10px 0 20px;
}

.titleArea h2 {
	text-align: center;
	color: #2e2e2e;
	font-size: 30px;
	padding: 30px;
}

table {
	width: 1080px;
	border: 1px solid white;
	border-collapse: collapse;
}

th {
	padding: 11px 0 10px;
	border-left: 1px solid rgb(180, 152, 107);
	border-bottom: 1px solid #dfdfdf;
	color: #353535;
	vertical-align: middle;
	font-weight: normal;
	background: rgb(180, 152, 107);
	font-size: 16px;
}

tr {
	text-align: center;
}

tr:hover {
	background: #f0f2f2;
}

td {
	padding: 8px 10px 7px;
	border-top: 1px solid #dfdfdf;
	border-left: 1px solid white;
	color: #353535;
	vertical-align: middle;
	word-break: break-all;
	word-wrap: break-word;
	font-size: 14px;
}

.pagenum {
	display: inline-block;
	margin: 0 0 0 -1px;
	border: 1px solid #d7d5d5;
	font-size: 13px;
	color: #495164;
	vertical-align: top;
	width: 34px;
	padding: 8px 0;
	text-align: center;
	font-weight: 400;
}

.pagenum:hover {
	background: #f0f2f2;
}

.paging {
	margin: 0 auto;
	width: 1080px;
	font-size: 0px;
	text-align: center;
	margin-top: 20px;
}

.searchUser {
	height: 45px;
	float: right;
}

select {
	height: 30px;
	width: 80px;
	color: #353535;
	border: 1px solid #d5d5d5;
	font-size: 12px;
}

input[type=text] {
	height: 30px;
	width: 230px;
	color: #353535;
	border: 1px solid #d5d5d5;
	font-size: 12px;
}

button {
	border: 1px solid #d5d5d5;
	height: 33px;
	vertical-align: middle;
	width: 70px;
	color: #353535;
	background: white;
	cursor: pointer;
	font-size: 12px;
}

button:hover {
	background: #f0f2f2;
}
</style>
</head>
<body>
	<div class="myboard">
		<div class="titleArea">
			<h2>
				<font color="333333">이용후기</font>
			</h2>

		</div>




<div class="searchUser">
			<form action=""
				method="post">
				<select name="search">
					<option value="n"<c:out value="${scri.searchType == null ? 'selected' : ''}"/>>-----</option>
      				<option value="rtitle"<c:out value="${scri.searchType eq 'rtitle' ? 'selected' : ''}"/>>제목</option>
				    <option value="rwriter"<c:out value="${scri.searchType eq 'rwriter' ? 'selected' : ''}"/>>글쓴이</option>
				    <option value="rtitlecontent"<c:out value="${scri.searchType eq 'rtitlecontent' ? 'selected' : ''}"/>>제목+내용</option>
				</select> 
				<input type="text" name="keyword" id="keywordInput" value="${scri.keyword}"/>
				<button id="searchBtn" type="button">검색</button>
			</form>

		</div>
		<div>

    <script>
      $(function(){
        $('#searchBtn').click(function() {
          self.location = "review_list" + '${pageMaker.makeQuery(1)}' + "&searchType=" + $("select option:selected").val() + "&keyword=" + encodeURIComponent($('#keywordInput').val());
        });
      });   
    </script>
  </div>

		<div>

			<table border="1">
				<thead>
					<tr>
						<th width="8%">글 번호</th>
						<th width="auto%">제목</th>
						<th width="15%">글쓴이</th>
						<th width="10%">작성일</th>
						<th width="10%">조회수</th>

					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list }" var="list">
						<tr>
							<td><c:out value="${list.rno}" /></td>

							<td><a href="${pageContext.request.contextPath}/review_detail?rno=${list.rno}"> <c:out
										value="${list.rtitle}" />
							</a></td>
							<td><c:out value="${list.rwriter}" /></td>
							<td><fmt:formatDate value="${list.rdate}"
								pattern="yyyy-MM-dd" /></td>
							<td><c:out value="${list.rcount}" /></td>
						</tr>
					</c:forEach>
				</tbody>




				<!-- <tr>
					<td>10</td>
					<td>
					<a href="/notice_detail">
					안녕하세여
					</a>
					</td>
					
					<td>2021.11.12</td>
					
				</tr> -->



			</table>



			<button type="button" style="float: right; margin-top: 10px;"
				onclick="location.href='${pageContext.request.contextPath}/review_write';">글쓰기</button>
			<div class="w3-bar" style="text-align: center;">
				
					
					<c:if test="${pageMaker.prev}">
					<a class="w3-button"
							href="${pageContext.request.contextPath}/review_list${pageMaker.makeSearch(pageMaker.startPage - 1)}">＜</a>
					</c:if>

					<c:forEach begin="${pageMaker.startPage}"
						end="${pageMaker.endPage}" var="idx">
						<a class="w3-button"
							href="${pageContext.request.contextPath}/review_list${pageMaker.makeSearch(idx)}">${idx}</a>
					</c:forEach>

					<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
						<a class="w3-button"
							href="${pageContext.request.contextPath}/review_list${pageMaker.makeSearch(pageMaker.endPage + 1)}">＞</a>
					</c:if>

					
				
			</div>




			<!-- 
			<div class="w3-bar" style="text-align: center;">
				<a href="#" class="w3-button">&laquo;</a> <a href="#"
					class="w3-button">＜</a> <a href="#" class="w3-button">1</a> <a
					href="#" class="w3-button">2</a> <a href="#" class="w3-button">3</a>
				<a href="#" class="w3-button">4</a> <a href="#" class="w3-button">5</a>
				<a href="#" class="w3-button">＞</a> <a href="#" class="w3-button">&raquo;</a>
			</div> 
			 -->

		</div>
	</div>






</body>
</html>