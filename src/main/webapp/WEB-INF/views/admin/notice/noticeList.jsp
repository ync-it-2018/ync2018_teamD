<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

<%@include file="/WEB-INF/views/admin/include/header.jsp" %>
	<!-- 컨텐츠 상단바 -->
	<section class="content-header">
          <h1>
            Notice List
            <small>Preview</small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="/admin/noticeList"><i class="fa fa-dashboard"></i> Notice</a></li>
            <li><a href="/admin/noticeList">noticeList</a></li>
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
              	<h3>Notice</h3> 
            </div>
            <div class="box-body" style=" padding-bottom:0px;" >
					<table class="table table-bordered" style="margin:10px 10px;">
					<tr>
							<th style="width: 10px">BNO</th>
							<th>TITLE</th>
							<th style="width: 20%">START</th>
							<th style="width: 20%">END</th>
							<th style="width: 15%">NOTICE</th>
						</tr>
					
					
					 <c:forEach items="${list}" begin="${listNum.s_listNum}" end="${listNum.e_listNum}" var="Notice">
					
						<tr>
							<td>${Notice.rownum }</td>
							<td>
							<a href="/admin/noticeDetail?idx=${Notice.notice_idx }"> ${Notice.notice_title }</a>
							</td>
							<td>${Notice.notice_date }</td>
							<td>${Notice.notice_days }</td>
							<td>${Notice.notice_chk }</td>
						</tr>
					</c:forEach>
	
					</table>
					<div style="text-align:right;">
						<input type="button" value="Write" style="margin-right: 20px;"/>
					</div>
          </div>
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
								<a href="/admin/NoticeList?strNum=1&nowNum=${idx}">${idx}</a>
							</li>
						 </c:forEach>
				<%--
						<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
							<li><a
								href="list${pageMaker.makeSearch(pageMaker.endPage +1) }">&raquo;</a></li>
						</c:if> --%>
					</ul>
				</div>
				<!--/.box-footer -->	
			</div>	
      </div><!--/.col (left) -->
      </div>   <!-- /.row -->
    </section><!-- /.content -->

    
<%@include file="/WEB-INF/views/admin/include/footer.jsp" %>
 
 
  