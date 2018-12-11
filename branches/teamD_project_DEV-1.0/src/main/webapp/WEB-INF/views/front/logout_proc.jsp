<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>이용해 주셔서 감사합니다.</h1>
	<%
		String id = "";
		id = (String) session.getAttribute("currentLoginSession");
	%>
</body>
<script>
	<%session.removeAttribute("currentLoginSession");%>
	alert("정상 로그아웃 처리되었습니다.");
	<%id = "";%>
	window.open("/", "_self");
</script>
</html>