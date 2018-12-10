<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
  <script src="/resources/admin/js/jssor.slider-27.5.0.min.js" type="text/javascript"></script>
  <script type="text/javascript">
       
    </script>

				<div class="box-body" style="width:80%; margin:0 auto;">	
				<div style= "overflow: hidden; margin:0 auto; ">
					<div class="form-group h_group" style="width:75%; float:left">
						<H2>${data.review_title }</H2>
					</div>
					
					<div class="form-group h_group" style="width: 25%; float:left; padding-top:30px;">
					<input type="button" value="삭제" onclick = "delete_h('${data.review_idx}')"/>
					<input type="button" value="닫기" onclick = "close_pop();"/>
					</div>
					</div>			
					<div class="form-group" style="text-align:right;">
						${data.review_date}
					</div>
					<div class="form-group" style="">
						청 결 도  :  ${data.review_clean}
					</div>
					<div class="form-group" style="">
						서 비 스  :  ${data.review_service}
					</div>
					<div class="form-group" style="">
						편 안 함  :  ${data.review_comfort}
					</div>
					<div class="form-group" style="">
						관리 상태  :  ${data.review_state}
					</div>
					<div class="form-group" style="">
						위치, 주변지역  :  ${data.review_local}
					</div>
					<div class="form-group" style="overflow: hidden;">
					<div class="form-group" style="float:left; width:60%">
						평    점  :  ${data.review_rate}
					</div>
					<div class="form-group" style="float:left; width:40%">
						작 성 자  :  ${data.member_id}
					</div>
					
					</div>
					<div class="form-group" style="border: 1px solid; padding: 10 10; margin:10 10;">
						 ${data.review_content}
					</div>
				</div>
			</div>
			<!-- /.box -->
		</div>
		<!--/.col (left) -->
	</div>
	
	<!-- /.row -->
</section>
<!-- /.content -->
</div>
</section>
<script>

	function delete_h( idx ){
		if (confirm("정말로 삭제하시겠습니까?")){
			window.location.href="/admin/reviewDelete?idx="+idx;
		}else{
			alert("취소되었습니다.");
		}
		
		
	}
	function close_pop(){
		window.close();
	}
	$(document).ready(function(){
		
		$('ul.tabs li').click(function(){
			var tab_id = $(this).attr('data-tab');
			$('ul.tabs li').removeClass('current');
			$('.tab-content').removeClass('current');

			$(this).addClass('current');
			$("#"+tab_id).addClass('current');
			
			if(tab_id == "tab-1"){
				$("#modi").show();
			}else{
				$("#modi").hide();
			}
		})

	})
</script>

 
 
  