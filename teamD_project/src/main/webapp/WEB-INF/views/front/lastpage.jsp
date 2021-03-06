<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>

<head>
<meta charset="utf-8">
<title>Team_D Project : Daisy</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="" />
<!-- css -->
<link href="/resources/front/css/bootstrap.min.css" rel="stylesheet" />
<link href="/resources/front/css/fancybox/jquery.fancybox.css"
	rel="stylesheet">
<link href="/resources/front/css/jcarousel.css" rel="stylesheet" />
<link href="/resources/front/css/flexslider.css" rel="stylesheet" />
<link href="/resources/front/css/style.css" rel="stylesheet" />
<link href="/resources/front/css/interio/grid.css" rel="stylesheet" />
<link href="/resources/front/css/interio/ie.css" rel="stylesheet" />
<link href="/resources/front/css/interio/reset.css" rel="stylesheet" />
<link href="/resources/front/css/interio/style1.css" rel="stylesheet" />


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

		
		<section id="content">
			<div class="container">
				
					<div class="col-lg-8 listSet">
						<div id="listTitle" >
							<h3 class="lipage">최근 본 상품</h3>
						</div>
						<formname="firm"> 
							<input type="button" class="btn btn-success" value="최고인기순" onclick="" /> 
							<input type=button class="btn btn-info" value="고객평점순" onclick="" /> 
							<select name="price">
								<option value="">높은가격순</option>
								<option value="">낮은가격순</option>
							</select>
						</formname>
						<div class="wrapper p4">

							<article class="grid_4 alpha">
								<div class="indent-left hotelList">
									<figure class="frame2 p2">
										<div class="color-4 prev-indent-bot hotelName">노보텔</div>
										<div class="col-lg-6 hotelList">
											<img src="/resources/front/img/hotel/hotel1.jpg" alt="" />
										</div>
										<div class="col-lg-6 hotelList">
											<div>대구</div>
											<div>평점:9.5</div>
											<div>3.5도심</div>
											<div>3.5경북대학교</div>

											<div class="wrapper">
												<span class="price fleft">200,000</span> <a
													class="button fright" href="#">상세보기</a>
											</div>
										</div>
									</figure>


								</div>
							</article>

							<article class="grid_4 alpha">
								<div class="indent-left hotelList">
									<figure class="frame2 p2">
										<div class="color-4 prev-indent-bot hotelName">신라호텔</div>
										<div class="col-lg-6 hotelList">
											<img src="/resources/front/img/hotel/hotel2.jpg" alt="" />
										</div>
										<div class="col-lg-6 hotelList">
											<div>대구</div>
											<div>평점:9.5</div>
											<div>3.5도심</div>
											<div>3.5경북대학교</div>

											<div class="wrapper">
												<span class="price fleft">200,000</span> <a
													class="button fright" href="#">상세보기</a>
											</div>
										</div>
									</figure>


								</div>
							</article>
							<article class="grid_4 alpha">
								<div class="indent-left hotelList">
									<figure class="frame2 p2">
										<div class="color-4 prev-indent-bot hotelName">클린호텔</div>
										<div class="col-lg-6 hotelList">
											<img src="/resources/front/img/hotel/hotel3.jpg" alt="" />
										</div>
										<div class="col-lg-6 hotelList">
											<div>대구</div>
											<div>평점:9.5</div>
											<div>3.5도심</div>
											<div>3.5경북대학교</div>

											<div class="wrapper">
												<span class="price fleft">200,000</span> <a
													class="button fright" href="#">상세보기</a>
											</div>
										</div>
									</figure>
								</div>
							</article>
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
					<div class="col-lg-3">
						<div class="widget">
							<h5 class="widgetheading">Get in touch with us</h5>
							<address>
								<strong>Moderna company Inc</strong><br> Modernbuilding
								suite V124, AB 01<br> Someplace 16425 Earth
							</address>
							<p>
								<i class="icon-phone"></i> (123) 456-7890 - (123) 555-7891 <br>
								<i class="icon-envelope-alt"></i> email@domainname.com
							</p>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="widget">
							<h5 class="widgetheading">Pages</h5>
							<ul class="link-list">
								<li><a href="#">Press release</a></li>
								<li><a href="#">Terms and conditions</a></li>
								<li><a href="#">Privacy policy</a></li>
								<li><a href="#">Career center</a></li>
								<li><a href="#">Contact us</a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="widget">
							<h5 class="widgetheading">Latest posts</h5>
							<ul class="link-list">
								<li><a href="#">Lorem ipsum dolor sit amet, consectetur
										adipiscing elit.</a></li>
								<li><a href="#">Pellentesque et pulvinar enim. Quisque
										at tempor ligula</a></li>
								<li><a href="#">Natus error sit voluptatem accusantium
										doloremque</a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="widget">
							<h5 class="widgetheading">Flickr photostream</h5>
							<div class="flickr_badge">
								<script type="text/javascript"
									src="http://www.flickr.com/badge_code_v2.gne?count=8&amp;display=random&amp;size=s&amp;layout=x&amp;source=user&amp;user=34178660@N03"></script>
							</div>
							<div class="clear"></div>
						</div>
					</div>
				</div>
			</div>
			<div id="sub-footer">
				<div class="container">
					<div class="row">
						<div class="col-lg-6">
							<div class="copyright">
								<p>&copy; Moderna Theme. All right reserved.</p>
								<div class="credits">
									<!--
                    All the links in the footer should remain intact.
                    You can delete the links only if you purchased the pro version.
                    Licensing information: https://bootstrapmade.com/license/
                    Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Moderna
                  -->
									<a href="https://bootstrapmade.com/">Free Bootstrap Themes</a>
									by <a href="https://bootstrapmade.com/">BootstrapMade</a>
								</div>
							</div>
						</div>
						<div class="col-lg-6">
							<ul class="social-network">
								<li><a href="#" data-placement="top" title="Facebook"><i
										class="fa fa-facebook"></i></a></li>
								<li><a href="#" data-placement="top" title="Twitter"><i
										class="fa fa-twitter"></i></a></li>
								<li><a href="#" data-placement="top" title="Linkedin"><i
										class="fa fa-linkedin"></i></a></li>
								<li><a href="#" data-placement="top" title="Pinterest"><i
										class="fa fa-pinterest"></i></a></li>
								<li><a href="#" data-placement="top" title="Google plus"><i
										class="fa fa-google-plus"></i></a></li>
							</ul>
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


</body>

</html>
