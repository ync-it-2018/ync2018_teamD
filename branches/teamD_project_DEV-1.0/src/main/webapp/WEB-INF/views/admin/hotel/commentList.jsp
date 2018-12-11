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
				
				<div class="box-body">
					
					<<table class="table table-bordered">
						<tr>
							<th style="width: 10px">BNO</th>
							<th>TITLE</th>
							<th>RATE</th>
							<th>HOTEL</th>
							<th>WRITER</th>
							<th>DATE</th>
						</tr>
					
					
					<c:forEach items="${allreview}" begin="${listNum.s_listNum}" end="${listNum.e_listNum}" var="review" >
					
						<tr>
							<td>${review.rownum }</td>
							<td>
							<a href="#" onclick="review_d('${review.review_idx}','${review.hotel_code}')"> ${review.review_title }</a>
							</td>
							<td>${review.review_rate }</td>
							<td>${review.hotel_name}</td>
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
										<a href="/admin/commentList?nowNum=${idx}">${idx}</a>
									</li>
								 </c:forEach>
						<%--
								<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
									<li><a
										href="list${pageMaker.makeSearch(pageMaker.endPage +1) }">&raquo;</a></li>
								</c:if> --%>
								
							</ul>
						</div>
				<!-- /.box-footer-->
			</div>
		</div>
		<!--/.col (left) -->
		
	</div>
	<!-- /.row -->
</section>

    
<%@include file="/WEB-INF/views/admin/include/footer.jsp" %>
 
 
  