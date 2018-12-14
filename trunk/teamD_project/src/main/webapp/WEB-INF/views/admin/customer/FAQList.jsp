<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

<%@include file="/WEB-INF/views/admin/include/header.jsp" %>

<script>
/* function modify(member_id){
	window.location.href="/admin/memberModify?member_id="+member_id;
	
} */
function faq_delete(faq_idx){
	if (confirm("정말로 삭제하시겠습니까?")){
		window.location.href="/admin/FAQDelete?faq_idx="+faq_idx;
	}else{
		alert("취소되었습니다.");
	}
}
</script>

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
            	<input type="button" value="새 FAQ 추가" style="margin-left:630px;" onclick = "faq_insert()"/>
            </div>
            
            <div class="box-body">
				<table class="table table-bordered">
					<tr>
						<th style="width: 10px">NO</th>
						<th>Title</th>
						<th>ID</th>
						<th>Join_Date</th>
						<th>Vision</th>
						<th>Manage</th>
					</tr>
				 <c:forEach items="${FaqList}" var="FaqVO" varStatus="status">
					<tr>
						<td>${FaqVO.faq_idx }</td>
						<!--<td>${status.count} </td>-->
						<td>
						<!-- <a href="/admin/memberDetail?member_id=${FaqVO.faq_title }"> --> ${FaqVO.faq_title }<!-- </a> -->
						</td>
						<td>${FaqVO.admin_id }</td>
						<td>${FaqVO.faq_date}</td>
						<td>${FaqVO.faq_out }</td>
						<td>
							<input type="button" value="수정" onclick= "modify('')" id='modi'/>
							<input type="button" value="삭제" onclick= "faq_delete('${FaqVO.faq_idx }')" id="dele"/>
						</td>
					</tr>
				</c:forEach> 
				</table>
			</div>
			 <div class="box-footer">
				<div class="text-center">
					<ul class="pagination">
						 <c:forEach begin="${FaqpageNum.strNum}"
							end="${FaqpageNum.cnt}" var="idx">
						 	<li
								<c:out value="${FaqpageNum.nowNum == idx?'class =active':''}"/>> 
								<a href="/admin/FAQList?strNum=1&nowNum=${idx}">${idx}</a>
							</li>
						 </c:forEach> 
					</ul>
				</div>
			</div> 
         </div> 
        </div>
      </div> 
  </section>

    
<%@include file="/WEB-INF/views/admin/include/footer.jsp" %>
 
 
  