function fn_idChk() {
		$.ajax({
			url : "/member/idChk",
			type : "post",
			dataType : "json",
			data : {"userId" : $("userId").val()},
			success : function(data) {
				if(data==1) {
					alert("중복된 아이디입니다.");
				} else if(data == 0) {
					$('#mail-Check-Btn').attr('disabled',false);
					alert("사용가능한 아이디입니다.")
				}
			}
		})
	}
	

	//이메일 인증 버튼
	$('#mail-Check-Btn').click(function() {
	    const email = $('#email').val(); // 이메일 주소값 얻어오기!
	    console.log('완성된 이메일 : ' + email); // 이메일 오는지 확인
	    const checkInput = $('#checkInput'); // 인증번호 입력하는곳 
	    
	    $.ajax({
	      type : 'GET',
	      url : "mailCheck?email="+email, // GET방식이라 Url 뒤에 email을 뭍힐수있다.
	      success : function (data) {
	        console.log("data : " +  data);
	        $('#checkInput').attr('disabled',false);
	        code =data;
	        alert('인증번호가 전송되었습니다.')
	      }     
	    }); // end ajax
	  }); // end send eamil
	
	// 인증번호 비교 
	  // blur -> focus가 벗어나는 경우 발생
	  $('#checkInput').blur(function () {
	    const inputCode = $(this).val();
	    const $resultMsg = $('#mail-check-warn');
	    
	    if(inputCode === code){
	      $resultMsg.html('인증번호가 일치합니다.');
	      $resultMsg.css('color','green');
	      $('#mail-Check-Btn').attr('disabled',true);
	      $('#email').attr('readonly',true);
	      $('#register').attr('disabled',false);
	     }else{
	      $resultMsg.html('인증번호가 불일치 합니다. 다시 확인해주세요!.');
	      $resultMsg.css('color','red');
	    }
	  });
	
	  
	  //비밀번호 관련 로직 처리
		function validateForm() {
			var password = document.getElementById("password").value;
			var confirm_password = document.getElementById("confirm_password").value;
			var password_error = document.getElementById("password_error");
			var confirm_password_error = document
					.getElementById("confirm_password_error");

			     if (password.trim().length === 0) {
			 password_error.innerHTML = "";
			 } else if (password.length < 8 || password.length > 12) {
			 password_error.innerHTML = "비밀번호는 8이상 12자 이하로 설정바랍니다.";
			 $('#register').attr('disabled',true);
			 } else {
			 password_error.innerHTML = "";
			 $('#register').attr('disabled',false);
			 } 

			if (confirm_password.trim().length === 0) {
				confirm_password_error.innerHTML = "";
			} else if (password !== confirm_password) {
				confirm_password_error.innerHTML = "비밀번호가 일치하지 않습니다.";
				$('#register').attr('disabled',true);
			} else {
				confirm_password_error.innerHTML = "비밀번호가 일치합니다!";
				$('#register').attr('disabled',false);
			}

			if (password_error.innerHTML === ""
					&& confirm_password_error.innerHTML === "") {
				return true;
			} else {
				return false;
			}
		}

		function clearPasswordError() {
			var password_error = document.getElementById("password_error");
			var confirm_password_error = document
					.getElementById("confirm_password_error");

			password_error.innerHTML = "";
			confirm_password_error.innerHTML = "";
		}