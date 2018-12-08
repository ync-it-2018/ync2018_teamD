<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<title>편의 기능 추가</title>

</head>
<script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<script src="/resources/admin/js/jssor.slider-27.5.0.min.js" type="text/javascript"></script>
<script type="text/javascript">
	var idx = request.getParameter("idx");
	function add_f(){
			var sel = $("#hotel_f_1 option:selected");
			var id = 1;
			/* var st = "#fac1"; */
			/* while($("#fac"+id).val()){
				
				alert($("#fac"+id).val());
				
				id ++;
			} */
			/* window.opener.hotel.hid_f_idx.value = sel.val(); */
			var tag = "<div value='"+sel.val()+"' id = 'h_fac17'>"+sel.text()+"</div>";
			alert(tag);
			window.opener.hotel.hotel_f.append(tag);
			window.close();
			
		}
	function exit(){
		window.close();
	}
</script>
<body>
	<input type="hidden" id="hid_num" name="hid_num"/>
	<div style="width:88%; text-align: left; margin: 0 auto;">
		<form method="post" id = "hotel_f_1" style="width:100%; text-align:center; margin: atuo;">	
			<select name ="hotel_f_1" size = "8"  style="width: 100%;">
				<c:forEach items="${list}" var="list" varStatus="no">
					<option value="${list.hf_idx}" id = "fac${no.count }">${list.hf_name}</option>
				</c:forEach>		
			</select>
		</form>
		<input type="button" value="확인" onclick="add_f();"/>
		<input type="button" value="취소" onclick="exit();"/>
	</div>
</body>
<script>

</script>
</html>