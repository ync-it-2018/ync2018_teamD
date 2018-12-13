<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

<%@include file="/WEB-INF/views/admin/include/header.jsp" %>
 	<section class="content-header">
     <h1>FAQ Manage</h1>
       <ol class="breadcrumb">
         <li><a href="/admin/FAQList"><i class="fa fa-dashboard"></i> FAQ Manage</a></li>
         <li><a href="/admin/FAQList">FAQList</a></li>
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
            	<h3 class="box-title">Member List</h3>
            </div>
            
            <div class="box-body">
				<table class="table table-bordered">
					<tr>
						<th style="width: 10px">NO</th>
						<th>Title</th>
						<th>ID</th>
						<th>Join_Date</th>
						<th>Manage</th>
					</tr>
				 <c:forEach items="${FaqList}" var="FaqVO" varStatus="status">
					<tr>
						<td>${FaqVO.faq_idx }</td>
						<!--<td>${status.count} </td>-->
						<td>
						<a href="/admin/memberDetail?member_id=${FaqVO.faq_title }"> ${FaqVO.faq_title }</a>
						</td>
						<td>${FaqVO.admin_id }</td>
						<td>${FaqVO.faq_date}</td>
						<td>
							<input type="button" value="수정" onclick= "modify('')" id='modi'/>
							<input type="button" value="삭제" onclick= "m_delete('')" id="dele"/>
						</td>
					</tr>
				</c:forEach> 
				</table>
			</div>
			<%-- <div class="box-footer">
				<div class="text-center">
					<ul class="pagination">
						<c:if test="${pageMaker.prev}">
							<li><a href="memberList${pageMaker.makeSearch(pageMaker.startPage - 1) }">&laquo;</a></li>	
						</c:if>
						<c:forEach begin="${pageMaker.startPage}"
							end="${pageMaker.endPage }" var="idx">
							<li <c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
								 <a href="memberList${pageMaker.makeSearch(idx)}">${idx}</a>
							</li> 
						</c:forEach>
						<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
							<li><a href="memberList${pageMaker.makeSearch(pageMaker.endPage +1) }">&raquo;</a></li>
						</c:if>
					</ul>
				</div>
			</div>  --%>
         </div> 
        </div>
      </div> 
  </section>

    
<%@include file="/WEB-INF/views/admin/include/footer.jsp" %>
 
 
  