<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page session="false"%>

<%@ include file="/WEB-INF/views/admin/include/header.jsp" %>
<style>
	.container{
  	  width: 800px;
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
	  font-size:18px;
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
	  height:400px;
	  text-align:center; 
	  margin:auto;
	  font-size:20px;
	}
	.tb_booking_css{
	  width:95%; 
	  height:180px;
	  text-align:center; 
	  margin:auto;
	  font-size:20px;
	}
	.box{
		height:700px;
	}
</style>
<script>
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

function modify(member_id){
	window.location.href="/admin/memberModify?member_id="+member_id;
}
</script>
		<section class="content-header">
          <h1>Member Manage</h1>
          <ol class="breadcrumb">
            <li><a href="/admin/memberList"><i class="fa fa-dashboard"></i> Member Manage</a></li>
            <li><a href="/admin/memberList">MemberDetail</a></li>
          </ol>
        </section>
    <!-- Main content -->
    <section class="content">
      <div class="row">
      <!-- left column -->
      <div class="col-md-12">
        <!-- general form elements -->

		<div class="box">
            <div class="box-header with-border">
            	<h3 class="box-title">MemberDetail</h3>
            </div>
            <hr style="border: 1px solid gray; float:left; width:100%; margin-top:0px;">
            <div class="container">
			  <ul class="tabs">
			    <li class="tab-link current" data-tab="tab-1">상세 조회</li>
			    <li class="tab-link" data-tab="tab-2">예약 현황</li>
			  </ul>
  			  <div id="tab-1" class="tab-content current">
  			  	<div class="form-group" >
						<div class="box-body">
						<table border =1; class="tb_css">
							<tr>
								<td style="width: 15%">* ID</td>
								<td style="width: 35%" colspan = 3>${member.member_id }</td>
							</tr>
							<tr>
								<td>* Password</td>
								<td colspan = 3>
									<c:forEach begin="1" end="${fn:length(member.member_password) }">
									*
									</c:forEach>
								</td>
							</tr>
							<tr>
								<td style="width:25%">* First Name</td>
								<td style="width:25%">${member.member_fianame}</td>
								<td style="width:25%">* Last Name</td>
								<td style="width:25%">${member.member_laname}</td>
							</tr>
							<tr>
								<td>Address</td>
								<td colspan = 3>${member.member_address}</td>
							</tr>
							<tr>
								<td>* Country</td>
								<td colspan = 3>${member.nation_name}</td>
							</tr>
							<tr>
								<td>Tel Number</td>
								<td colspan = 3>${member.member_pnumber }</td>
							</tr>
						</table>
						</div>
						<p style = "text-align:right; margin-bottom:-20px;">* 필수입력사항</p>
					</div>
  			  </div>
  			  <div id="tab-2" class="tab-content">
  			  	<p style="margin-left:10px;">회원 이용 예정 호텔</p>
				<table border =1; class="tb_booking_css">
					<tr>
						<td>호텔명</td>
						<td>객실</td>
						<td>체크인</td>
						<td>체크아웃</td>
					</tr>
					<c:forEach items="${booking}" var="memberVO" varStatus="status">
						<tr>
							<td>${memberVO.hotel_name }</td>
							<td>${memberVO.room_name }</td>
							<td>${memberVO.booking_in_date}</td>
							<td>${memberVO.booking_out_date }</td>
						</tr>
					</c:forEach>
				</table>
				<p style="margin:10px 0px 10px 10px;">회원 이용 완료 호텔</p>
				<table border =1; class="tb_booking_css">
					<tr>
						<td>호텔명</td>
						<td>객실</td>
						<td>체크인</td>
						<td>체크아웃</td>
					</tr>
					<c:forEach items="${bookingEnd}" var="memberVO" varStatus="status">
						<tr>
							<td>${memberVO.hotel_name }</td>
							<td>${memberVO.room_name }</td>
							<td>${memberVO.booking_in_date}</td>
							<td>${memberVO.booking_out_date }</td>
						</tr>
					</c:forEach>
				</table>
  			  </div>
			</div>
			<input type="button" value="수정" onclick= "modify('${member.member_id}')" class="btn btn-primary" style="margin:20px 0px 10px 830px ;" id='modi'/>
         </div> 
        </div>
      </div> 
  </section>

    
<%@include file="/WEB-INF/views/admin/include/footer.jsp" %>
 
 
  