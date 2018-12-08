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
       
    </script>

				<div class="box-body">	
				<div style= "overflow: hidden; margin:0 auto;">
					<div class="form-group h_group" style="width:60%; float:left">
						<H2>${data.review_title }</H2>
					</div>
					
					<div class="form-group h_group" style="width: 40%; float:left; padding-top:30px;">
					<input type="button" value="수정" onclick = "modify('${hotel.hotel_code}')"/>
					<input type="button" value="삭제" onclick = "delete_h('${hotel.hotel_code}')"/>
					<input type="button" value="목록"/>
					</div>
					</div>			
					<div class="form-group" style="text-align:right;">
						${data.review_date}
					</div>
					<div class="form-group" style="">
						청 결 도  :  ${data.review_clean}
					</div>
					<div class="form-group" style="">
						서 비 스  :  ${data.review_service}
					</div>
					<div class="form-group" style="">
						편 안 함  :  ${data.review_comfort}
					</div>
					<div class="form-group" style="">
						관리 상태  :  ${data.review_state}
					</div>
					<div class="form-group" style="">
						위치, 주변지역  :  ${data.review_local}
					</div>
					<div class="form-group" style="overflow: hidden;">
					<div class="form-group" style="float:left; width:80%">
						평    점  :  ${data.review_rate}
					</div>
					<div class="form-group" style="float:left; width:20%">
						작 성 자  :  ${data.member_id}
					</div>
					</div>
					<div class="form-group" style="border: 1px solid; padding: 10 10;">
						 ${data.review_content}
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

 
 
  