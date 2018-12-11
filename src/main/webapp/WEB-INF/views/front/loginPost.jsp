<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>session id 값 :  ${LoginVO.MEMBER_ID} </p>
<p>session pwd 값 : ${LoginVO.MEMBER_PASSWORD} </p>
<p>session name 값 : ${LoginVO.MEMBER_FIANAME} </p>
					
<!-- 세션 생성 -->

<%
		String id = "";
		id = (String)request.getParameter("MEMBER_ID");
		
		session.setAttribute("currentLoginSession", id);
%>
<!--  세션 생성 끝 -->

<p>현재 세션 : <%=(String)session.getAttribute("currentLoginSession") %></p>
</body>

<script>
	alert("<%=(String)session.getAttribute("currentLoginSession")%>님, 반갑습니다.");
	window.open("/","_self");
</script>
</html>

	