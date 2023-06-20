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
        <form id="register-form" action="/member/save" method="post">
          <div class="logo">
            <a href="/">
              <img src="/resources/img/intro/LOGO-gray.png" alt="logo">
            </a>
          </div>
          <hr>
          <!--이메일-->
          <!--로그인 폼-->
          <p class="input-title">이메일</p>
          <label>
            <input type="email" name="email" id="email" placeholder="example@naver.com" class="size">
            <input type="button" value="중복확인 " class="btn">
          </label>
          <!--이메일 인증번호 입력-->
<%--          <p class="input-title">이메일 인증번호 입력</p>--%>
<%--          <label> <input type="text" class="size numberOnly" name="checkInput" id="checkInput"--%>
<%--            placeholder="인증번호 6자리를 입력해주세요!" maxlength="6" required>--%>
<%--            <input type="button" id="mail-Check-Btn" value="인증번호 전송 "--%>
<%--            class="btn"> <span --%>
<%--            id="mail-check-warn"></span>--%>
<%--          </label>--%>



          <!--비밀번호-->
          <p class="input-title">비밀번호</p>
          <label for="password">
            <input type="password" class="size wide" id="password" name="password" placeholder="8자이상 12자 이하로 설정해주세요.">
            <span class="error-message" id="password_error"></span>
          </label>

          <!--비밀번호 확인-->
<%--          <p class="input-title">비밀번호확인</p>--%>
<%--          <label for="confirm_password"> <input type="password"--%>
<%--            class="size wide" id="confirm_password" name="confirm_password"--%>
<%--            required> <span--%>
<%--            class="error-message" id="confirm_password_error"></span>--%>
<%--          </label>--%>
          <!--이름-->
<%--          <p class="input-title">이름</p>--%>
<%--          <label> <input type="text" class="size wide" name="name"--%>
<%--            required>--%>
<%--          </label>--%>

          <!--이용약관동의-->
          <p class="h-zero input-title">
            이용약관동의 <span><a href="agree">[이용약관 자세히 읽기]</a></span>
          </p>


          <!-- 메일수신 -->
          <p class="input-chek">
            <input checked="checked" type="radio" name="agree" value="Y"
              id="m_y" required> <label for="m_y">
              동의합니다</label>
              <input type="radio" name="agree" value="N"
              id="m_n" required> <label for="m_y">동의하지 않음</label>
          </p>


          <!-- 버튼 -->
          <p>
            <input id="register" type="submit" value="회원가입" class="btn w100">
          </p>
        </form>
        <hr>
        <p class="find">
          <span><a href="login">로그인 페이지로 이동</a></span>
        </p>
      </div>
    </div>
  </div>
<%--  <script src="/resources/js/mebership.js"></script>--%>
  <script>
    // 회원 가입 폼 유효성 검사
    const form = document.getElementById('register-form');
    const emailInput = document.getElementById('email');
    const passwordInput = document.getElementById('password');
    const registerBtn = document.getElementById('register');

    function updateSubmitButtonState() {
      const email = emailInput.value;
      const password = passwordInput.value;

      if (email !== '' && password !== '') {
        registerBtn.disabled = false; // 입력 값이 모두 존재하면 버튼 활성화
      } else {
        registerBtn.disabled = true; // 입력 값이 부족하면 버튼 비활성화
      }
    }

    form.addEventListener('submit', function(event) {
      event.preventDefault(); // 전송안되게 처리

      // 입력 값 검증
      const email = emailInput.value;
      const password = passwordInput.value;

      if (email === '' || password === '') {
        // 이메일이나 비밀번호가 비어 있는 경우
        alert('이메일과 비밀번호를 모두 입력해주세요.');
        return;
      }

      // 유효성 검사가 통과되면 폼을 제출
      form.submit();
    });

  </script>
</body>
</html>
