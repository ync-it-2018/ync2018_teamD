<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!--호텔안 객실 상세 페이지 -->
<head>
<meta charset="UTF-8">

 
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="http://malsup.github.com/jquery.cycle2.js"></script>
 
<title>객실 정보</title>
</head>
<body>
  <table class="table">
  <thead>
  
    <tr>
      <th scope="col" style="text-align:left;"><h2>${roomdetail.ROOM_NAME}</h2></th>
    </tr>
  </thead>	
  <tbody>
			<tr>
			<th rowspan="2">
	<div class="cycle-slideshow" data-cycle-loader="wait"data-cycle-timeout=2000 >
    
    <div class="cycle-pager"></div>
	<c:forEach items="${roomdetailimage}" var="FroomVO">
    <img src="${FroomVO.RIMAGE_PATH}" height="100%" width="100%"/>
    </c:forEach>
</div>

			
			</th>
				<td><div>침대:${roomdetail.BED_NAME}${roomdetail.BED_CNT}개</div>
					<div>최대인원:어른(${roomdetail.ROOM_PEOPLENUM})어린이(${roomdetail.ROOM_PEOPLENUM_K})</div>
				</td>
			</tr>
			
			<tr>

				<td>
				<div>객실 중요 기능 </div>
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