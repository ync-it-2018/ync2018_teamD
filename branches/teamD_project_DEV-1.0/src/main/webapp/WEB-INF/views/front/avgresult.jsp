<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!--호텔 평점 및 리뷰  페이지 -->
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
<title>고객 평점 후기</title>
</head>
<body>
  <table class="table">
  <thead>
    <tr>
     
      <th scope="col">최근이용 후기</th>
      
      
    </tr>
  </thead>
  <tbody>
      <c:forEach items="${review}" var="FreviewVO">	<!--c:for문쓸때는 위에  taglib를써야한다  -->		
   	
    <tr>
   		
      <td><div>${FreviewVO.MEMBER_ID}</div>
      	  <div>${FreviewVO.REVIEW_DATE}</div>
	  </td>
      <td><div><h4>평점:${FreviewVO.REVIEW_RATE}</h4></div>
     	  <div>${FreviewVO.REVIEW_CONTENT}</div>
     </td>
      
      
    </tr>
    
   </c:forEach> 
    
  </tbody>
</table>

</body>
</html>