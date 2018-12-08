/**
 * myPage 관련 페이지 조작
 * 
 * 작 성 자 : 1405003 김건우 최초작성일자 : 2018-11-26
 */

$(document).ready(function() {
	
	var compPage = document.getElementById('resv_comp_data');
	var listPage = document.getElementById('resv_list_data');
	var cancelPage = document.getElementById('resv_cancel_data');
	var modifyPage = document.getElementById('user_modify_data');
	var preTable = document.getElementById('preModifyTable');
	var modifyTable = document.getElementById('userModifyTable');
	
	var isExistPwd = document.getElementById('is_member_password');
	
	modifyTable.style.display = 'none';
	/**
	 * Defalut Value : compPage [예약 완료 페이지만 보이게]
	 */
	compPage.style.display = 'block';
	listPage.style.display = 'none';
	cancelPage.style.display = 'none';
	modifyPage.style.display = 'none';

	$('#resv_complist').on('click', function() {
		compPage.style.display = 'block';
		listPage.style.display = 'none';
		cancelPage.style.display = 'none';
		modifyPage.style.display = 'none';
	})

	$('#resv_chkinlist').on('click', function() {
		compPage.style.display = 'none';
		listPage.style.display = 'block';
		cancelPage.style.display = 'none';
		modifyPage.style.display = 'none';
	})

	$('#resv_cancel').on('click', function() {
		compPage.style.display = 'none';
		listPage.style.display = 'none';
		cancelPage.style.display = 'block';
		modifyPage.style.display = 'none';
	})

	$('#user_modify').on('click', function() {
		compPage.style.display = 'none';
		listPage.style.display = 'none';
		cancelPage.style.display = 'none';
		modifyPage.style.display = 'block';
	})
	
	$("[name=reviewChk]").on('click', function() {
		window.open("/writereview", "" , "width=800,height=600,toolbar=no,location=no,resizeable=no");
	})
	

	
	$('#pwdChkBtn').on('click', function() {
		
		alert(isExistPwd.value);
		
		preTable.style.display = 'none';
		modifyTable.style.display = 'block';
	})
	
	var tableRow= $('#cancelTable tr').length - 1;
	
	$("[name=cancelSubmitBtn]").on('click', function() {
		var row = 0;
		for (var i=0; i< tableRow; i++){
			row = i + 1;
		    eval("var check"+i+"= $('input:radio[id=chkRow"+ row+"]').is(':checked')");
		    
		    if(eval("check" + i)) {
		    	var chkResult = row;
		    }
		}
		
        var checkBtn = $(this);
        
        var tr = checkBtn.parent().parent();
        var td = tr.children();
        
        var resvIdx = td.eq(1).text();
        var resvHotelName = td.eq(2).text();
        alert("예약 번호 : "+resvIdx+ "\n" +"호텔 이름 : "+ resvHotelName);
		
        
        
	})
	
	
});