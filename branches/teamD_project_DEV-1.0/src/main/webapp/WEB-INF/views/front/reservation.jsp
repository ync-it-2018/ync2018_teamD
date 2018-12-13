<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<!--호텔 예약 화면 페이지 -->
<head>
	<meta charset="utf-8">
	<title>예약 페이지</title>
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
	
	
	
	</script>



</script>
<style>
hr.two{width: 100%;color:black;border: thin solid black;} /*화면을 구분짓기 위한 선  */


</style>


</head>

<body>
	   <!-- 로그인 모달 -->
   <div id="login" class="modal animate">

      <!-- Modal Content -->
      <form id="loginForm" method="POST" class="modal-content animate" action="/loginPost">

         <div class="modal-container">
            <label for="uid"><b>Username</b></label> <input class="form-control form-control-lg" type="text"
               placeholder="Enter Username" name="MEMBER_ID" required id="member_id">
            <label for="pwd"><b>Password</b></label> <input class="form-control form-control-lg"
               type="password" placeholder="Enter Password" name="MEMBER_PASSWORD" required id="member_password">
            <button type="submit" style="margin: 3px" class="btn btn-success"
               id="login">로그인</button>
            <button type="button" style="margin: 3px" class="btn btn-danger"
               name="cancelbtn">취소</button>
            <br>
            <button type="button" style="margin: 3px" class="btn btn-default"
               id="registerbtn">회원가입</button>
         </div>

         <div class="modal-container" style="background-color: #f1f1f1">

            <span class="pwd">Forgot <a href="#">password?</a></span>
         </div>
      </form>
   </div>

   <!-- 회원가입 모달 -->
   <div id="register" class="modal animate">

      <!-- Modal Content -->
      <form id="registerForm" class="modal-content animate"  method="POST"  action="/register_proc">

         <div class="modal-container">
            <table class="table">
               <tr>
                  <th><label for="uid"><b>User ID (E-mail)</b></label></th>
                  <td><input class="form-control form-control-lg" type="text" placeholder="Enter Username" required
                     id="regi_uid" name="MEMBER_ID">
                     <button type="button" class="btn btn-default"  id="doublechk">중복확인</button></td>
               </tr>
               <tr>
                  <th><label for="pwd"><b>Password</b></label></th>
                  <td><input type="password" placeholder="Enter Password"
                     required id="regi_password" name="MEMBER_PASSWORD"></td>
               </tr>
               <tr>
                  <th><label for="pwdchk"><b>Password Check</b></label></th>
                  <td><input type="password" placeholder="Password Check"
                     required id="regi_passwordchk"></td>
               </tr>
               <tr>
                  <td colspan="2'">
                     <div class="alert alert-success">비밀번호가 일치합니다.</div>
                     <div class="alert alert-danger">비밀번호가 일치하지 않습니다.</div>
                  </td>
               </tr>
               <tr>
                  <th><label for="uPhone"><b>Telephone</b></label></th>
                  <td><input class="form-control form-control-lg" type="text" placeholder="Enter Phone Number" required
                     id="regi_phone" name="MEMBER_PNUMBER">
               </tr>
               <tr>
                  <th><label for="uNation"><b>Nation</b></label></th>
                  <td>
                     <!-- 국가코드 테스트용 수동 입력부분 -->
                     <!-- <input class="form-control form-control-lg" type="text" placeholder="Enter Nation" required
                     id="regi_nation" name="NATION_CODE"> -->
                     
                     <!-- 국가코드 리스트 생성 -->
                     <select class="form-control" name="NATION_CODE">
                        <option selected disabled hidden="true"> 국가 선택 </option>
                        <c:forEach items="${nationList}" var="FhotelVO" >
                           <option value="${FhotelVO.nation_code}">${FhotelVO.nation_name}</option>
                        </c:forEach>
                     </select>
               </tr>
               <tr>
                  <th><label for="uAddress"><b>Address</b></label></th>
                  <td><input class="form-control form-control-lg" type="text" placeholder="Enter Address" required
                     id="regi_address" name="MEMBER_ADDRESS">
               </tr>
               <tr>
                  <th><label for="fname"><b>First Name</b></label></th>
                  <td><input class="form-control form-control-lg" type="text" placeholder="Enter First Name" required
                     id="regi_fianame" name="MEMBER_FIANAME">
               </tr>
               <tr>
                  <th><label for="lname"><b>Last Name</b></label></th>
                  <td><input class="form-control form-control-lg" type="text" placeholder="Enter Last Name" required
                     id="regi_laname" name="MEMBER_LANAME">
               </tr>
               <tr>
                  <td colspan="2">
                     <button type="submit" class="btn btn-success">회원가입</button>
                     <button type="button" style="margin: 3px" class="btn btn-danger"
                        name="cancelbtn">취소</button>
                  </td>
               </tr>
            </table>
         </div>
      </form>
   </div>



<%
   String id = "";
   id = (String)session.getAttribute("currentLoginSession");            // request에서 id 파라미터를 가져온다
   if(id == null || id.equals("")) {
%>

   <div id="wrapper">
      <!-- 우상단 바 관련 소스 -->
      <header>
         <div class="navbar navbar-default navbar-static-top">
            <div class="container">
               <div class="navbar-header">
                  <button type="button" class="navbar-toggle" data-toggle="collapse"
                     data-target=".navbar-collapse">
                     <span class="icon-bar"></span> <span class="icon-bar"></span> <span
                        class="icon-bar"></span>
                  </button>
                  <a class="navbar-brand" href="/"><span>D</span>aisy </a>
               </div>
               <div class="navbar-collapse collapse ">
                  <ul class="nav navbar-nav">
                     <li class="active"><a href="/"><button class="btn">Home</button></a></li>
                     <li><a href="#" id="loginPage"><button class="btn">Login</button></a></li>
                     <li><a href="/faqninquiry" ><button class="btn">고객센터</button></a></li>
                  </ul>
               </div>
            </div>
         </div>
      </header>
   </div>
      <!-- ..까지가 우상단 바 -->

<%} else { %>

   <div id="wrapper">
      <!-- 우상단 바 관련 소스 -->
      <header>
         <div class="navbar navbar-default navbar-static-top">
            <div class="container">
               <div class="navbar-header">
                  <button type="button" class="navbar-toggle" data-toggle="collapse"
                     data-target=".navbar-collapse">
                     <span class="icon-bar"></span> <span class="icon-bar"></span> <span
                        class="icon-bar"></span>
                  </button>
                  <a class="navbar-brand" href="/"><span>D</span>aisy <span>H</span>otel
                     <span>S</span>ervice</a>
               </div>
               
               <div class="navbar-collapse collapse ">
                  <ul class="nav navbar-nav">
                     <li class="active"><a href="/"><button class="btn">Home</button></a></li>
                     <li><a href="/searchresult"><button class="btn">Searchlist</button></a></li>
                     <!-- 드롭다운 예제    
                     <li class="dropdown"><a href="#" class="dropdown-toggle "
                        data-toggle="dropdown" data-hover="dropdown" data-delay="0"
                        data-close-others="false"><b
                           class=" icon-angle-down"></b></a>
                        <ul class="dropdown-menu">
                           <li><a href="/typography">SearchList</a></li>
                           <li><a href="/components">Components</a></li>
                           <li><a href="/pricingbox">Pricing box</a></li>
                        </ul></li> -->
                     <!-- <li><a href="/searchresult">SearchResult</a></li> -->
                     <li>
                        <a href="/mypage">
                           <form method="POST" action="/mypage">
                              <input type="hidden" name="MEMBER_ID"  id = "MEMBER_ID"value="<%=id %>"/>
                              <button class="btn btn-success" type="submit" >Mypage</button>
                           </form>
                        </a>
                     </li>
                     <li><a href="/searchresultdetail?hotel_code=KORDAGDH"><button class="btn">SearchResultDetail</button></a></li>
                     <!-- <li><a href="/contact">Contact</a></li> -->
                     <li><a href="/logout_proc" id="logout"><button class="btn">Logout</button></a></li>
                     <li><a href="/faqninquiry" ><button class="btn">고객센터</button></a></li>
                  </ul>
               </div>
               
            </div>
         </div>
      </header>
   </div>
<%}%>
<!-- 여기까지가 공통적으로 들어가야하는 로그인, 회원가입, 우상단바  -->

		

		<section id="content">
			<div class="container">
				<div class="row">
					
			<form action="/reservationresult?" method="get">
						
							<div class="col-lg-8">
								<div style="border: 2px solid; padding: 10px;">

									<article>



										<h2>${reservation.hotel_name}</h2>
										<hr class="two">
										<h3>${reservation.ROOM_NAME}</h3>
										<fieldset style="width: 100%">
												<div>성(영문)을 입력 해주세요</div>
											<input type="text" name="reservationfamilyname"
												style="WIDTH: 20%; HEIGHT: 40px" />
											<div>이름(영문)을 입력 해주세요</div>
											<input type="text" name="reservationname"
												style="WIDTH: 20%; HEIGHT: 40px" />
										</fieldset>


										<h3>예약자 정보</h3>
										<hr class="two">
										<div>이메일 주소*(이 주소로 확인 메일을 보내 드립니다.)</div>
										<input type="text" name="emailaddress"
											style="WIDTH: 40%; HEIGHT: 40px" />
										<div>휴대폰 번호*(비상시에만 연락드립니다.)</div>
										<input type="text" name="phonenumber"
											style="WIDTH: 40%; HEIGHT: 40px" />
										<!-- 슬라이더 시작 -->
										<div id="main-slider" class="flexslider">

											<ul class="slides">
												<c:forEach items="${h_image}" var="ImageVO">
													<li><img src="${ImageVO.himg_path}" height="300"
														width="100%" />
												</c:forEach>
											</ul>

										</div>
										<!-- 슬라이더 끝 -->

									</article>
									<hr class="two">
									<h3>지불 세부 정보</h3>

									<div>카드 종류</div>
									<select name="room" style="WIDTH: 150px; HEIGHT: 30px">
										<option value="카드선택">카드 선택</option>
										<option value="MASTER CARD">MASTER CARD</option>
										<option value="VISA CARD">VISA CARD</option>
										<option value="JCB CARD">JCB CARD</option>

									</select>
									<div style="text-align:right;">
									<input type="submit" value="예약하기" />
									<input type="button" value="뒤로가기" onclick="history.back(-1);"></div>
										</div>
										</div>
										</form>	
										
	




		<div class="col-lg-4">
						<aside class="right-sidebar">
							<div class="widget">
									<img src="/resources/img/hotel/1.jpg" class="pull-left" alt=""  height="100%" width="100%"/>
									<h3>${reservation.hotel_name}(${reservation.ROOM_NAME})</h3>
									<h4>체크인　:1234/11/11</h4>
									<h4>체크아웃:1234/11/13</h4>
									<h2>총 요금:${reservation.ROOM_PRICE}</h2>
									<div>
									<button class=col-lg-3 onclick="KRWbutton()">KRW</button>
									<button class=col-lg-3>JPY</button>
									<button class=col-lg-3>USD</button>
									<button class=col-lg-3>EUR</button>
									</div>
							</div>
							
							
							
						</aside>
					</div>
											
						
					
				</div>
			</div>

		</section>
		
		<footer>
         <div class="container">
            <div class="row">
               <div class="col-lg-12">
                  <div class="big-cta">
                     <div class="cta-text">
                           <h1>Team_D</h1> 
                           <h2>Hotel reservation Project</h2>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </footer>
	</div>
	<a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>
	<!-- javascript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="/resources/front/js/jquery.js"></script>
	<script src="/resources/front/js/jquery.easing.1.3.js"></script>
	<script src="/resources/front/js/bootstrap.min.js"></script>
	<script src="/resources/front/js/jquery.fancybox.pack.js"></script>
	<script src="/resources/front/js/jquery.fancybox-media.js"></script>
	<script src="/resources/front/js/google-code-prettify/prettify.js"></script>
	<script src="/resources/front/js/portfolio/jquery.quicksand.js"></script>
	<script src="/resources/front/js/portfolio/setting.js"></script>
	<script src="/resources/front/js/jquery.flexslider.js"></script>
	<script src="/resources/front/js/animate.js"></script>
	<script src="/resources/front/js/custom.js"></script>
	<script src="/resources/front/js/login/login.js"></script>
	
</body>

</html>
