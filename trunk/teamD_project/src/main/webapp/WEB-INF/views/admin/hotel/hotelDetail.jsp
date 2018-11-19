<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

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
<table class="table table-bordered">
	<tr>
		<th style="width: 10px">BNO</th>
		<th>Hotel</th>
		<th>Country</th>
		<th>City</th>
		<th>Rating</th>
	</tr>
	<tr>
		<th style="width: 10px">1</th>
		<th>${HotelVO.hotel_name }</th>
		<th>${HotelVO.city_code }</th>
		<th>${HotelVO.nation_name }</th>
		<th>${HotelVO.rate }</th>
	</tr>
	
</table>
</section>

    
<%@include file="/WEB-INF/views/admin/include/footer.jsp" %>
 
 
  