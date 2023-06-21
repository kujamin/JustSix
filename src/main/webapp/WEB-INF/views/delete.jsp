<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="/resources/css/login.css">
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<title>회원탈퇴</title>
</head>
<body>
	<div id="con" class="delete find_pw">
		<div id="login">          
			<div id="delete_form">
				<!--로그인 폼-->
				<form action="/member/delete" method="post">
					<div class="logo">
						<a href="/"> <img src="/resources/img/intro/LOGO-gray.png"
							alt="logo">
						</a>
					</div>
					<hr>


					<!--이메일-->
					<p class="input-title">E-mail</p>
					<label> <input type="email" name="email" id="email"
						placeholder="가입하신 이메일주소를 입력해주세요" class="size wide" required="required">
				
					</label>

					<!--새로운 비밀번호-->
					<p class="input-title">비밀번호 확인</p>
					<label for="password"> 
					<input name="password" id="password" type="password"
						class="size wide" required>
						<span class="error-message" id="password_error"></span>
					</label>

          <!-- 버튼 -->
					<p>
						<input id="delete" type="submit" value="탈퇴하기"
							class="btn w100">
					</p>
				</form>

				<hr>
				<p class="find">
					<span><a href="login">로그인 페이지로 이동</a></span>
				</p>
			</div>
		</div>
	</div>
	<script src="/resources/js/delete.js"></script>
</body>
</html>