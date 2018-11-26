/**
 * login 관련 jQuery
 * 
 * 작 성 자 : 1405003 김건우 최초작성일자 : 2018-11-05
 */

$(document).ready(function() {
	var loginmdl = document.getElementById('login');
	var regimdl = document.getElementById('register');
	// 로그인 창 띄우기
	$('#loginPage').on('click', function() {
		loginmdl.style.display = 'block';
	})
	// 취소 시 로그인 창 닫기
	$('[name=cancelbtn]').on('click', function() {
		loginmdl.style.display = 'none';
		regimdl.style.display = 'none';
		document.getElementById('uid').value = "";
		document.getElementById('pwd').value = "";
		document.getElementById('regi_uid').value = "";
		document.getElementById('regi_password').value = "";
		document.getElementById('regi_passwordchk').value = "";
		$(".alert-success").hide();
		$(".alert-danger").hide();
	})

	// 회원가입 모달로 전환
	$('#registerbtn').on('click', function() {
		loginmdl.style.display = 'none';
		regimdl.style.display = 'block';
	})

	// 모달 배경색을 클릭했을 경우 현재 모달 창을 닫음
	$(window).on('click', function(event) {
		if (event.target == loginmdl || event.target == regimdl) {
			loginmdl.style.display = "none";
			regimdl.style.display = 'none';
			document.getElementById('uid').value = "";
			document.getElementById('pwd').value = "";
			document.getElementById('regi_uid').value = "";
			document.getElementById('regi_password').value = "";
			document.getElementById('regi_passwordchk').value = "";
			$(".alert-success").hide();
			$(".alert-danger").hide();
		}
	})
	
	$('[name=doublechk]').on('click', function() {
		window.open("/doublechk");
	})

	// 
	$(".alert-success").hide();
	$(".alert-danger").hide();

	$('#regi_passwordchk').keyup(function() {
		if ($('#regi_password').val() != null) {
			if ($('#regi_password').val() != $('#regi_passwordchk').val()) {
				$(".alert-success").hide();
				$(".alert-danger").show();
			} else {
				$(".alert-success").show();
				$(".alert-danger").hide();
			}
		}
	})
});
