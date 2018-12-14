<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Team_D Project : Daisy</title>
</head>
<body>		
<!-- 세션 생성 -->
<%
		String id = "";
		id = (String)request.getParameter("MEMBER_ID");
		
		session.setAttribute("currentLoginSession", id);
%>
<!--  세션 생성 끝 -->


<% if(id == null || id.equals("")) {%>
	<h1>로그인 오류</h1>
	<script>window.open("/","_self");</script>
<%} else {%>
	<script>
		alert("<%=(String)session.getAttribute("currentLoginSession")%>님, 반갑습니다.");
		window.open("/","_self");
	</script>

<%} %>
</body>


</html>

	