<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 2018-11-07 테스트용  -->

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Moderna - Bootstrap 3 flat corporate template</title>
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
	<div id="login" class="modal">

		<!-- Modal Content -->
		<form method="POST" class="modal-content animate" action="/loginPost">

			<div class="modal-container">
				<label for="uid"><b>Username</b></label> <input type="text"
					placeholder="Enter Username" name="member_id" required
					id="member_id"> <label for="pwd"><b>Password</b></label> <input
					type="password" placeholder="Enter Password" name="member_password"
					required id="member_password">

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
	<div id="register" class="modal">

		<!-- Modal Content -->
		<form class="modal-content animate" action="/register_proc/">

			<div class="modal-container">
				<table class="table">
					<tr>
						<th><label for="uid"><b>User ID (E-mail)</b></label></th>
						<td><input type="text" placeholder="Enter Username" required
							id="regi_uid">
							<button type="button" class="btn btn-default" name="doublechk">중복확인</button></td>
					</tr>
					<tr>
						<th><label for="pwd"><b>Password</b></label></th>
						<td><input type="password" placeholder="Enter Password"
							required id="regi_password"></td>
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
						<td colspan="2">
							<button type="submit" class="btn btn-success">회원가입</button>
							<button type="button" style="margin: 3px" class="btn btn-danger"
								name="cancelbtn">취소</button>
						</td>
					</tr>
				</table>
			</div>
			<div class="modal-container" style="background-color: #f1f1f1">

				<span class="pwd">Forgot <a href="#">password?</a></span>
			</div>
		</form>
	</div>


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
						<a class="navbar-brand" href="/"><span>M</span>oderna</a>
					</div>
					<div class="navbar-collapse collapse ">
						<ul class="nav navbar-nav">
							<li class="active"><a href="/">Home</a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle "
								data-toggle="dropdown" data-hover="dropdown" data-delay="0"
								data-close-others="false">Features <b
									class=" icon-angle-down"></b></a>
								<ul class="dropdown-menu">
									<li><a href="/typography">Typography</a></li>
									<li><a href="/components">Components</a></li>
									<li><a href="/pricingbox">Pricing box</a></li>
								</ul></li>
							<li><a href="/searchresult">SearchResult</a></li>
							<li><a href="/portfolio">Portfolio</a></li>
							<li><a href="/blog?hotel_code=KORDAGDH">Blog</a></li>
							<li><a href="/contact">Contact</a></li>
							<li><a href="#" id="loginPage">Login</a></li>
						</ul>
					</div>
				</div>
			</div>
		</header>
		<!-- ..까지가 우상단 바 -->



		<!-- 		<section id="content"></section> -->

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
									<li class="col-lg-3 design" data-id="id-0" data-type="web">
										<div class="item-thumbs">
											<!-- Fancybox - Gallery Enabled - Title - Full Image -->
											<a class="hover-wrap fancybox" data-fancybox-group="gallery"
												title="공지사항 1" href="/resources/front/img/works/1.jpg">
												<span class="overlay-img"></span> <span
												class="overlay-img-thumb font-icon-plus"></span>
											</a>
											<!-- Thumb Image and Description -->
											<img src="/resources/front/img/works/1.jpg"
												alt="공지사항 1의 내용임. 아무튼 그럼.공지사항 1의 내용임. 아무튼 그럼.공지사항 1의 내용임. 아무튼 그럼.공지사항 1의 내용임. 아무튼 그럼.공지사항 1의 내용임. 아무튼 그럼.공지사항 1의 내용임. 아무튼 그럼.공지사항 1의 내용임. 아무튼 그럼.공지사항 1의 내용임. 아무튼 그럼.공지사항 1의 내용임. 아무튼 그럼.공지사항 1의 내용임. 아무튼 그럼.공지사항 1의 내용임. 아무튼 그럼.공지사항 1의 내용임. 아무튼 그럼.공지사항 1의 내용임. 아무튼 그럼.공지사항 1의 내용임. 아무튼 그럼.공지사항 1의 내용임. 아무튼 그럼.공지사항 1의 내용임. 아무튼 그럼.공지사항 1의 내용임. 아무튼 그럼.공지사항 1의 내용임. 아무튼 그럼.공지사항 1의 내용임. 아무튼 그럼.공지사항 1의 내용임. 아무튼 그럼.공지사항 1의 내용임. 아무튼 그럼.공지사항 1의 내용임. 아무튼 그럼.공지사항 1의 내용임. 아무튼 그럼.공지사항 1의 내용임. 아무튼 그럼.공지사항 1의 내용임. 아무튼 그럼.">
										</div>
									</li>
									<!-- End Item Project -->
									<!-- Item Project and Filter Name -->
									<li class="item-thumbs col-lg-3 design" data-id="id-1"
										data-type="icon">
										<!-- Fancybox - Gallery Enabled - Title - Full Image --> <a
										class="hover-wrap fancybox" data-fancybox-group="gallery"
										title="공지사항 2" href="/resources/front/img/works/2.jpg"> <span
											class="overlay-img"></span> <span
											class="overlay-img-thumb font-icon-plus"></span>
									</a> <!-- Thumb Image and Description --> <img
										src="/resources/front/img/works/2.jpg"
										alt="공지사항 2의 내용임. 아무튼 그럼.">
									</li>
									<!-- End Item Project -->
									<!-- Item Project and Filter Name -->
									<li class="item-thumbs col-lg-3 photography" data-id="id-2"
										data-type="illustrator">
										<!-- Fancybox - Gallery Enabled - Title - Full Image --> <a
										class="hover-wrap fancybox" data-fancybox-group="gallery"
										title="공지사항 3" href="/resources/front/img/works/3.jpg"> <span
											class="overlay-img"></span> <span
											class="overlay-img-thumb font-icon-plus"></span>
									</a> <!-- Thumb Image and Description --> <img
										src="/resources/front/img/works/3.jpg"
										alt="공지사항 3의 내용임. 아무튼 그럼.">
									</li>
									<!-- End Item Project -->
									<!-- Item Project and Filter Name -->
									<li class="item-thumbs col-lg-3 photography" data-id="id-2"
										data-type="illustrator">
										<!-- Fancybox - Gallery Enabled - Title - Full Image --> <a
										class="hover-wrap fancybox" data-fancybox-group="gallery"
										title="공지사항 4" href="/resources/front/img/works/4.jpg"> <span
											class="overlay-img"></span> <span
											class="overlay-img-thumb font-icon-plus"></span>
									</a> <!-- Thumb Image and Description --> <img
										src="/resources/front/img/works/4.jpg"
										alt="공지사항 4의 내용임. 아무튼 그럼.">
									</li>
									<!-- End Item Project -->
								</ul>
							</section>
						</div>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<!-- 검색 내용이 들어갈 공간  -->
						<!-- searchresult에 POST로 전송  -->
						<form method="POST"  action="/searchresult">
							<table class="table">
								<tr>
									<td colspan="2">
										<div>
											호텔검색<br> <input type="text" name="textfield"
												style="text-align: left; width: 200px; height: 30px"
												value="ex) Tokyo"> <input type="button" name="btn2"
												value="검색" id="hotelSearch" class="btn">
										</div> <br>
									</td>

								</tr>
								<tr>
									<td><p>체크인</p> <input type="date" id="userdate"
										name="userdate" value="2018-12-24"></td>
									<td><p>체크아웃</p> <input type="date" id="userdate"
										name="userdate" value="2018-12-25"></td>
								</tr>
								<!-- 					<tr>
						<td>
						
    					<div>체크인 날짜 :  </div>
    					
    					<div style = "padding: 0px 1px 0px 350px;">  
                         		체크아웃 날짜 : </div> <br>
    					<input type="date" id="userdate" name="userdate"
    		            value="2018-12-24" >
   						 <div><input type="submit" value="전송"></div>
   						
    					<div style = "padding: 0px 1px 0px 350px;">  
    					<input type="date" id="userdate" name="userdate"
    		            value="2018-12-25"></div>
   						 <div><input type="submit" value="전송"></div>
						<br><br>
						</td>
					</tr> -->
								<tr>
									<td><p>객실선택</p> <select name="room">
											<option value="one" selected="selected">1개의 객실</option>
											<option value="two">2개의 객실</option>
											<option value="three">3개의 객실</option>
									</select></td>
									<td><p>체크아웃</p> <select name="man">
											<option value="one" selected="selected">1명</option>
											<option value="two">2명</option>
											<option value="three">3명</option>
									</select> <select name="boy">
											<option value="one" selected="selected">1명</option>
											<option value="two">2명</option>
											<option value="three">3명</option>
									</select></td>
								</tr>

								<tr>
									<td><p>호텔등급</p> <input type="checkbox" name="grade"
										value="onestar"> ★<br> <input type="checkbox"
										name="grader" value="twostar"> ★★<br> <input
										type="checkbox" name="grader" value="threestar"> ★★★<br>
										<input type="checkbox" name="grader" value="fourstar">
										★★★★<br> <input type="checkbox" name="grader"
										value="fourstar"> ★★★★★<br> <input
										type="checkbox" name="grader" value="fourstar"> ★★★★★★<br></td>
									<td><p>호텔가격</p> <input type="checkbox" name="fruits"
										value="apple"> ￦0 - ￦49000<br> <input
										type="checkbox" name="fruits" value="banana"> ￦50000 -
										￦99000<br> <input type="checkbox" name="fruits"
										value="orange"> ￦100000 - ￦149000 <br> <input
										type="checkbox" name="fruits" value="orange"> ￦150000
										- ￦199000 <br> <input type="checkbox" name="fruits"
										value="orange"> ￦200000 - ￦249000 <br> <input
										type="checkbox" name="fruits" value="orange"> ￦250000
										- <br></td>
								</tr>


								<tr>
									<td colspan="2" style="text-align:right"><p>
											<a href="/typography"><button class="btn btn-success"
													id="submit">호텔 검색하기</button></a>
										</p></td>
								</tr>

								<tr>
									<td colspan="2" style="text-align: right"><a
										href="/likepage"><button class="btn">최근 본 상품</button></a> <a
										href="/likepage"><button class="btn">관심 상품</button></a></td>
								</tr>
							</table>
						</form>




					</div>






					<div class="col-lg-6">
						<!-- 슬라이더 시작 -->
						<div id="main-slider" class="flexslider">
							<ul class="slides">
								<li><img src="/resources/front/img/slides/1.jpg" alt="" />
									<div class="flex-caption">
										<h3>대구 노보텔</h3>
										<p>베리 굳</p>
										<a href="#" class="btn btn-theme">예약하기</a>
									</div></li>
								<li><img src="/resources/front/img/slides/2.jpg" alt="" />
									<div class="flex-caption">
										<h3>신라 호텔</h3>
										<p>굳</p>
										<a href="#" class="btn btn-theme">예약하기</a>
									</div></li>
								<li><img src="/resources/front/img/slides/3.jpg" alt="" />
									<div class="flex-caption">
										<h3>클린호텔</h3>
										<p>클린함</p>
										<a href="#" class="btn btn-theme">예약하기</a>
									</div></li>
							</ul>
						</div>
						<!-- 슬라이더 끝 -->



					</div>
				</div>

			</div>
		</section>


		<section class="callaction">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="big-cta">
							<div class="cta-text">
								<h2>
									<span>Team_D</span> Hotel reservation Project
								</h2>
							</div>
						</div>
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
									src="https://www.flickr.com/badge_code_v2.gne?count=8&amp;display=random&amp;size=s&amp;layout=x&amp;source=user&amp;user=34178660@N03"></script>
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
