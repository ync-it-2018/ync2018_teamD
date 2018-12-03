/**
 * writeReview 관련 페이지 조작 jQuery
 * 
 * 작 성 자 : 1405003 김건우 최초작성일자 : 2018-12-03
 */

$(document).ready(function() {
	
	var s1 = "";
	var s2 = "";
	var s3 = "";
	var s4 = "";
	
	$('#score_1').slider({
		formatter : function(value) {
			return 'Current value: ' + value;
		}
	})

	$('#score_2').slider({
		formatter : function(value) {
			return 'Current value: ' + value;
		}
	})

	$('#score_3').slider({
		formatter : function(value) {
			return 'Current value: ' + value;
		}
	})

	$('#score_4').slider({
		formatter : function(value) {
			return 'Current value: ' + value;
		}
	})
	
	$('#score_1').on("slide", function(slideEvt) {
		s1 = slideEvt.value;
	});
	$('#score_2').on("slide", function(slideEvt) {
		s2 = slideEvt.value;
	});
	$('#score_3').on("slide", function(slideEvt) {
		s3 = slideEvt.value;
	});
	$('#score_4').on("slide", function(slideEvt) {
		s4 = slideEvt.value;
	});

	
	$('[name=score]').on("slide", function(slideEvt) {
		
		$("#score").text((s1+s2+s3+s4)/4);
	});
	
})