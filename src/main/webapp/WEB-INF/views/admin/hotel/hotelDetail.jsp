<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
 
  <style>
  .h_group{
  	height:65px;
  }
  .detail{
  	text-align:left;
  	margin: 15 10;
  }
  .detail_data{
  	margin-left: 10px;
  	width:90%;
  }
  .tb_css{
  	width:90%; 
  	text-align:center; 
  	margin:auto;
  }
  #tb_room{
  	margin: 15 10;
  }
  .container1{
  	  width: 95%;
  	  margin: 0 auto;
	}
	ul.tabs{
	  margin: 0px;
	  padding: 0px;
	  list-style: none;
	}
	ul.tabs li{
	  background: none;
	  color: #222;
	  display: inline-block;
	  padding: 10px 15px;
	  cursor: pointer;
	  /* font-size:18px; */
	}
	 
	ul.tabs li.current{
	  background: #D8D8D8;
	  color: #222;
	}
	 
	.tab-content{
	  display: none;
	  background: #D8D8D8;
	  padding: 15px;
	}
	 
	.tab-content.current{
	  display: inherit;
	}
	.tb_css{
	  width:95%; 
	  text-align:center; 
	  margin:auto;
	}
  .jssorl-009-spin img {
            animation-name: jssorl-009-spin;
            animation-duration: 1.6s;
            animation-iteration-count: infinite;
            animation-timing-function: linear;
        }

        @keyframes jssorl-009-spin {
            from { transform: rotate(0deg); }
            to { transform: rotate(360deg); }
        }

        /*jssor slider arrow skin 106 css*/
        .jssora106 {display:block;position:absolute;cursor:pointer;}
        .jssora106 .c {fill:#fff;opacity:.3;}
        .jssora106 .a {fill:none;stroke:#000;stroke-width:350;stroke-miterlimit:10;}
        .jssora106:hover .c {opacity:.5;}
        .jssora106:hover .a {opacity:.8;}
        .jssora106.jssora106dn .c {opacity:.2;}
        .jssora106.jssora106dn .a {opacity:1;}
        .jssora106.jssora106ds {opacity:.3;pointer-events:none;}

        /*jssor slider thumbnail skin 101 css*/
        .jssort101 .p {position: absolute;top:0;left:0;box-sizing:border-box;background:#000;}
        .jssort101 .p .cv {position:relative;top:0;left:0;width:100%;height:100%;border:2px solid #000;box-sizing:border-box;z-index:1;}
        .jssort101 .a {fill:none;stroke:#fff;stroke-width:400;stroke-miterlimit:10;visibility:hidden;}
        .jssort101 .p:hover .cv, .jssort101 .p.pdn .cv {border:none;border-color:transparent;}
        .jssort101 .p:hover{padding:2px;}
        .jssort101 .p:hover .cv {background-color:rgba(0,0,0,6);opacity:.35;}
        .jssort101 .p:hover.pdn{padding:0;}
        .jssort101 .p:hover.pdn .cv {border:2px solid #fff;background:none;opacity:.35;}
        .jssort101 .pav .cv {border-color:#fff;opacity:.35;}
        .jssort101 .pav .a, .jssort101 .p:hover .a {visibility:visible;}
        .jssort101 .t {position:absolute;top:0;left:0;width:100%;height:100%;border:none;opacity:.6;}
        .jssort101 .pav .t, .jssort101 .p:hover .t{opacity:1;}
  
  </style>
  <script src="/resources/admin/js/jssor.slider-27.5.0.min.js" type="text/javascript"></script>
  <script type="text/javascript">
        jssor_1_slider_init = function() {

            var jssor_1_SlideshowTransitions = [
              {$Duration:800,x:0.3,$During:{$Left:[0.3,0.7]},$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
              {$Duration:800,x:-0.3,$SlideOut:true,$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
              {$Duration:800,x:-0.3,$During:{$Left:[0.3,0.7]},$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
              {$Duration:800,x:0.3,$SlideOut:true,$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
              {$Duration:800,y:0.3,$During:{$Top:[0.3,0.7]},$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
              {$Duration:800,y:-0.3,$SlideOut:true,$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
              {$Duration:800,y:-0.3,$During:{$Top:[0.3,0.7]},$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
              {$Duration:800,y:0.3,$SlideOut:true,$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
              {$Duration:800,x:0.3,$Cols:2,$During:{$Left:[0.3,0.7]},$ChessMode:{$Column:3},$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
              {$Duration:800,x:0.3,$Cols:2,$SlideOut:true,$ChessMode:{$Column:3},$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
              {$Duration:800,y:0.3,$Rows:2,$During:{$Top:[0.3,0.7]},$ChessMode:{$Row:12},$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
              {$Duration:800,y:0.3,$Rows:2,$SlideOut:true,$ChessMode:{$Row:12},$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
              {$Duration:800,y:0.3,$Cols:2,$During:{$Top:[0.3,0.7]},$ChessMode:{$Column:12},$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
              {$Duration:800,y:-0.3,$Cols:2,$SlideOut:true,$ChessMode:{$Column:12},$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
              {$Duration:800,x:0.3,$Rows:2,$During:{$Left:[0.3,0.7]},$ChessMode:{$Row:3},$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
              {$Duration:800,x:-0.3,$Rows:2,$SlideOut:true,$ChessMode:{$Row:3},$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
              {$Duration:800,x:0.3,y:0.3,$Cols:2,$Rows:2,$During:{$Left:[0.3,0.7],$Top:[0.3,0.7]},$ChessMode:{$Column:3,$Row:12},$Easing:{$Left:$Jease$.$InCubic,$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
              {$Duration:800,x:0.3,y:0.3,$Cols:2,$Rows:2,$During:{$Left:[0.3,0.7],$Top:[0.3,0.7]},$SlideOut:true,$ChessMode:{$Column:3,$Row:12},$Easing:{$Left:$Jease$.$InCubic,$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
              {$Duration:800,$Delay:20,$Clip:3,$Assembly:260,$Easing:{$Clip:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
              {$Duration:800,$Delay:20,$Clip:3,$SlideOut:true,$Assembly:260,$Easing:{$Clip:$Jease$.$OutCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
              {$Duration:800,$Delay:20,$Clip:12,$Assembly:260,$Easing:{$Clip:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
              {$Duration:800,$Delay:20,$Clip:12,$SlideOut:true,$Assembly:260,$Easing:{$Clip:$Jease$.$OutCubic,$Opacity:$Jease$.$Linear},$Opacity:2}
            ];

            var jssor_1_options = {
              $AutoPlay: 0,
              $SlideshowOptions: {
                $Class: $JssorSlideshowRunner$,
                $Transitions: jssor_1_SlideshowTransitions,
                $TransitionsOrder: 1
              },
              $ArrowNavigatorOptions: {
                $Class: $JssorArrowNavigator$
              },
              $ThumbnailNavigatorOptions: {
                $Class: $JssorThumbnailNavigator$,
                $SpacingX: 5,
                $SpacingY: 5
              }
            };

            var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

            /*#region responsive code begin*/

            var MAX_WIDTH = 550;

            function ScaleSlider() {
                var containerElement = jssor_1_slider.$Elmt.parentNode;
                var containerWidth = containerElement.clientWidth;

                if (containerWidth) {

                    var expectedWidth = Math.min(MAX_WIDTH || containerWidth, containerWidth);

                    jssor_1_slider.$ScaleWidth(expectedWidth);
                }
                else {
                    window.setTimeout(ScaleSlider, 30);
                }
            }

            ScaleSlider();

            $Jssor$.$AddEvent(window, "load", ScaleSlider);
            $Jssor$.$AddEvent(window, "resize", ScaleSlider);
            $Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
            /*#endregion responsive code end*/
        };
    </script>

<%@include file="/WEB-INF/views/admin/include/header.jsp" %>
<!-- 컨텐츠 상단바 -->
		<section class="content-header">
          <h1>
            Hotel List
            <small>Preview</small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="/admin/noticeList"><i class="fa fa-dashboard"></i> Hotel Manage</a></li>
            <li><a href="/admin/noticeList">HotelList</a></li>
          </ol>
        </section>
<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->
			<div class="box box-primary">
				<div class="box-header">
					<h3 class="box-title">Hotel Detail</h3>
				</div>
				<!-- /.box-header -->
				
				<div class="box-body">
					<div style= "overflow: hidden;">
					<div class="form-group h_group" style="width:50%; float:left">
						<H2>${hotel.hotel_name }</H2>
					</div>
					<div class="form-group h_group" style="width: 30%; float:left; padding-top:30px;">
					<input type="checkbox" disabled checked /> 할&nbsp;&nbsp;&nbsp;&nbsp;인
					<input type="text" disabled value='${hotel.hotel_discount }' style ="width:50px; margin:0px 5px;"/>%
					&nbsp;&nbsp;&nbsp;&nbsp;평&nbsp;&nbsp;&nbsp;&nbsp;점 :
					<input type="text" disabled value='${hotel.rate }' style ="width:70px; margin:0px 5px;"/>
					</div>
					
					<div class="form-group h_group" style="width: 20%; float:left; padding-top:30px;">
					<input type="button" value="수정" onclick = "modify('${hotel.hotel_code}')"/>
					<input type="button" value="삭제" onclick = "delete_h('${hotel.hotel_code}')"/>
					<input type="button" value="목록" onclick = "location.href='/admin/hotelList'"/>
					</div>
					<hr style="border: 1px solid gray; float:left; width:100%; margin-top:0px;">
					</div>
					<div class="container1">
					  <ul class="tabs">
					    <li class="" id="tab1" data-tab="tab-1">호텔 정보</li>
					    <li class="" id="tab2" data-tab="tab-2">리뷰</li>
					  </ul>
					<div id="tab-1" class="">
					
					<div class="form-group">
						<div style="font-weight:bolder; margin-bottom:10px;">호텔 사진</div>
						<hr style="border: 1px solid gray; float:left; width:100%; margin-top:0px;">
					
					 <div id="jssor_1" style="position:relative;margin:0 auto;top:0px;left:0px;width:980px;height:480px;overflow:hidden;visibility:hidden;">
				        <!-- Loading Screen -->
				        <div data-u="slides" style="cursor:default;position:relative;top:0px;left:0px;width:980px;height:380px;overflow:hidden;">
				            <c:forEach items="${h_image}" var="hotel_image">
											<div>
								                <img data-u="image" src="${ hotel_image.himg_path}" />
								                <img data-u="thumb" src="${ hotel_image.himg_path}" style="width:190; height:90;" />
								            </div>
											
											<!-- <img src="" style="width:150px; height:130px; margin:15 15;"/> -->
							</c:forEach>
        		        </div>
				        <!-- Thumbnail Navigator -->
				        <div data-u="thumbnavigator" class="jssort101" style="position:absolute;left:0px;bottom:0px;width:980px;height:100px;background-color:#000;" data-autocenter="1" data-scale-bottom="0.75">
				            <div data-u="slides">
				                <div data-u="prototype" class="p" style="width:190px;height:90px;">
				                    <div data-u="thumbnailtemplate" class="t"></div>
				                    <svg viewbox="0 0 16000 16000" class="cv">
				                        <circle class="a" cx="8000" cy="8000" r="3238.1"></circle>
				                        <line class="a" x1="6190.5" y1="8000" x2="9809.5" y2="8000"></line>
				                        <line class="a" x1="8000" y1="9809.5" x2="8000" y2="6190.5"></line>
				                    </svg>
				                </div>
				            </div>
				        </div>
				        <!-- Arrow Navigator -->
				        <div data-u="arrowleft" class="jssora106" style="width:55px;height:55px;top:162px;left:30px;" data-scale="0.75">
				            <svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
				                <circle class="c" cx="8000" cy="8000" r="6260.9"></circle>
				                <polyline class="a" points="7930.4,5495.7 5426.1,8000 7930.4,10504.3 "></polyline>
				                <line class="a" x1="10573.9" y1="8000" x2="5426.1" y2="8000"></line>
				            </svg>
				        </div>
				        <div data-u="arrowright" class="jssora106" style="width:55px;height:55px;top:162px;right:30px;" data-scale="0.75">
				            <svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
				                <circle class="c" cx="8000" cy="8000" r="6260.9"></circle>
				                <polyline class="a" points="8069.6,5495.7 10573.9,8000 8069.6,10504.3 "></polyline>
				                <line class="a" x1="5426.1" y1="8000" x2="10573.9" y2="8000"></line>
				            </svg>
				        </div>
				    </div>
				    <script type="text/javascript">jssor_1_slider_init();</script>
					<br/>
				    <hr style="border: 1px solid gray; float:left; width:100%; margin-top:0px;">
					</div>
					
					<div class="form-group">
						<label>호텔 내 시설</label>
						<center>
						<div style="border:1px solid; width:88%; text-align: left;">
							<c:forEach items="${hotel_f }" var="hotel_f">
								<span style="margin: 10 10;"><input type="checkbox" checked disabled >${hotel_f.hf_name }</span>		
							</c:forEach>
						</div>
						</center>
					</div>					
					
					<div class="form-group" >
						<label>호텔 정보</label>
						<div class="box-body">
						<table border =1; class="tb_css">
							<tr>
								<td style="width: 15%">국가</td>
								<td style="width: 35%">${hotel.nation_name }</td>
								<td style="width: 15%">지역</td>
								<td style="width: 35%">${hotel.city_name }</td>
							</tr>
							<tr>
								<td>상세 주소</td>
								<td>${hotel.address }</td>
								<td>등급</td>
								<td>${hotel.hotel_class }</td>
							</tr>
							<tr>
								<td>상세정보</td>
								<td colspan=3>
								 	<div class="detail">
										<div ><h4>핵심 정보</h4>
											 <input class="detail_data" disabled type="text" value="${hotel.hotel_core_info }">
										</div>
										<div><h4>체크인시 주의사항</h4>
											 <input class="detail_data" disabled type="text" value="${hotel.hotel_precautions }">
										</div>
										<div><h4>체크인/체크아웃</h4>
											 <input class="detail_data" disabled type="text" value="${hotel.hotel_checktime }">
										</div>
										<div><h4>기타 정보</h4>
											 <input class="detail_data" disabled type="text" value="${hotel.hotel_etc }">
										</div>	
									</div>								
								</td>
							</tr>
							<tr>
								<td>객실정보</td>
								<td colspan=3>
									<div>
										<table border =1; class="tb_css" id="tb_room">
											<tr>
												<td rowspan = 2>객실이름</td>
												<td colspan = 2>숙박인원</td>
												<td rowspan = 2>숙박요금</td>
												<td rowspan = 2>객실상세정보</td>
											</tr>
											<tr>
												<td>일반</td>
												<td>어린이</td>
											</tr>
											<c:forEach items="${room}" var="roomVO">
												<tr>
												<td>${roomVO.room_name }</td>
												<td>${roomVO.room_peoplenum }</td>
												<td>${roomVO.room_peoplenum_k }</td>
												<td>${roomVO.room_price }</td>
												<td><input type="button" value="상세보기" onclick="r_detail('${roomVO.room_idx}','${roomVO.hotel_code}');"/></td>
											</tr>
											</c:forEach>
										</table>
									</div>
								</td>
							</tr>
						</table>
						</div>
					</div>
					</div>
					<div id="tab-2" class="tab-content">
						<table class="table table-bordered">
						<tr>
							<th style="width: 10px">BNO</th>
							<th>TITLE</th>
							<th>RATE</th>
							<th>WRITER</th>
							<th>DATE</th>
						</tr>
					
					
					<c:forEach items="${review}" begin="${listNum.s_listNum}" end="${listNum.e_listNum}" var="review" >
					
						<tr>
							<td>${review.rownum }</td>
							<td>
							<a href="#" onclick="review_d('${review.review_idx}','${review.hotel_code}')"> ${review.review_title }</a>
							</td>
							<td>${review.review_rate }</td>
							<td>${review.member_id }</td>
							<td>${review.review_date }</td>
						</tr>
					</c:forEach> 
					
					</table>
					</div>
					</div>
				</div>
				<!-- /.box-body -->
				<div class="box-footer">
				
					<div class="text-center">
							<ul class="pagination">
								 
								<%--  <c:if test="${pageMaker.prev}">
								<li><a
									href="list${pageMaker.makeSearch(pageMaker.startPage - 1) }">&laquo;</a></li>
								</c:if>
	 --%>
								 <c:forEach begin="${listNum.strNum}"
									end="${listNum.cnt}" var="idx">
								 	<li
										<c:out value="${listNum.nowNum == idx?'class =active':''}"/>> 
										<a href="/admin/hotelDetail?hotel_code=${hotel.hotel_code}&tab=2&nowNum=${idx}">${idx}</a>
									</li>
								 </c:forEach>
						<%--
								<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
									<li><a
										href="list${pageMaker.makeSearch(pageMaker.endPage +1) }">&raquo;</a></li>
								</c:if> --%>
								
							</ul>
						</div>
					
				</div>
			</div>
			<!-- /.box -->
		</div>
		<!--/.col (left) -->

	</div>
	<!-- /.row -->
</section>
<!-- /.content -->
</div>
</section>
<script>
	function r_detail( r_idx , h_code ){
		var popUrl = "/admin/roomDetail?room_idx=" + r_idx+"&hotel_code="+h_code;	//팝업창에 출력될 페이지 URL

		var popOption = "width=500, height=650, resizable=no, scrollbars=no, status=no;";    //팝업창 옵션(optoin)

		window.open(popUrl,"",popOption);
	}
	
	function review_d(idx, h_code){
		var openDialog = function(uri, name, options, closeCallback) {
		    var win = window.open(uri, name, options);
		    var interval = window.setInterval(function() {
		        try {
		            if (win == null || win.closed) {
		                window.clearInterval(interval);
		                closeCallback(win);
		            }
		        }
		        catch (e) {
		        }
		    }, 1000);
		    return win;
		};
		var url = "/admin/reviewDetail?idx=" + idx;	//팝업창에 출력될 페이지 URL

		var option = "width=650, height=500, resizable=no, scrollbars=no, status=no;";    //팝업창 옵션(optoin)

	/* 	window.open(popUrl,"",popOption); */
		
		openDialog(url, "review Detail", option, function(win) {
		    //팝업창이 닫히게 될 때 실행 된 내용
		    
			window.location.href="/admin/hotelDetail?hotel_code="+h_code+"&tab=2";
		});

	}
	
	function modify( hotel_code ){
		window.location.href="/admin/hotelModify?hotel_code="+hotel_code;
	}
	
	function delete_h( hotel_code ){
		if (confirm("정말로 삭제하시겠습니까?")){
			window.location.href="/admin/hotelDelete?hotel_code="+hotel_code;
			
		}else{
			alert("취소되었습니다.");
		}
	}
	$(document).ready(function(){
		var tab1 = document.getElementById("tab1");
		var tab2 = document.getElementById("tab2");
		var content1 = document.getElementById("tab-1");
		var content2 = document.getElementById("tab-2");
		
		if(${modal_num} == 1){
			tab1.setAttribute('class','tab-link current');
			tab2.setAttribute('class','tab-link');
			content1.setAttribute('class','tab-content current');
			content2.setAttribute('class','tab-content');
		}else{
			tab1.setAttribute('class','tab-link');
			tab2.setAttribute('class','tab-link current');
			content1.setAttribute('class','tab-content');
			content2.setAttribute('class','tab-content current');
		}
		
		var tab_id1 = $(this).attr('data-tab');
		if(tab_id1 == "tab-1"){
			$("#modi").show();
		}else{
			$("#modi").hide();
		}
		
		$('ul.tabs li').click(function(){
			var tab_id = $(this).attr('data-tab');
			$('ul.tabs li').removeClass('current');
			$('.tab-content').removeClass('current');

			$(this).addClass('current');
			$("#"+tab_id).addClass('current');
			
			if(tab_id == "tab-1"){
				$("#modi").show();
			}else{
				$("#modi").hide();
			}
		})

	})
</script>


    
<%@include file="/WEB-INF/views/admin/include/footer.jsp" %>


 
 
  