<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page session="false"%>

<%@ include file="/WEB-INF/views/admin/include/header.jsp" %>
<style>
	.container{
  	  width: 800px;
  	  margin: 0 auto;
	}
	ul.tabs{
	  margin: 0px;
	  padding: 0px;
	  list-style: none;
	}
	ul.tabs li{
	  background: none;
	  color: #222;
	  display: inline-block;
	  padding: 10px 15px;
	  cursor: pointer;
	  font-size:18px;
	}
	 
	ul.tabs li.current{
	  background: #D8D8D8;
	  color: #222;
	}
	 
	.tab-content{
	  display: none;
	  background: #D8D8D8;
	  padding: 15px;
	}
	 
	.tab-content.current{
	  display: inherit;
	}
	.tb_css{
	  width:95%; 
	  height:400px;
	  text-align:center; 
	  margin:auto;
	  font-size:20px;
	}
	#tabcolor{
		color:#A6A6A6;
	}
	.box{
		height:700px;
	}
</style>
<script>
$(document).ready(function(){
	$("#tab-2").unbind("click");
})
</script>
		<section class="content-header">
          <h1>Member Manage</h1>
          <ol class="breadcrumb">
            <li><a href="/admin/memberList"><i class="fa fa-dashboard"></i> Member Manage</a></li>
            <li><a href="/admin/memberList">MemberadminModify</a></li>
          </ol>
        </section>
    <!-- Main content -->
    <section class="content">
      <div class="row">
      <!-- left column -->
      <div class="col-md-12">
        <!-- general form elements -->

		<div class="box">
			<form class="modal-content animate" action="/admin/memberadminInserte" method="POST">
            <div class="box-header with-border">
            	<h3 class="box-title">MemberAdminInsert</h3>
            </div>
            <hr style="border: 1px solid gray; float:left; width:100%; margin-top:0px;">
            <div class="container">
			  <ul class="tabs">
			    <li class="tab-link current" data-tab="tab-1">새 관리자 추가</li>
			  </ul>
  			  <div id="tab-1" class="tab-content current">
  			  	<div class="form-group" >
						<div class="box-body">
						
						<table border =1; class="tb_css">
							<tr>
								<td style="width: 15%">* ID</td>
								<td style="width: 35%" colspan = 3>
									<input type="text" name="admin_id" >
									
								</td>
							</tr>
							<tr>
								<td>* Password</td>
								<td><input type="password" name="admin_password"/></td>
							</tr>
							<tr>
								<td>* Password Check</td>
								<td><input type="password"/></td>
							</tr>
							<tr>
								<td>* E-mail</td>
								<td><input type="text" name="admin_email"/></td>
							</tr>
							<tr>
								<td>* Name</td>
								<td><input type="text" name="admin_name"/></td>
							</tr>
							<tr>
								<td>* Grade</td>
								<td>
									<select class="form-control" name="admin_grade">
										<option selected disabled hidden="true"> 권한부여 </option>
										<option value="1">모든권한</option>
										<option value="2">수정,조회</option>
										<option value="3">조회</option>
									</select>
								</td>
							</tr>
						</table>
						
						</div>
						<p style = "text-align:right; margin-bottom:-20px;">* 필수입력사항</p>
					</div>
  			  </div>
  			  <div id="tab-2" class="tab-content">
  			  </div>
			</div>
			<div class="btn-group">
				<input type="submit" value="추가" class="btn btn-primary" style="margin:20px 0px 10px 780px ;"/>
				<input type="button" value="취소" class="btn btn-default" style="margin:20px 0px 10px 10px ;" id='cancel'/>
         	</div>
         	</form>
         </div> 
        </div>
      </div> 
  </section>

    
<%@include file="/WEB-INF/views/admin/include/footer.jsp" %>
 
 
  