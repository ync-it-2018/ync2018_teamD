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
function ma_delete(admin_id){
	if (confirm("정말로 삭제하시겠습니까?")){
		window.location.href="/admin/memberadminDelete?admin_id="+admin_id;
		
	}else{
		alert("취소되었습니다.");
	}
}
function ma_modify(admin_id){
	window.location.href="/admin/memberadminModify?admin_id="+admin_id;
}
function a_insert(){
	window.location.href="/admin/memberadminInsert";
}
</script>
		<section class="content-header">
          <h1>Member Manage</h1>
          <ol class="breadcrumb">
            <li><a href="/admin/memberList"><i class="fa fa-dashboard"></i> Member Manage</a></li>
            <li><a href="/admin/memberList">Admin MemberList</a></li>
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
            	<h3 class="box-title">Admin MemberList</h3>
            	<input type="button" value="새 관리자 추가" style="margin-left:640px;" onclick = "a_insert()"/>
            </div>
            
            <div class="box-body">
				<table class="table table-bordered">
					<tr>
						<th style="width: 10px">NO</th>
						<th>ID</th>
						<th>NAME</th>
						<th>E-mail</th>
						<th>GRADE</th>
						<th>USE</th>
						<th>Manage</th>
					</tr>
				<c:forEach items="${memberadminList}" var="AdminVO" varStatus="status">
					<tr>
						<td>${AdminVO.admin_idx }</td>
						<td>${AdminVO.admin_id }</td>
						<td>${AdminVO.admin_name }</td>
						<td>${AdminVO.admin_email }</td>
						<td>${AdminVO.admin_grade}</td>
						<td>${AdminVO.admin_out }</td>
						<td>
							<input type="button" value="수정" onclick= "ma_modify('${AdminVO.admin_id}')" id='modi'/>
							<input type="button" value="삭제" onclick= "ma_delete('${AdminVO.admin_id}')" id="dele"/>
						</td>
					</tr>
				</c:forEach>
				</table>
			</div>
			<div class="box-footer">
				<div class="text-center">
					<ul class="pagination">
						<c:if test="${pageMaker.prev}">
							<li><a href="memberadminList${pageMaker.makeSearch(pageMaker.startPage - 1) }">&laquo;</a></li>	
						</c:if>
						<c:forEach begin="${pageMaker.startPage}"
							end="${pageMaker.endPage }" var="idx">
							<li <c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
								 <a href="memberadminList${pageMaker.makeSearch(idx)}">${idx}</a>
							</li> 
						</c:forEach>
						<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
							<li><a href="memberadminList${pageMaker.makeSearch(pageMaker.endPage +1) }">&raquo;</a></li>
						</c:if>
					</ul>
				</div>
			</div> 
         </div> 
        </div>
      </div> 
  </section>

    
<%@include file="/WEB-INF/views/admin/include/footer.jsp" %>
 
 
  