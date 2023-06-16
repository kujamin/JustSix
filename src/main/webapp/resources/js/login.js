$('#fn_email').on("click", function() {

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
			let parsedJSON = JSON.parse(data);
			if ("" == $('#email').val() || 0 == $('#email').val().length) {
				alert("아이디를 입력하세요");
				$('#email').focus();
				if ("" == $('#password').val() || 0 == $('#password').val().length) {
					alert("비밀번호를 입력하세요");
					$('#password').focus();
				} else {
					
					
				}
			}else if(parsedJSON.email == $('#email').val() && parsedJSON.password == $('#password').val()){
				alert("환영합니다!."+$('#name') + "님!");/*
				return;*/
			} else{
				console.log(data);
				alert("아이디 또는 비밀번호를 다시 확인해주시기 바랍니다.");
				
			}
			
		},
		error : function(data) {//실패시 처리
			console.log("통신 오류");
		}
	});

});//--end doLogin------------------

	
	