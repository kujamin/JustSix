//회원탈퇴

$('#delete').click(function(){
	$.ajax({
		type : "POST",
		url : "/member/delete",
		dataType : "html",
		data : {
			email : $('#email').val(),
			password : $('#password').val()
		},
		success : function(data) {// 통신 성공
			let paredJSON = JSON.parse(data)
			if ("3" == paredJSON.msgId) {
				alert(paredJSON.msgContents);
				window.location.href = '/member/login';
			} else if("4" == paredJSON.msgId){
				alert(paredJSON.msgContents);
			}
		},
		error : function(data) {// 실패시 처리
			console.log("통신 오류");
		}
	});
});