<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

<!-- =======================================================
    Theme Name: Moderna
    Theme URL: https://bootstrapmade.com/free-bootstrap-template-corporate-moderna/
    Author: BootstrapMade
    Author URL: https://bootstrapmade.com
	======================================================= -->

</head>

<body>

	<section title="userlogin">
		<!-- 모든 front페이지에는 공통적으로 들어가야 할 것  -->
		<!-- 로그인 모달 -->
		<div id="login" class="modal">

			<!-- Modal Content -->
			<form class="modal-content animate" action="/login">

				<div class="modal-container">
					<label for="uid"><b>Username</b></label> <input type="text"
						placeholder="Enter Username" name="uid" required id="uid">
					<label for="pwd"><b>Password</b></label> <input type="password"
						placeholder="Enter Password" name="pwd" required id="pwd">

					<button type="submit" style="margin: 3px" class="btn btn-success"
						id="login">로그인</button>
					<button type="button" style="margin: 3px" class="btn btn-danger"
						name="cancelbtn">취소</button>
					<br>
					<button type="button" style="margin: 3px" class="btn btn-default"
						id="registerbtn">회원가입</button>
				</div>

				<div class="modal-container" style="background-color: #f1f1f1">

					<span class="pwd">Forgot <a href="#" id="findpwdbtn">password?</a></span>
				</div>
			</form>
		</div>

		<!-- 비밀번호 찾기 모달  -->
		<div id="findpwd" class="modal">
			<!-- Modal Content -->
			<form class="modal-content animate" action="/register_proc/">

				<div class="modal-container">
					<table class="table">
						<tr>
							<th><label for="uid"><b>ID (E-mail)</b></label></th>
							<td><input type="text" placeholder="Enter Username" required
								id="findpwd_uid">
						</tr>
						<tr>
							<td colspan="2" align="center">비밀번호를 찾기 위해 가입 시 입력한 아이디를
								입력해주세요.</td>
						</tr>
						<tr>
							<td>
								<button type="submit" class="btn btn-success">비밀번호 찾기</button>
								<button type="button" style="margin: 3px" class="btn btn-danger"
									name="cancelbtn">취소</button>
							</td>
						</tr>
					</table>
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
			</form>
		</div>
		<!-- 로그인 및 회원가입에 관련된 항목 끝 -->
	</section>

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
							<li><a href="/blog">Blog</a></li>
							<li><a href="/contact">Contact</a></li>
							<li><a href="#" id="loginPage">Login</a></li>
						</ul>
					</div>
				</div>
			</div>
		</header>
		<!-- ..까지가 우상단 바 -->

		<section id="inner-headline">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<ul class="breadcrumb">
							<li><a href="#"><i class="fa fa-home"></i></a><i
								class="icon-angle-right"></i></li>
							<li class="active">Blog</li>
						</ul>
					</div>
				</div>
			</div>
		</section>
		<section id="content">
			<div class="container">
				<div class="row">
					<div class="col-lg-8">
					<!-- 각 항목은 Article로써 마이 페이지에 데이터 호출 -->
					<!-- 예약 완료 목록 페이지  -->
 						<article id="resv_comp_data">
							<div class="post-image">
								<div class="post-heading">
									<img src = "/resources/front/img/dummies/myPage1.png">
								</div>
							</div>
							<p>예약 완료 목록을 불러오는 페이지</p>
							<table class="table">
								<tr>
									<th>번호</th>
									<th>호텔 명</th>
									<th>체크인</th>
									<th>체크아웃</th>
									<th>이용후기</th>
								</tr>
								<tr>
									<td>1</td>
									<td>The Big 7 Hotel</td>
									<td>2015-07-02</td>
									<td>2015-07-30</td>
									<td><button class="btn" name="reviewChk">확인하기</button></td>
								</tr>
								<tr>
									<td>2</td>
									<td>Daegu Hotel</td>
									<td>2015-08-22</td>
									<td>2015-08-25</td>
									<td><button class="btn" name="reviewChk">확인하기</button></td>
								</tr>
								<tr>
									<td>3</td>
									<td>Tokyo Sky Hotel</td>
									<td>2016-10-25</td>
									<td>2016-11-12</td>
									<td><button class="btn" name="reviewChk">작성하기</button></td>
								</tr>
								<tr>
									<td>4</td>
									<td>Lorem Ipsum Hotel</td>
									<td>2017-01-23</td>
									<td>2017-05-10</td>
									<td><button class="btn" name="reviewChk">작성하기</button></td>
								</tr>
							</table>
							<div class="bottom-article">
								<ul class="meta-post">
									<li><i class="icon-calendar"></i><a href="#"> Mar 23,
											2013</a></li>
									<li><i class="icon-user"></i><a href="#"> Admin</a></li>
									<li><i class="icon-folder-open"></i><a href="#"> Blog</a></li>
									<li><i class="icon-comments"></i><a href="#">4
											Comments</a></li>
								</ul>
								<a href="#" class="pull-right">Continue reading <i
									class="icon-angle-right"></i></a>
							</div>
						</article>
 						<article id="resv_list_data">
							<div class="post-image">
								<div class="post-heading">
									<img src = "/resources/front/img/dummies/myPage1.png">
								</div>
							</div>
					<!-- 예약된 목록 페이지  -->
							<p>예약중인 목록을 불러오는 페이지</p>
							<div class="bottom-article">
								<ul class="meta-post">
									<li><i class="icon-calendar"></i><a href="#"> Mar 23,
											2013</a></li>
									<li><i class="icon-user"></i><a href="#"> Admin</a></li>
									<li><i class="icon-folder-open"></i><a href="#"> Blog</a></li>
									<li><i class="icon-comments"></i><a href="#">4
											Comments</a></li>
								</ul>
								<a href="#" class="pull-right">Continue reading <i
									class="icon-angle-right"></i></a>
							</div>
						</article>
					<!-- 예약 취소 페이지  -->
 						<article id="resv_cancel_data">
							<div class="post-image">
								<div class="post-heading">
									<img src = "/resources/front/img/dummies/myPage1.png">
								</div>
							</div>
							<p>예약 취소 페이지</p>
							<div class="bottom-article">
								<ul class="meta-post">
									<li><i class="icon-calendar"></i><a href="#"> Mar 23,
											2013</a></li>
									<li><i class="icon-user"></i><a href="#"> Admin</a></li>
									<li><i class="icon-folder-open"></i><a href="#"> Blog</a></li>
									<li><i class="icon-comments"></i><a href="#">4
											Comments</a></li>
								</ul>
								<a href="#" class="pull-right">Continue reading <i
									class="icon-angle-right"></i></a>
							</div>
						</article>
					<!-- 개인정보 수정 페이지  -->
 						<article id="user_modify_data">
							<div class="post-image">
								<div class="post-heading">
									<img src = "/resources/front/img/dummies/myPage1.png">
								</div>
							</div>
							<p>사용자 정보 수정 페이지</p>
							<div class="bottom-article">
								<ul class="meta-post">
									<li><i class="icon-calendar"></i><a href="#"> Mar 23,
											2013</a></li>
									<li><i class="icon-user"></i><a href="#"> Admin</a></li>
									<li><i class="icon-folder-open"></i><a href="#"> Blog</a></li>
									<li><i class="icon-comments"></i><a href="#">4
											Comments</a></li>
								</ul>
								<a href="#" class="pull-right">Continue reading <i
									class="icon-angle-right"></i></a>
							</div>
						</article>
						
						<!-- 템플릿에 있던 예시용 데이터  -->
<!--
						<article>
							<div class="post-slider">
								<div class="post-heading">
									<h3>
										<a href="#">This is an example of slider post format</a>
									</h3>
								</div>
								start flexslider
								<div id="post-slider" class="flexslider">
									<ul class="slides">
										<li><img src="/resources/front/img/dummies/blog/img1.jpg"
											alt="" /></li>
										<li><img src="/resources/front/img/dummies/blog/img2.jpg"
											alt="" /></li>
										<li><img src="/resources/front/img/dummies/blog/img3.jpg"
											alt="" /></li>
									</ul>
								</div>
								end flexslider
							</div>
							<p>Qui ut ceteros comprehensam. Cu eos sale sanctus eligendi,
								id ius elitr saperet, ocurreret pertinacia pri an. No mei nibh
								consectetuer, semper laoreet perfecto ad qui, est rebum nulla
								argumentum ei. Fierent adipisci iracundia est ei, usu timeam
								persius ea. Usu ea justo malis, pri quando everti electram ei,
								ex homero omittam salutatus sed.</p>
							<div class="bottom-article">
								<ul class="meta-post">
									<li><i class="icon-calendar"></i><a href="#"> Mar 23,
											2013</a></li>
									<li><i class="icon-user"></i><a href="#"> Admin</a></li>
									<li><i class="icon-folder-open"></i><a href="#"> Blog</a></li>
									<li><i class="icon-comments"></i><a href="#">4
											Comments</a></li>
								</ul>
								<a href="#" class="pull-right">Continue reading <i
									class="icon-angle-right"></i></a>
							</div>
						</article>
						<article>
							<div class="post-quote">
								<div class="post-heading">
									<h3>
										<a href="#">Nice example of quote post format below</a>
									</h3>
								</div>
								<blockquote>
									<i class="icon-quote-left"></i> Lorem ipsum dolor sit amet, ei
									quod constituto qui. Summo labores expetendis ad quo, lorem
									luptatum et vis. No qui vidisse signiferumque...
								</blockquote>
							</div>
							<div class="bottom-article">
								<ul class="meta-post">
									<li><i class="icon-calendar"></i><a href="#"> Mar 23,
											2013</a></li>
									<li><i class="icon-user"></i><a href="#"> Admin</a></li>
									<li><i class="icon-folder-open"></i><a href="#"> Blog</a></li>
									<li><i class="icon-comments"></i><a href="#">4
											Comments</a></li>
								</ul>
								<a href="#" class="pull-right">Continue reading <i
									class="icon-angle-right"></i></a>
							</div>
						</article>
						<article>
							<div class="post-video">
								<div class="post-heading">
									<h3>
										<a href="#">Amazing video post format here</a>
									</h3>
								</div>
								<div class="video-container">
									<iframe
										src="http://player.vimeo.com/video/30585464?title=0&amp;byline=0">
									</iframe>
								</div>
							</div>
							<p>Qui ut ceteros comprehensam. Cu eos sale sanctus eligendi,
								id ius elitr saperet, ocurreret pertinacia pri an. No mei nibh
								consectetuer, semper laoreet perfecto ad qui, est rebum nulla
								argumentum ei. Fierent adipisci iracundia est ei, usu timeam
								persius ea. Usu ea justo malis, pri quando everti electram ei.</p>
							<div class="bottom-article">
								<ul class="meta-post">
									<li><i class="icon-calendar"></i><a href="#"> Mar 23,
											2013</a></li>
									<li><i class="icon-user"></i><a href="#"> Admin</a></li>
									<li><i class="icon-folder-open"></i><a href="#"> Blog</a></li>
									<li><i class="icon-comments"></i><a href="#">4
											Comments</a></li>
								</ul>
								<a href="#" class="pull-right">Continue reading <i
									class="icon-angle-right"></i></a>
							</div>
						</article> -->

						<div id="pagination">
							<span class="all">Page 1 of 3</span> <span class="current">1</span>
							<a href="#" class="inactive">2</a> <a href="#" class="inactive">3</a>
						</div>
					</div>
					<div class="col-lg-4">
						<aside class="right-sidebar">
							<div class="widget">
								<form class="form-search">
									<input class="form-control" type="text" placeholder="Search..">
								</form>
							</div>
							<div class="widget">
								<h3 class="widgetheading">마이 페이지</h3>
								<ul class="cat">
									<li><i class="icon-angle-right"></i><a id="resv_comp">예약완료내역</a></li>
									<li><i class="icon-angle-right"></i><a id="resv_list">예약 현황</a></li>
									<li><i class="icon-angle-right"></i><a id="resv_cancel">예약 취소</a></li>
									<li><i class="icon-angle-right"></i><a id="user_modify">개인정보 수정</a></li>
								</ul>
							</div>
							
							<!-- <div class="widget">
								<h5 class="widgetheading">Latest posts</h5>
								<ul class="recent"> 
									<li><img
										src="/resources/front/img/dummies/blog/65x65/thumb1.jpg"
										class="pull-left" alt="" />
										<h6>
											<a href="#">Lorem ipsum dolor sit</a>
										</h6>
										<p>Mazim alienum appellantur eu cu ullum officiis pro pri
										</p></li>
									<li><a href="#"><img
											src="/resources/front/img/dummies/blog/65x65/thumb2.jpg"
											class="pull-left" alt="" /></a>
										<h6>
											<a href="#">Maiorum ponderum eum</a>
										</h6>
										<p>Mazim alienum appellantur eu cu ullum officiis pro pri
										</p></li>
									<li><a href="#"><img
											src="/resources/front/img/dummies/blog/65x65/thumb3.jpg"
											class="pull-left" alt="" /></a>
										<h6>
											<a href="#">Et mei iusto dolorum</a>
										</h6>
										<p>Mazim alienum appellantur eu cu ullum officiis pro pri
										</p></li>
								</ul>
							</div>
							<div class="widget">
								<h5 class="widgetheading">Popular tags</h5>
								<ul class="tags">
									<li><a href="#">Web design</a></li>
									<li><a href="#">Trends</a></li>
									<li><a href="#">Technology</a></li>
									<li><a href="#">Internet</a></li>
									<li><a href="#">Tutorial</a></li>
									<li><a href="#">Development</a></li>
								</ul>
							</div> -->
						</aside>
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
	<script src="/resources/front/js/login/login.js"></script>	
	<script src="/resources/front/js/mypage.js"></script>

</body>

</html>