<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<!--호텔 검색 결과 상세 페이지 -->
<head>
<meta charset="utf-8">
<title>검색결과 페이지</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="" />
<!-- css -->
<link href="/resources/front/css/bootstrap.min.css" rel="stylesheet" />
<link href="/resources/front/css/fancybox/jquery.fancybox.css"
	rel="stylesheet">
<link href="/resources/front/css/jcarousel.css" rel="stylesheet" />
<link href="/resources/front/css/flexslider.css" rel="stylesheet" />
<link href="/resources/front/css/style.css" rel="stylesheet" />
<link href="/resources/front/css/loginform.css" rel="stylesheet" />


<!-- Theme skin -->
<link href="/resources/front/skins/default.css" rel="stylesheet" />
<script type="text/javascript">

	function room_popupOpen(idx) {//객실 상세 보기 팝업창
	
		var popUrl = "/roomdetail?hotel_code=${detail.hotel_code}&room_idx="+idx; //팝업창에 출력될 페이지 URL
	
		var popOption = "width=700, height=350, resizable=no, scrollbars=no, status=no;"; //팝업창 옵션(optoin)
	
		window.open(popUrl, "", popOption);
	
	}
	function popupOpen() { //평점및 후기 팝업창 

		var popUrl = "/avgresult?hotel_code="+ "${read.hotel_code}"; //팝업창에 출력될 페이지 URL

		var popOption = "width=700, height=800, resizable=no, scrollbars=no, status=no;"; //팝업창 옵션(optoin)

		window.open(popUrl, "", popOption);

	}
                                                                                                                                                                                                                                                                                                         
		
	
	function hotel_enrollment() { 
		alert("관심호텔로 등록하였습니다.");
		//관심호텔 등록 얼럿창		
		
	}
	
	function test(){
		alert("value changed");
	
	}
</script>
<style>
hr.two { /* 화면을 구분하기 위한 선 */
	width: 100%;
	color: black;
	border: thin solid black;
}
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
					<form action="/resultlist" accept-charset="utf-8" name="person_info1"
						method="get">
						<fieldset style="width: 100%">
							검색(*호텔이름이나 지역을 검색하세요) : <input type="text" name="textfield"style="WIDTH: 15%; " /> 
							<span>호텔등급</span> <select name="grade" >
										<option value=1 selected="selected">★</option> <!--아무것도 고르지않을때 별하나로   -->
										<option value=2>★★</option>
										<option value=3>★★★</option>
										<option value=4>★★★★</option>
										<option value=5>★★★★★</option>
								</select>
								<button id="submit">호텔 검색</button>
						</fieldset>
									
					</form>
					

					</fieldset>
					<form action=#>
						<div class="col-lg-8">
							<article>
								<div class="post-image">
									<div class="post-heading">
										<h3>${detail.hotel_name}</h3>
									</div>
									<h4>${detail.information}</h4>
								</div>
								<!-- 호텔 이미지 슬라이더 시작 -->
								<div id="main-slider" class="flexslider">
									<ul class="slides">
										<c:forEach items="${h_image}" var="ImageVO">
											<li><img src="${ImageVO.himg_path}" height="300" width="100%" />
										</c:forEach>
									</ul>

								</div>
								<!-- 슬라이더 끝 -->

							</article>
							<article>



								<div>${detail.hotel_core_info}</div>
								<h4>체크시 준비사항</h4>
								<ol>
									<li>${detail.hotel_precautions}</li>

								</ol>
								<h4>체크인/체크아웃</h4>
								<ol>
									<li>${detail.hotel_checktime}</li>


								</ol>
								<h4>기타사항</h4>
								<ol>

									<li>${detail.hotel_etc}</li>

								</ol>
					</form>
					</article>
					<article>
						<div class="post-video">
							<div class="post-heading"></div>
						</div>
					</article>
				</div>
				<div class="col-lg-4">
					<aside class="right-sidebar">
						<div class="widget">
							<h2 class="widgetheading">가격(최저가):${detail.room_lowprice}</h2>
							<ul class="cat">
								<li><img src="/resources/front/img/hotel/maps.jpg"
									class="pull-left" alt="" /></li>
							</ul>
						</div>
						<div class="widget" >
							<h2 class="widgetheading">평점:${detail.rate}</h2>
							<ul class="recent">
								<li><img src="/resources/front/img/hotel/avg.PNG"
									class="pull-left" alt=""  /></li>
							</ul>
						</div>
						<div class="widget">
							<h5 class="widgetheading" onclick="popupOpen()">관심호텔</h5>
							<ul class="tags">
									 <li><button style="WIDTH: 200px; HEIGHT: 50px;"  id="button1" onclick="hotel_enrollment(); ">관심호텔 등록</button></li> 
								<!-- 버튼 누르면 관심 호텔 등록 -->
							</ul>
						</div>
					</aside>
				</div>
				<div>
					<hr class="two">
					<div class="row">
						<!-- <fieldset  style="width:100%; border:5 solid black;"> -->
						<div class=col-lg-2 style="font-size: 2.0em; text-align: center;">객실유형</div>
						<div class=col-lg-2 style="font-size: 2.0em; text-align: center;">객실선택</div>
						<div class=col-lg-2 style="font-size: 2.0em; text-align: center;">객실정보</div>
						<div class=col-lg-2 style="font-size: 2.0em; text-align: center;">체크인</div>
						<div class=col-lg-2 style="font-size: 2.0em; text-align: center;">체크아웃</div>
						<div class=col-lg-2 style="font-size: 2.0em; text-align: center;">가격정보</div>
					</div>
					<hr class="two">
					<div class="row">
						<div class=col-lg-2 style="text-align: center;"
							onclick="room_popupOpen(1);">
							<img src="/resources/front/img/slides/1.jpg"/>
							<div style="text-align: center;">객실정보</div>
							<div style="text-align: left;">
								<ol>
									<li>침대:${roomdetail.BED_NAME}${roomdetail.BED_CNT}개</li>
									<li>최대인원:어른(${roomdetail.ROOM_PEOPLENUM}명)</li>
									<li>어린이(${roomdetail.ROOM_PEOPLENUM_K}명)</li>
								</ol>
							</div>
						</div>
						<div class=col-lg-2 style="text-align: center;">
							<select name="room" style="WIDTH: 150px; HEIGHT: 30px" onchange="test()">
								<c:forEach items="${detailroom}" var="FdetailVO">
									<option value="${FdetailVO.room_name}">${FdetailVO.room_name}</option>
								</c:forEach>

							</select>
						</div>

						<div class=col-lg-2 style="text-align: center;">
							<ol>
								<li>무료wifi</li>
								<li>무료 주차장</li>
								<li>무료 조식</li>
							</ol>
							</select>
						</div>
						<div class=col-lg-2 style="text-align: center;">
							<input type="date" id="checkin2" name="checkin2"
								value="yyyy-mm-dd">
						</div>
						<div class=col-lg-2 style="text-align: center;">
							<input type="date" id="checkin2" name="checkin2"
								value="yyyy-mm-dd">
						</div>
						<div class=col-lg-2 style="text-align: center;">
							<h2>50,000</h2>
						</div>
					</div>
					<div style="text-align: right;">
					
					<a href="/reservation?hotel_code=${read.hotel_code}&room_idx=1">
					<button type="submit" style="WIDTH: 150px; HEIGHT: 50px">예약하기</button></a>
					</div><!--  뒤에서부터는 &로 계속 붙여준다 -->

					

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
