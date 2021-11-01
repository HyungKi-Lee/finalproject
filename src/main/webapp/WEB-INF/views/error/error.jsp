<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Spring</title>
<style type="text/css">
body {
	text-align: center;
}

.error {
	padding-top: 50px;
}

.message {
	color: red;
	font-size: 15px;
	margin: 20px;
}

button {
	cursor: pointer;
	background: #2a303b;
	color: #b4986b;
	padding: 10px;
	border: none;
}

</style>
</head>
<body>
	<div class="error">
		<h1 style="font-size: 1.8em;">에러페이지</h1>
		<hr>
		<p class="message">프로그램에 예기치 못한 오류가 발생 되었거나 비정상적인 방법으로
		프로그램을 요청하여 오류가 발생 되었습니다.</p>
		<button type="button" onclick="location.href='${pageContext.request.contextPath}/login';">로그인 페이지 이동</button>
	</div>
</body>
</html>





