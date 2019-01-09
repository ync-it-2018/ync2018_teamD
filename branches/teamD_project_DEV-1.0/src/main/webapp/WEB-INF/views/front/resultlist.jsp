<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>

<head>
<meta charset="utf-8">
<title>Moderna - Bootstrap 3 flat corporate template</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="" />
<!-- css -->
<link href="/resources/front/css/interio/grid.css" rel="stylesheet" />
<link href="/resources/front/css/interio/ie.css" rel="stylesheet" />
<link href="/resources/front/css/interio/reset.css" rel="stylesheet" />
<link href="/resources/front/css/interio/style1.css" rel="stylesheet" />
<link href="/resources/front/css/bootstrap.min.css" rel="stylesheet" />
<link href="/resources/front/css/fancybox/jquery.fancybox.css"
	rel="stylesheet">
<link href="/resources/front/css/jcarousel.css" rel="stylesheet" />
<link href="/resources/front/css/flexslider.css" rel="stylesheet" />
<link href="/resources/front/css/style.css" rel="stylesheet" />

<link href="/resources/front/css/loginform.css" rel="stylesheet" />

<!-- Theme skin -->
<link href="/resources/front/skins/default.css" rel="stylesheet" />

<!-- =======================================================
    Theme Name: Moderna
    Theme URL: https://bootstrapmade.com/free-bootstrap-template-corporate-moderna/
    Author: BootstrapMade
    Author URL: https://bootstrapmade.com
   ======================================================= -->

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
		<section id="inner-headline">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<ul class="breadcrumb">
							<li><a href="#"><i class="fa fa-home"></i></a><i
								class="icon-angle-right"></i></li>
							<li><a href="#">Features</a><i class="icon-angle-right"></i></li>
							<li class="active">Typography</li>
						</ul>
					</div>
				</div>
			</div>
		</section>
		
		<section id="content">
			<div class="container">
				<div class="row">
					<div class="col-lg-4 leftBorder listSet">
						<div class="filterName">필터 조건</div>
						<div>
							<input type="checkbox" name="free_wifi" value="HTML">무료wifi
						</div>
						<div>
							<input type="checkbox" name="free_parking" value="HTML">주차(무료)
						</div>
						<div>
							<input type="checkbox" name="free_meal" value="HTML">무료
							아침식사
						</div>
						<div>
							<input type="checkbox" name="free_animal" value="HTML">애완동물
							동반가능
						</div>
						<div class="filterName">호텔 등급</div>
						<div>
							<input type="checkbox" name="star_5" value="HTML">★★★★★
						</div>
						<div>
							<input type="checkbox" name="star_4" value="HTML">★★★★
						</div>
						<div>
							<input type="checkbox" name="star_3" value="HTML">★★★
						</div>
						<div>
							<input type="checkbox" name="star_2" value="HTML">★★
						</div>
						<div>
							<input type="checkbox" name="star_1" value="HTML">★
						</div>
						<div class="filterName">1박 요금</div>
						<div id="slider"></div>







					</div>
					 <div class="col-lg-8 listSet">
						<div id="listTitle">
							<h3 class="p0"> </h3>
						</div>
						<!--
						<formname="firm"> <input type="button"
							class="btn btn-success" value="최고인기순" onclick="/resultlist_likeVer" /> <input
							type=button class="btn btn-info" value="고객평점순" onclick="" /> <select
							name="price">
							<option value="">높은가격순</option>
							<option value="">낮은가격순</option>
						</select> </formname>

 -->


						<div class="wrapper p4">
							<c:forEach items="${list}" var="FhotelVO">
								<article class="grid_4 alpha">
									<div class="indent-left hotelList">
										<figure class="frame2 p2">

											<div>
												
												<table class="table">
												<!-- <table> -->
													
												<div class="col-lg-6 hotelList">
													<tr>
													${FhotelVO.hotel_name}
														<td>
														
																<div>
																	
																	<img src="${FhotelVO.hotel_img}">
																</div>
																
															</div>
														</td>
													</tr>
											<!-- 	</table> -->
												<div class="col-lg-6 hotelList">
													
														<tr>
															<td>위치 : ${FhotelVO.city_name}</td>
														</tr>
														<tr>
															<td>평점 : ${FhotelVO.rate}</td>
														</tr>
														<tr>
															<td>정보 : ${FhotelVO.information}</td>
														</tr>
														<tr>
															<td>가격 : ${FhotelVO.room_lowprice}</td>
														</tr>
													</table>
													
													<form method="GET" action="/searchresultdetail">
															<a class="button fright"
															href="/searchresultdetail?hotel_code=${FhotelVO.hotel_code}">상세보기</a>
															
													</form>
												</div>
											</div>

										</figure>
									</div>
								</article>
							</c:forEach>
							
						</div>
					</div>
				</div>
				<!-- divider -->
				<div class="row">
					<div class="col-lg-12">
						<div class="solidline"></div>
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