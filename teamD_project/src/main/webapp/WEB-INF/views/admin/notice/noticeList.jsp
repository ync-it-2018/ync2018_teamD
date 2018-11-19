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
              <h3 class="box-title">Notice List 입니다.</h3>
            </div>
          </div>
      </div><!--/.col (left) -->
      </div>   <!-- /.row -->
    </section><!-- /.content -->

    
<%@include file="/WEB-INF/views/admin/include/footer.jsp" %>
 
 
  