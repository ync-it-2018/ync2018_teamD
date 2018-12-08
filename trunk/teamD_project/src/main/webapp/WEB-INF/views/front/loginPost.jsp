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
<p>session id 값 : ${LoginVO.MEMBER_ID} </p>
<p>session pwd 값 : ${LoginVO.MEMBER_PASSWORD} </p>
<p>session name 값 : ${LoginVO.MEMBER_FIANAME} </p>
</body>
</html>

	