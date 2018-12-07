<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

 
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="http://malsup.github.com/jquery.cycle2.js"></script>


 <!-- link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>  -->
<title>객실 정보</title>
</head>
<body>
  <table class="table">
  <thead>
  
    <tr>
      <th scope="col" style="text-align:left;">${roomdetail.ROOM_NAME}</th>
    </tr>
  </thead>	
  <tbody>
			<tr>
			<th rowspan="2">
			 <%--  <div id="main-slider" class="flexslider">
							<ul class="slides">
							<c:forEach items="${roomdetailimage}" var="FroomVO">
								<li><img src="${FroomVO.RIMAGE_PATH}" height="50%" width="100%"/>	
								</c:forEach>
							</ul>
						</div>  --%>  
	<div class="cycle-slideshow" 
	cycle-slideshow data-cycle-loader="wait"
    data-cycle-timeout=2000 >
    <!-- empty element for pager links -->
    <div class="cycle-pager"></div>
	<c:forEach items="${roomdetailimage}" var="FroomVO">
    <img src="${FroomVO.RIMAGE_PATH}" height="100%" width="100%"/>
    </c:forEach>
</div>

			
			</th>
				<td>침대:${roomdetail.BED_NAME}	${roomdetail.BED_CNT}개</td>
			</tr>
			
			
			<tr>

				<td>
					<ol>
						<c:forEach items="${roomdetailproduct}" var="FroomVO">
							<li>${FroomVO.RF_NAME}</li>
						</c:forEach>
					</ol>
				</td>

			</tr> 
		</tbody>
		
</table>

</body>
</html>