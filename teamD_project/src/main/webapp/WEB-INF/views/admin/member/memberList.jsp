<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>

<%@ include file="/WEB-INF/views/admin/include/header.jsp" %>

<style>
	.searchloca {
		float:right;
	}
</style>
<script>
function modify(member_id){
	window.location.href="/admin/memberModify?member_id="+member_id;
	
}
function m_delete(member_id){
	if (confirm("정말로 삭제하시겠습니까?")){
		window.location.href="/admin/memberDelete?member_id="+member_id;
		
	}else{
		alert("취소되었습니다.");
	}
}
</script>
		<section class="content-header">
          <h1>Member Manage</h1>
          <ol class="breadcrumb">
            <li><a href="/admin/memberList"><i class="fa fa-dashboard"></i> Member Manage</a></li>
            <li><a href="/admin/memberList">MemberList</a></li>
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
						<th>E-mail</th>
						<th>Name</th>
						<th>Join_Date</th>
						<th>Manage</th>
					</tr>
				<c:forEach items="${memberList}" var="memberVO" varStatus="status">
					<tr>
						<td>${memberVO.member_idx }</td>
						<!--<td>${status.count} </td>-->
						<td>
						<a href="/admin/memberDetail?member_id=${memberVO.member_id }"> ${memberVO.member_id }</a>
						</td>
						<td>${memberVO.member_fianame }</td>
						<td>${memberVO.member_joindate}</td>
						<td>
							<input type="button" value="수정" onclick= "modify('${memberVO.member_id}')" id='modi'/>
							<input type="button" value="삭제" onclick= "m_delete('${memberVO.member_id}')" id="dele"/>
						</td>
					</tr>
				</c:forEach>
				</table>
			</div>
			<div class="box-footer">
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
			</div> 
         </div> 
        </div>
      </div> 
  </section>

    
<%@include file="/WEB-INF/views/admin/include/footer.jsp" %>
 
 
  