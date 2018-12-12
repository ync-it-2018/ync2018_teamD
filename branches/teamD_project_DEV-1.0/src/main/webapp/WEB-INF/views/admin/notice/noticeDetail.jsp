<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>


<%@include file="/WEB-INF/views/admin/include/header.jsp" %>
<script>
	$(document).ready(function() {
		 if("${notice.notice_chk}" == 'Y'){
			 $('#notice').prop("checked", true);
		} else{
			 $('#notice').prop("checked", false);
		}
	});
	
	function notice( idx ){
		if($('#notice').prop("checked")){ //체크 할때
			if(confirm("공지를 게시 하시겠습니까?")){//공지 할 경우
				alert("공지 되었습니다.");
				window.location.href="/admin/noticeChk?idx="+idx+"&nt=Y";
			}else{//공지 하지 않을 경우
				alert("취소되었습니다.");
			}
		}else{ //체크 해제 할때
			if(confirm("공지를 취소 하시겠습니까?")){//공지 할 경우
				alert("공지 취소되었습니다.");
				window.location.href="/admin/noticeChk?idx="+idx+"&nt=N";
			}else{//공지 하지 않을 경우
				alert("취소되었습니다.");
			}
		}
	}
</script>
	<!-- 컨텐츠 상단바 -->
	<section class="content-header">
          <h1>
            Notice
            <small>Preview</small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="/admin/noticeList"><i class="fa fa-dashboard"></i> Notice</a></li>
            <li><a href="/admin/noticeList">noticeDetail</a></li>
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
            	<table style="width: 100%;">
            		<tr>
            			<td style="width:80%"><h3>${notice.notice_title}</h3></td>
            			<td><input type="checkbox" id="notice" onclick="notice('${notice.notice_idx}');" />게시</td>
            			<td style="width:5%;"><input type="button" value="수정"/></td>
            			<td style="width:5%;"><input type="button" value="삭제"/></td>
            			<td><input type="button" value="목록" onclick = "location.href='/admin/noticeList'"/></td>
            		</tr>
            	</table>
              	<!-- <div style="width:70%; float:left;">
              		<h3></h3> 
              	</div>
              	<div style="width:30%; float:left;">
              		
              		
              		
              	</div> -->
              	
            </div>
            <div class="box-body" >
            	<div style= "width: 90%; margin: 0 auto;">
	            	<table style="width:100%;">
		            	<tr>
							<td style="width:9%;"> 게시 시작 :</td>
							<td style="width:10%;"> ${notice.notice_date}  </td>
							<td style="width:9%;"> 게시 종료 : </td>
							<td style="width:55%;"> ${notice.notice_days }</td>
							<td style="width:9%;"> 작 성 자 : </td>
							<td style=""> ${notice.admin_id}</td>
						</td>
					</table>
					<hr style="width:100%; border-top:1px solid #D8D8D8;"/>
					<div style="text-align:center; margin:15px 15px;">
						<img src="${notice.notice_img }"/>
					</div>
					<div style="padding: 10px 10px;">
					${notice.notice_content}
					</div>
				</div>
			</div><!--/box body -->
		</div>
      </div><!--/.col (left) -->
      </div>   <!-- /.row -->
    </section><!-- /.content -->

    
<%@include file="/WEB-INF/views/admin/include/footer.jsp" %>
 
 
  