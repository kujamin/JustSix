$('#fn_email').on("click", function() {
/*	console.log("doLogin");*/

	console.log("email : " + $('#email').val());
	console.log("password : " + $('#password').val());
	
	$.ajax({
		type : "POST",
		url : "/member/login",
		dataType : "html",
		data : {
			email : $('#email').val(),
			password : $('#password').val()
		},
		success : function(data) {//통신 성공
			if ("" == $('#email').val() || 0 == $('#email').val().length) {
				alert("아이디를 입력하세요");
				$('#email').focus();
				if ("" == $('#password').val() || 0 == $('#password').val().length) {
					alert("비밀번호를 입력하세요");
					$('#password').focus();
			}
			}else {
				
				alert("환영합니다.");
				return;
			}
			
		},
/*		error : function(data) {//실패시 처리
			if ("" == $('#email').val() || 0 == $('#email').val().length) {
				alert("아이디를 입력하세요");
				$('#email').focus();
			}else if ("" == $('#password').val() || 0 == $('#password').val().length) {
				alert("비밀번호를 입력하세요");
				$('#password').focus();
			}else if (confirm('아이디 비밀번호를 확인해주시기?') == false)
				return;
		}*/
	});

});//--end doLogin------------------

	
	