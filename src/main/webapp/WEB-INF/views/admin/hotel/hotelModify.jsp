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
  .input_f{
  	width:80%; 
  	margin:10 10;
  }
  </style>
  <script src="/resources/admin/js/jssor.slider-27.5.0.min.js" type="text/javascript"></script>
 <script>
 	function add_f(){
 		var select_f;
 		select_f = $("#hotel_f option:selected").val();
 		
 		alert(select_f);
 	}
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
					<div class="form-group h_group" style="width:50%; float:left">
						<H2>${hotel.hotel_name }</H2>
					</div>
					<div class="form-group h_group" style="width: 30%; float:left; padding-top:30px;">
					<input type="checkbox"   checked /> 할&nbsp;&nbsp;&nbsp;&nbsp;인
					<input type="text"   value='${hotel.hotel_discount }' style ="width:50px; margin:0px 5px;"/>%
					&nbsp;&nbsp;&nbsp;&nbsp;평&nbsp;&nbsp;&nbsp;&nbsp;점 :
					<input type="text"   value='${hotel.rate }' style ="width:70px; margin:0px 5px;"/>
					</div>
					
					<div class="form-group h_group" style="width: 20%; float:left; padding-top:30px;">
					<input type="button" value="완료" />
					<input type="button" value="취소"/>
					</div>
					<hr style="border: 1px solid gray; float:left; width:100%; margin-top:0px;">
					
					<div class="form-group">
						<label>호텔 이미지</label>
						<div style="width:88%; text-align: left; margin: 0 auto;">
							<form id = "hotel_f" style="width:100%; text-align:center; margin: atuo;">
								<select name ="hote_f" size = "8"  style="width: 100%;">
									<c:forEach items="${h_image}" var="h_image" >
										<option value="${h_image.himg_name}">${h_image.himg_name}</option>
									</c:forEach>
								</select>
							</form>
							<div style="text-align:right; margin:5 5;">
								<input type="button" value=" 추가 " onclick="add_f()">
								<input type="button" value=" 삭제 ">
							</div>
						</div>
					</div>
					
					<div class="form-group">
						<label>호텔 내 시설</label>
							<div style="width:88%; text-align: left; margin: 0 auto;">
							<div id="pre_set" style="display:none">
							    <input type="text" name="" value="" class="input_f"> <input type="button" value="삭제" onclick="remove_item(this)">
							</div>
							<form id = "hotel_f" style="width:100%; text-align:center; margin: atuo;">
								<select name ="hote_f" size = "8"  style="width: 100%;">
									<c:forEach items="${hotel_f}" var="hotel_f" >
										<option value="${hotel_f.hf_name}">${hotel_f.hf_name}</option>
									</c:forEach>
								</select>
							</form>
							<div style="text-align:right; margin:5 5;">
								<input type="button" value=" 추가 " onclick="add_f()">
								<input type="button" value=" 삭제 ">
							</div>
						</div>
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
											 <input class="detail_data"   type="text" value="${hotel.hotel_core_info }">
										</div>
										<div><h4>체크인시 주의사항</h4>
											 <input class="detail_data"   type="text" value="${hotel.hotel_precautions }">
										</div>
										<div><h4>체크인/체크아웃</h4>
											 <input class="detail_data"   type="text" value="${hotel.hotel_checktime }">
										</div>
										<div><h4>기타 정보</h4>
											 <input class="detail_data"   type="text" value="${hotel.hotel_etc }">
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
												<td><input type="button" value="상세보기" onclick="r_detail('${roomVO.room_idx}');"/></td>
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
				<!-- /.box-body -->
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
	function r_detail( r_idx ){
		var popUrl = "/admin/roomDetail?room_idx=" + r_idx;	//팝업창에 출력될 페이지 URL

		var popOption = "width=500, height=650, resizable=no, scrollbars=no, status=no;";    //팝업창 옵션(optoin)

		window.open(popUrl,"",popOption);
	}
	
	function modify( hotel_code ){
		window.location.href="/admin/hotelModify?hotel_code="+hotel_code;
	}
</script>


    
<%@include file="/WEB-INF/views/admin/include/footer.jsp" %>


 
 
  