<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<title></title>

</head>
<body  onload = "m_delete()">
	
</body>
<script>
	function m_delete(){
		alert("삭제되었습니다.");
		window.location.href="/admin/memberList";
	}	
</script>
</html>