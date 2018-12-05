<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>

<head>
	<meta charset="utf-8">
	<title>Moderna - Bootstrap 3 flat corporate template</title>
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



</script>
<style>
hr.two{width: 100%;color:black;border: thin solid black;}


</style>





	<!-- =======================================================
    Theme Name: Moderna
    Theme URL: https://bootstrapmade.com/free-bootstrap-template-corporate-moderna/
    Author: BootstrapMade
    Author URL: https://bootstrapmade.com
	======================================================= -->

</head>

<body>
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
						<a class="navbar-brand" href="/"><span>D</span>aisy</a>
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

		<!-- <section id="inner-headline">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<ul class="breadcrumb">
							<li><a href="#"><i class="fa fa-home"></i></a><i class="icon-angle-right"></i></li>
							<li class="active">Blog</li>
						</ul>
					</div>
				</div>
			</div>
		</section> -->
		
		<section id="content">
			<div class="container">
				<div class="row">
							<form action = "#" accept-charset="utf-8" name ="person_info1" method = "get">
            <fieldset style = "width:100%">
                    목적지 : <input type = "text" name = "hotelname" style="WIDTH: 15%; HEIGHT: 40px"/>
                    체크인 : <input type="date" id="checkin" name="checkin"
                      value="yyyy-mm-dd">
                    체크아웃 : <input type="date" id="checkout" name="checkout"
                      value="yyyy-mm-dd">
                      <input type="button" value="검색" 	style="WIDTH: 50px; HEIGHT: 40px" /> 
                 <%--   <c:forEach items="${detail}" var="FdetailVO">
					
						<tr>
							<td>1</td>
							<td>
							${FdetailVO.address}
							${FdetailVO.room_lowprice}
							${FdetailVO.rate}
							${FdetailVO.hotel_class}
							${FdetailVO.information}
							${FdetailVO.hotel_discount}
							${FdetailVO.hotel_code}
							${FdetailVO.hotel_name}
							${FdetailVO.nation_name}
							${FdetailVO.city_name}
							${FdetailVO.hotel_core_info}
							${FdetailVO.hotel_precautions}
							${FdetailVO.hotel_checktime}
							${FdetailVO.hotel_etc}
							</td>
						</tr>
					</c:forEach> --%>
                   
                      

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
							<!-- 슬라이더 시작 -->
						<div id="main-slider" class="flexslider">
							<ul class="slides">
								<li><img src="/resources/front/img/slides/1.jpg" alt="" />
								<li><img src="/resources/front/img/slides/2.jpg" alt="" />
								<li><img src="/resources/front/img/slides/3.jpg" alt="" />
							</ul>
						</div>
						<!-- 슬라이더 끝 -->
							
						</article>
						<article>
						
									
								
									<div>${detail.hotel_core_info}</div>
									<h4>체크시 준비사항 </h4>
									<ol>
										<li>${detail.hotel_precautions}</li>
										
									</ol>
									<h4>체크인/체크아웃 </h4>
									<ol>
										<li>${detail.hotel_checktime}</li>
										
										
									</ol>
									<h4>기타사항 </h4>
									<ol>
										
										<li>${detail.hotel_etc}</li>
										
									</ol>
									
								
							
							</form>
						</article>
						<article>
							<div class="post-video">
								<div class="post-heading">
								
								
								
								</div>
								<!-- <div class="video-container">
									<iframe src="http://player.vimeo.com/video/30585464?title=0&amp;byline=0">
								</iframe>
								</div> -->
								
							</div>
							
							
						</article>
					
					</div>
					<div class="col-lg-4">
						<aside class="right-sidebar">
							<div class="widget">
								<form class="form-search">
									<input class="form-control" type="text" placeholder="Search..">
								</form>
							</div>
							<div class="widget">
								<h1 class="widgetheading">가격:${detail.room_lowprice}</h1>
								<ul class="cat">
									<li>
									
									<img src="/resources/front/img/hotel/maps.jpg" class="pull-left" alt="" />
									</li>
									
								</ul>
							</div>
							<div class="widget">
								<h2 class="widgetheading">평점:${detail.rate}</h2>
								<ul class="recent">
									<li>
										<img src="/resources/front/img/hotel/avg.PNG" class="pull-left" alt="" onclick="popupOpen()"/>
									</li>
									
									
								</ul>
							</div>
							<div class="widget">
								<h5 class="widgetheading">관심호텔</h5>
								<ul class="tags">
									<li><input type="button" value="관심호텔 등록" 	style="WIDTH: 200px; HEIGHT: 50px" /></li> <!-- 버튼 누르면 관심 호텔 등록 -->
								</ul>
							</div>
						</aside>
					</div>
				<div>
					<hr class="two">
					<div class="row">
					<!-- <fieldset  style="width:100%; border:5 solid black;"> -->
						<div class=col-lg-2 style="font-size: 2.0em;text-align: center;">객실유형</div>
						<div class=col-lg-2 style="font-size: 2.0em;text-align: center; ">객실선택</div>
						<div class=col-lg-2 style="font-size: 2.0em;text-align: center; ">객실정보</div>
						<div class=col-lg-2 style="font-size: 2.0em;text-align: center; ">체크인</div>
						<div class=col-lg-2 style="font-size: 2.0em;text-align: center; ">체크아웃</div>
						<div class=col-lg-2 style="font-size: 2.0em;text-align: center; ">가격정보</div>
						   </div>
						<hr class="two">
						<div class="row">
						<div class=col-lg-2 style="text-align:center;">
						<img src="/resources/front/img/slides/1.jpg" /></div> 
						<div class=col-lg-2 style="text-align:center;">
						<select name="room" style="WIDTH: 150px; HEIGHT: 30px" >
							<option value="">객실선택</option>
							<c:forEach items="${detailroom}" var="FdetailVO">
							<option value="${FdetailVO.room_name}" >${FdetailVO.room_name}</option>
							</c:forEach>
							
						</select></div>
  
						<div class=col-lg-2 style="text-align:center;">
							<ol>
							<li>무료wifi</li>
							<li>무료 주차장</li>
							<li>무료 조식</li>
							</ol>
						</select>
						</div>
						<div class=col-lg-2 style="text-align:center;" ><input type="date" id="checkin2" name="checkin2"
                      value="yyyy-mm-dd"></div>
                     <div class=col-lg-2 style="text-align:center;" > <input type="date" id="checkin2" name="checkin2"
                      value="yyyy-mm-dd"></div>
                    <div class=col-lg-2  style="text-align:center;"> <h2> 400,000</h2></div>
                      </div>
					<!-- </fieldset> -->
					
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
					<strong>Moderna company Inc</strong><br>
					 Modernbuilding suite V124, AB 01<br>
					 Someplace 16425 Earth </address>
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
								<li><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a></li>
								<li><a href="#">Pellentesque et pulvinar enim. Quisque at tempor ligula</a></li>
								<li><a href="#">Natus error sit voluptatem accusantium doloremque</a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="widget">
							<h5 class="widgetheading">Flickr photostream</h5>
							<div class="flickr_badge">
								<script type="text/javascript" src="http://www.flickr.com/badge_code_v2.gne?count=8&amp;display=random&amp;size=s&amp;layout=x&amp;source=user&amp;user=34178660@N03"></script>
							</div>
							<div class="clear">
							</div>
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
									<a href="https://bootstrapmade.com/">Free Bootstrap Themes</a> by <a href="https://bootstrapmade.com/">BootstrapMade</a>
								</div>
							</div>
						</div>
						<div class="col-lg-6">
							<ul class="social-network">
								<li><a href="#" data-placement="top" title="Facebook"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#" data-placement="top" title="Twitter"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#" data-placement="top" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
								<li><a href="#" data-placement="top" title="Pinterest"><i class="fa fa-pinterest"></i></a></li>
								<li><a href="#" data-placement="top" title="Google plus"><i class="fa fa-google-plus"></i></a></li>
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
	
</body>

</html>
