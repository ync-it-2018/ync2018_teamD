	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>

<head>
	<meta charset="utf-8">
	<title>검색결과 페이지</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="description" content="" />
	<!-- css -->
	<link href="/resources/front/css/bootstrap.min.css" rel="stylesheet" />
	<link href="/resources/front/css/fancybox/jquery.fancybox.css" rel="stylesheet">
	<link href="/resources/front/css/jcarousel.css" rel="stylesheet" />
	<link href="/resources/front/css/flexslider.css" rel="stylesheet" />
	<link href="/resources/front/css/style.css" rel="stylesheet" />
	<link href="/resources/front/css/loginform.css" rel="stylesheet" />


	<!-- Theme skin -->
	<link href="/resources/front/skins/default.css" rel="stylesheet" />
	<script type="text/javascript">

	function popupOpen(){

	var popUrl = "/avgresult?hotel_code=KORDAGDH";	//팝업창에 출력될 페이지 URL
	

	var popOption = "width=500, height=400, resizable=no, scrollbars=no, status=no;";    //팝업창 옵션(optoin)

		window.open(popUrl,"",popOption);

	}
	function room_popupOpen(){

		var popUrl = "/roomdetail?room_idx=1";	//팝업창에 출력될 페이지 URL
		

		var popOption = "width=500, height=350, resizable=no, scrollbars=no, status=no;";    //팝업창 옵션(optoin)

			window.open(popUrl,"",popOption);
	
		}
	function KRWbutton() {
		alert("버튼1을 누르셨습니다.");
		
		
	}
	
	</script>



</script>
<style>
hr.two{width: 100%;color:black;border: thin solid black;}


</style>

</head>

<body>
	<h2>예약 확인값</h2>

	<h4>성 : <%= request.getParameter("reservationfamilyname") %></h4><br>
	<h4>이름 : <%= request.getParameter("reservationname") %></h4><br>
	<h4>이메일 : <%= request.getParameter("emailaddress") %></h4><br>
	<h4>휴대폰 : <%= request.getParameter("phonenumber") %></h4><br>
	<h4>객실 : <%= request.getParameter("room") %></h4><br>

	
</body>

</html>
