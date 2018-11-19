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
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->

			<div class="box">
				<div class="box-header with-border">
					<h3 class="box-title">Hotel List</h3>
				</div>
				
				<div class='box-body'>

					 <select name="searchType">
						<option value="n"
							<c:out value="${cri.searchType == null?'selected':''}"/>>
							---</option>
						<option value="t"
							<c:out value="${cri.searchType eq 't'?'selected':''}"/>>
							Hotel</option>
						<option value="c"
							<c:out value="${cri.searchType eq 'c'?'selected':''}"/>>
							Country</option>
						<option value="w"
							<c:out value="${cri.searchType eq 'w'?'selected':''}"/>>
							City</option>
						<option value="tc"
							<c:out value="${cri.searchType eq 'tc'?'selected':''}"/>>
							Hotel OR Country</option>
						<option value="cw"
							<c:out value="${cri.searchType eq 'cw'?'selected':''}"/>>
							Country OR City</option>
						<option value="tcw"
							<c:out value="${cri.searchType eq 'tcw'?'selected':''}"/>>
							Hotel OR Country OR City</option>
					</select> <input type="text" name='keyword' id="keywordInput"
						value='${cri.keyword }'>
					<button id='searchBtn'>Search</button>
				</div>	
				<div class="box-body">
					
					<table class="table table-bordered">
						<tr>
							<th style="width: 10px">BNO</th>
							<th>Hotel</th>
							<th>Country</th>
							<th>City</th>
							<th>Rating</th>
						</tr>
					
					
					<c:forEach items="${list}" var="HotelVO">
					
						<tr>
							<td>1</td>
							<td>
							<a href="/admin/hotelDetail?hotel_code=${HotelVO.hotel_code }"> ${HotelVO.hotel_name }</a>
							</td>
							<td>${HotelVO.nation_name }</td>
							<td>${HotelVO.city_name }</td>
							<td>${HotelVO.rate }</td>
						</tr>
					</c:forEach>
					
					</table>

				</div>
				<!-- /.box-body -->
				<div class="box-footer">
				
					<div class="text-center">
							<ul class="pagination">
								 
								 <c:if test="${pageMaker.prev}">
								<li><a
									href="list${pageMaker.makeSearch(pageMaker.startPage - 1) }">&laquo;</a></li>
								</c:if>
	
								<c:forEach begin="${pageMaker.startPage }"
									end="${pageMaker.endPage }" var="idx">
									<li
										<c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
										<a href="list${pageMaker.makeSearch(idx)}">${idx}</a>
									</li>
								</c:forEach>
	
								<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
									<li><a
										href="list${pageMaker.makeSearch(pageMaker.endPage +1) }">&raquo;</a></li>
								</c:if>
								
							</ul>
						</div>
					
				</div>
				<!-- /.box-footer-->
			</div>
		</div>
		<!--/.col (left) -->
		
	</div>
	<!-- /.row -->
</section>

    
<%@include file="/WEB-INF/views/admin/include/footer.jsp" %>
 
 
  