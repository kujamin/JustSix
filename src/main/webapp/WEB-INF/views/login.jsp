<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2023-06-08
  Time: 오후 10:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>로그인</title>
<link rel="stylesheet" type="text/css" href="/resources/css/login.css">
</head>
<body>
	<div id="con">
		<div id="login">
			<div id="login_form">
				<!--로그인 폼-->
				<form action="/member/login" method="post">
					<div class="logo">
						<a href="index.jsp"> <img src="/resources/img/intro/LOGO-gray.png"
							alt="logo">
						</a>
					</div>
					<hr>
					<!-- Email -->
					<p class="input-title">Email</p>
					<label> <input type="text" name="email" placeholder="이메일"
						class="size">

					</label>

					<!-- Password -->
					<p class="input-title">Password</p>
					<label> <input type="password" name="password"
						placeholder="비밀번호" class="size">
					</label>
				<hr>
				<p class="find">
					<span><a href="Findpasswd.html">비밀번호 찾기</a></span> <span><a
						href="save">회원가입</a></span>
				</p>
				<!-- <input type="submit" value="확인"> -->
				<p>
					<input type="submit" value="로그인">
				</p>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
