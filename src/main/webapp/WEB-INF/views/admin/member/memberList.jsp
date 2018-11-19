<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/admin/include/header.jsp" %>
<style>
	.searchloca {
		float:right;
	}
</style>
		<section class="content-header">
          <h1>Member List</h1>
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
            	<h3 class="box-title">member List</h3>
            </div>
            
            <div class="box body">
           		<button class = "searchloca" id='searchBtn'>Search</button>
           		<input class = "searchloca" type="text" name='keyword' id="keywordInput" value='${cri.keyword }'>
            	<select name="searchType" class = "searchloca">
					<option value="n"
						<c:out value="${cri.searchType == null?'selected':''}"/>>
						---</option>
					<option value="t"
						<c:out value="${cri.searchType eq 'n'?'selected':''}"/>>
						Name</option>
					<option value="c"
						<c:out value="${cri.searchType eq 'em'?'selected':''}"/>>
						E-mail</option>
				</select>
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
				<c:forEach items="${list}" var="memberVO" varStatus="status">
					<tr>
						<td>${status.count} </td>
						<td>
						<a href=""> ${memberVO.MEMBER_ID }</a>
						</td>
						<td>${memberVO.MEMBER_FIANAME }</td>
						<td>${memberVO.MEMBER_JOINDATE }</td>
						<td><button id=''>수정</button><button id=''>삭제</button></td>
					</tr>
				</c:forEach>
				</table>
			</div>
			<div class="box-footer">
				<div class="text-center">
					<ul class="pagination">
						 <c:if test="${pageMaker.prev}">
						<li><a href="list${pageMaker.makeSearch(pageMaker.startPage - 1) }">&laquo;</a></li>								</c:if>
						<c:forEach begin="${pageMaker.startPage }"
							end="${pageMaker.endPage }" var="idx">
							<li<c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
								<a href="list${pageMaker.makeSearch(idx)}">${idx}</a>
							</li>
						</c:forEach>
						<c:if test="${pageMaker.next && pageMaker.endPage > 0}">									<li><a
								href="list${pageMaker.makeSearch(pageMaker.endPage +1) }">&raquo;</a></li>
						</c:if>
					</ul>
				</div>
			</div> 
         </div> 
        </div>
      </div> 
  </section>

    
<%@include file="/WEB-INF/views/admin/include/footer.jsp" %>
 
 
  