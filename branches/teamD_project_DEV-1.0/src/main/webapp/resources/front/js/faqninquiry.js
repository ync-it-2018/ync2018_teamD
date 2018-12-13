/**
 * FAQInquiry.jsp 관련 페이지 조작
 * 
 * 작 성 자 : 1405003 김건우 최초작성일자 : 2018-12-13
 */

$(document).ready(function() {
	
	var FAQPage = document.getElementById('FAQList');
	var InquiryPage = document.getElementById('InquiryPage');
	
	FAQPage.style.display = 'block';
	InquiryPage.style.display = 'none';
	
	$('#FAQBtn').on('click', function() {
		FAQPage.style.display = 'block';
		InquiryPage.style.display = 'none';
	})

	$('#InquiryBtn').on('click', function() {
		FAQPage.style.display = 'none';
		InquiryPage.style.display = 'block';
	})
});