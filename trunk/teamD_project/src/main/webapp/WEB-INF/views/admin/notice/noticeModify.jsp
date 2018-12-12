<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>


<%@include file="/WEB-INF/views/admin/include/header.jsp" %>
<script>
	$(document).ready(function() {
	});
	
</script>
	<!-- 컨텐츠 상단바 -->
	<section class="content-header">
          <h1>
            Notice
            <small>Preview</small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="/admin/noticeList"><i class="fa fa-dashboard"></i> Notice</a></li>
            <li><a href="/admin/noticeList">noticeWrite</a></li>
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
            	<h3>Notice Write</h3>
            </div>
            <div class="box-body" >
            	<div style= "width: 90%; margin: 0 auto;">
            	<form id="noticeForm"  method="POST" action="/admin/n_write">
            	<input type="hidden" name="notice_chk" value="Y"/>
            	<input type="hidden" name="admin_id" value="admin"/>
	            	<table style="width:100%; border-spacing: 5px; border-collapse:initial;">
		            	<tr>
		            		<td>제  목</td>
		            		<td colspan="3"><input type="text" name="notice_title" style="width:90%;" /></td>
		            	</tr>
		            	<tr>
		            		<td>게시 시작일</td>
		            		<td><input type="date" id="startDate" name="notice_date" value="" style="height:28px;"></td>
		            		<td>게시 기간</td>
		            		<td><input type="text" id="days" name="notice_days" value="">일</td>
		            	</tr>
		            	<tr>
		            		<td>이 미 지</td>
		            		<td><input type="file" name="notice_img" accept="image/*"/></td>
		            	</tr>
		            	<tr>
		            		<td>내  용</td>
		            		<td colspan="3"><input type="text" name = "notice_content" style="width:95%; height:200px;"/>
		            	</tr>
					</table>
					<input type="button" value="취소"/>
					<input type="submit" value="확인"/>
				</form>
				</div>
			</div><!--/box body -->
		</div>
      </div><!--/.col (left) -->
      </div>   <!-- /.row -->
    </section><!-- /.content -->

    
<%@include file="/WEB-INF/views/admin/include/footer.jsp" %>
 
 
  