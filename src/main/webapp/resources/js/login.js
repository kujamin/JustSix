$('#fn_email').on(
		"click",
		function() {

			$.ajax({
				type : "POST",
				url : "/member/login",
				dataType : "html",
				data : {
					email : $('#email').val(),
					password : $('#password').val()
				},
				success : function(data) {// 통신 성공
					let paredJSON = JSON.parse(data)
					if ("" == $('#email').val()
							|| 0 == $('#email').val().length) {
						alert("아이디를 입력하세요");
						$('#email').focus();
						if ("" == $('#password').val()
								|| 0 == $('#password').val().length) {
							alert("비밀번호를 입력하세요");
							$('#password').focus();
							return;
						}
						return;
					}else if ("1" == paredJSON.msgId) {
						alert(paredJSON.msgContents);
						window.location.href = '/music/recommend';
					}
				},
				error : function(data) {// 실패시 처리
					console.log("통신 오류");
				}
			});

		});// --end doLogin------------------

