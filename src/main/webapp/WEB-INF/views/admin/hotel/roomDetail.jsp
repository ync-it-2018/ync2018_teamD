<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<title>객실 상세 정보</title>

</head>
<body>
	<div style="margin-left:15px;background-color:white; display:inline-block; ">
		<h4 >편의 기능</h4>
	</div>
	<div style="border:1px solid; padding: 20px; margin-top:-30px;">
		<c:forEach items="${item }" var="roomDetail">
			<input type="checkbox" checked disabled>${roomDetail.rf_name }
		</c:forEach>
	</div>
	
	<div style="margin-left:15px;background-color:white; display:inline-block; ">
		<h4 >침 대</h4>
	</div>
	<div style="border:1px solid; padding: 20px; margin-top:-30px;">
		<table border= 1 style= "width: 80%; text-align:center; margin-left:40px;">
		<c:forEach items="${bed}" var="bed">
			<tr>
				<td style="width:30%;">${bed.bed_name }</td>
				<td style="width:70%;">${bed.bed_cnt }</td>
			</tr>
		</c:forEach>
		</table>
	</div>
	
	<div style="margin-left:15px;background-color:white; display:inline-block; ">
		<h4 >객실 사진</h4>
	</div>
	<div style="border:1px solid; padding: 20px; margin-top:-30px; text-align:center;">
		<c:forEach items="${image }" var="room_image">
			<img src="${room_image.rimage_path }" style="width:100px; height:100px; margin:15 15;" onclick="i_detail(${room_image.rimage_idx})"/>
		</c:forEach>
	</div>
</body>
<script>
$(document).ready(function() {
	var loginmdl = document.getElementById('login');
	var regimdl = document.getElementById('register');
	// 로그인 창 띄우기
	$('#loginPage').on('click', function() {
		loginmdl.style.display = 'block';
	})
	// 취소 시 로그인 창 닫기
	$('[name=cancelbtn]').on('click', function() {
		loginmdl.style.display = 'none';
		regimdl.style.display = 'none';
		document.getElementById('uid').value = "";
		document.getElementById('pwd').value = "";
		document.getElementById('regi_uid').value = "";
		document.getElementById('regi_password').value = "";
		document.getElementById('regi_passwordchk').value = "";
		$(".alert-success").hide();
		$(".alert-danger").hide();
	})

	// 회원가입 모달로 전환
	$('#registerbtn').on('click', function() {
		loginmdl.style.display = 'none';
		regimdl.style.display = 'block';
	})

	// 모달 배경색을 클릭했을 경우 현재 모달 창을 닫음
	$(window).on('click', function(event) {
		if (event.target == loginmdl || event.target == regimdl) {
			loginmdl.style.display = "none";
			regimdl.style.display = 'none';
			document.getElementById('uid').value = "";
			document.getElementById('pwd').value = "";
			document.getElementById('regi_uid').value = "";
			document.getElementById('regi_password').value = "";
			document.getElementById('regi_passwordchk').value = "";
			$(".alert-success").hide();
			$(".alert-danger").hide();
		}
	})
	
	$('[name=doublechk]').on('click', function() {
		window.open("/doublechk");
	})

	// 
	$(".alert-success").hide();
	$(".alert-danger").hide();

	$('#regi_passwordchk').keyup(function() {
		if ($('#regi_password').val() != null) {
			if ($('#regi_password').val() != $('#regi_passwordchk').val()) {
				$(".alert-success").hide();
				$(".alert-danger").show();
			} else {
				$(".alert-success").show();
				$(".alert-danger").hide();
			}
		}
	})
});
function i_detail( idx ){
	var popUrl = "/admin/imageDetail?idx=" + idx;	//팝업창에 출력될 페이지 URL

	var popOption = "width=400, height=400, resizable=no, scrollbars=no, status=no;";    //팝업창 옵션(optoin)

	window.open(popUrl,"",popOption);
}
</script>
</html>