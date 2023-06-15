<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2023-06-08
  Time: 오후 9:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/resources/css/login.css">
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<title>회원가입</title>
</head>
<body>
  <div id="con">
    <div id="login">
      <div id="login_form">
        <form action="/member/save" method="post">
          <div class="logo">
            <a href="index.jsp"> <img
              src="/resources/img/intro/LOGO-gray.png" alt="logo">
            </a>
          </div>
          <hr>
          <!--이메일-->ㄴ
          <!--로그인 폼-->
          <p class="input-title">E-mail</p>
          <label> <input type="email" name="email" id="email"
            placeholder="example@naver.com" class="size" required="required">
            <input onclick = "fn_idChk();" type="button" value="중복확인 " class="btn">
          </label>
          <!--이메일 인증번호 입력-->
          <p class="input-title">E-mail 인증번호 입력</p>
          <label> <input type="text" class="size" name="checkInput" id="checkInput"
            placeholder="인증번호 6자리를 입력해주세요!" disabled="disabled" maxlength="6">
            <input type="button" id="mail-Check-Btn" value="인증번호 전송 "
            class="btn"> <span 
            id="mail-check-warn"></span>
          </label>



          <!--비밀번호-->
          <p class="input-title">Password</p>
          <label for="password"> <input
            placeholder="비밀번호는 8이상 12자 이하로 설정바랍니다." type="password"
            class="size wide" id="password" name="password" required>
            <span class="error-message" id="password_error"></span>
          </label>

          <!--비밀번호 확인-->
          <p class="input-title">Password확인</p>
          <label for="confirm_password"> <input type="password"
            class="size wide" id="confirm_password" name="confirm_password"
            required oninput="validateForm()"> <span
            class="error-message" id="confirm_password_error"></span>
          </label>
          <!--이름-->
          <p class="input-title">이름</p>
          <label> <input type="text" class="size wide" name="name"
            required>
          </label>

          <!--이용약관동의-->
          <p class="h-zero input-title">
            이용약관동의 <span><a href="agree.html">[이용약관 자세히 읽기]</a></span>
          </p>


          <!-- 메일수신 -->
          <p class="input-chek">
            <input checked="checked" type="radio" name="agree" value="Y"
              id="m_y" required> <label for="m_y">
              동의합니다</label>
              <input checked="checked" type="radio" name="agree" value="N"
              id="m_y" required> <label for="m_y">동의하지 않음
              동의합니다</label>
          </p>


          <!-- 버튼 -->
          <p>
            <input id="register" type="submit" value="회원가입" class="btn w100" disabled="disabled">
          </p>
        </form>
        <hr>
        <p class="find">
          <span><a href="login">로그인 페이지로 이동</a></span>
        </p>
      </div>
    </div>
  </div>
  <script src="/resources/js/mebership.js"></script>
</body>
</html>
