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

	/**
	 * Defalut Value : compPage [예약 완료 페이지만 보이게]
	 */
	compPage.style.display = 'block';
	listPage.style.display = 'none';
	cancelPage.style.display = 'none';
	modifyPage.style.display = 'none';

	$('#resv_comp').on('click', function() {
		compPage.style.display = 'block';
		listPage.style.display = 'none';
		cancelPage.style.display = 'none';
		modifyPage.style.display = 'none';
	})

	$('#resv_list').on('click', function() {
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
	
	
});