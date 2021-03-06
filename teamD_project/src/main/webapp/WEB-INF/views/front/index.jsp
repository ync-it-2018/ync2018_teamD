<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!-- 2018-11-07 테스트용  -->

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Team_D Project : Daisy</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="" />


<!-- css 호출 -->
<link href="/resources/front/css/bootstrap.min.css" rel="stylesheet" />
<link href="/resources/front/css/fancybox/jquery.fancybox.css"
	rel="stylesheet">
<link href="/resources/front/css/jcarousel.css" rel="stylesheet" />
<link href="/resources/front/css/flexslider.css" rel="stylesheet" />
<link href="/resources/front/css/style.css" rel="stylesheet" />
<link href="/resources/front/css/loginform.css" rel="stylesheet" />

<!-- Theme 적용 -->
<link href="/resources/front/skins/default.css" rel="stylesheet" />



<!-- 
   =======================================================
       이하 테마 출처
    Theme Name: Moderna
    Theme URL: https://bootstrapmade.com/free-bootstrap-template-corporate-moderna/
    Author: BootstrapMade
    Author URL: https://bootstrapmade.com
   =======================================================
   -->

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
   id = (String)session.getAttribute("currentLoginSession");
   // request에서 id 파라미터를 가져온다
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
                     <li>
                        <a href="/mypage">
                           <form method="POST" action="/mypage">
                              <input type="hidden" name="MEMBER_ID"  id = "MEMBER_ID"value="<%=id %>"/>
                              <button class="btn btn-success" type="submit" >Mypage</button>
                           </form>
                        </a>
                     </li>
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

		<section id="featured">
			<div class="container">
				<!-- divider -->
				<!-- end divider -->
				<!-- Portfolio Projects -->
				<div class="row">
					<div class="col-lg-12">
						<h4 class="heading">공지사항(진)</h4>
						<div class="row">
							<section id="projects">
								<ul id="thumbs" class="portfolio">
									<!-- Item Project and Filter Name -->
									<!--  c:forEach 를 통해 DB 내의 공지사항을 받아옴 -->
									<c:forEach items="${readNotice}" begin="0" end="3"
										var="readNotice">
										<li class="col-lg-3 design" data-id="id-0" data-type="web">
											<div class="item-thumbs">
												<!-- Fancybox - Gallery Enabled - Title - Full Image -->
												<a class="hover-wrap fancybox" data-fancybox-group="gallery"
													title="${readNotice.NOTICE_TITLE}"
													href="${readNotice.NOTICE_IMG}"> <span
													class="overlay-img"></span> <span
													class="overlay-img-thumb font-icon-plus"></span>
												</a>
												<!-- Thumb Image and Description -->
												<img src="${readNotice.NOTICE_IMG}"
													alt="${readNotice.NOTICE_CONTENT}">
											</div>
										</li>
									</c:forEach>
									<!-- End Item Project -->
								</ul>
							</section>
						</div>
					</div>
				</div>
			</div>		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<!-- 검색 내용이 들어갈 공간  -->
					<!-- searchresult에 GET으로 전송  -->
					<form method="GET" action="/resultlist">

						<table class="table">
							<tr>
								<td colspan="2">
									<div>
										호텔검색<br> <input type="text" name="textfield"
											id="hotelName"
											style="text-align: left; width: 200px; height: 30px"
											value="ex) 롯데">

									</div> <br>
								</td>

							</tr>
							<tr>
								<td><p>체크인</p> <input type="date" id="CheckinDate"
									name="CheckinDatename" value="2018-12-24"></td>

								<td><p>체크아웃</p> <input type="date" id="CheckoutDate"
									name="CheckoutDatename" value="2018-12-25"></td>
							</tr>

							<tr>
								<td>
									<p>객실선택</p> <select name="room">
										<option value="one" selected="selected">1개의 객실</option>
										<option value="two">2개의 객실</option>
										<option value="three">3개의 객실</option>
								</select>
								</td>
								<td><p>성인&nbsp;&nbsp;&nbsp;/&nbsp;&nbsp;&nbsp;유아</p> <select
									name="adult">
										<option value="one" selected="selected">1명</option>
										<option value="two">2명</option>
										<option value="three">3명</option>
								</select> <select name="children">
										<option value="one" selected="selected">1명</option>
										<option value="two">2명</option>
										<option value="three">3명</option>
								</select></td>
							</tr>




								<tr>
								<td>
									<p>호텔등급</p> <select name="grade">
										<option value=1 selected="selected">★</option>
										<option value=2>★★</option>
										<option value=3>★★★</option>
										<option value=4>★★★★</option>
										<option value=5>★★★★★</option>
								</select>
								</td>
								<td><p>가격</p> <select
									name="adult">
										<option value="one" selected="selected">￦0 - ￦49000</option>
										<option value="two">￦50000 - ￦99000</option>
										<option value="three">￦100000 - ￦149000</option>
										<option value="three">￦150000 - ￦199000</option>
										<option value="three">￦200000 - ￦249000</option>
										<option value="three">￦250000 - </option>
								</select></td>
							</tr>
							
							<tr>
								<td colspan="2" style="text-align: right"><p>
										<a href="/resultlist"><button class="btn btn-success"
												id="submit">호텔 검색하기</button></a>
									</p></td>
							</tr>


						</table>
					</form>
					<table>
						<tr>
							<td colspan="2" style="text-align: right"><a
								href="/lastpage"><button class="btn">최근 본 상품</button></a> <a
								href="/likepage"><button class="btn">관심 상품</button></a></td>
						</tr>
					</table>
				</div>

				<div class="col-lg-6">
					<!-- 슬라이더 시작 -->
					<div id="main-slider" class="flexslider">
						<ul class="slides">
							<li><img src="/resources/front/img/slides/1.jpg" alt="" />
								<div class="flex-caption">
									<h3>대구 노보텔</h3>
									<p>대구 노보텔 호텔 소개</p>
									<a href="#" class="btn btn-theme">예약하기</a>
								</div></li>
							<li><img src="/resources/front/img/slides/2.jpg" alt="" />
								<div class="flex-caption">
									<h3>신라 호텔</h3>
									<p>신라 호텔 소개</p>
									<a href="#" class="btn btn-theme">예약하기</a>
								</div></li>
							<li><img src="/resources/front/img/slides/3.jpg" alt="" />
								<div class="flex-caption">
									<h3>도쿄 호텔</h3>
									<p>도쿄 호텔 소개</p>
									<a href="#" class="btn btn-theme">예약하기</a>
								</div></li>
						</ul>
					</div>
					<!-- 슬라이더 끝 -->
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

	<a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>
	<!-- javascript
    ================================================== -->
	<!-- 문서의 아랫쪽에 스크립트를 호출함으로써 페이지 로딩 속도 향상 -->

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
	<!-- <script type="text/javascript">
      function test(){
         
      }
   </script> -->

</body>

</html>