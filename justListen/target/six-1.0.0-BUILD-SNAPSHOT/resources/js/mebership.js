function validateForm() {
      var password = document.getElementById("password").value;
      var confirm_password = document.getElementById("confirm_password").value;
      var password_error = document.getElementById("password_error");
      if (password.length < 8 || password.length > 12) {
          password_error.innerHTML = "비밀번호는 8자에서 12자 사이어야 합니다.";
          return false;
        }
      if (password !== confirm_password) {
        var errorElement = document.getElementById("password_error");
        errorElement.innerHTML = "비밀번호와 비밀번호 확인이 일치하지 않습니다.";
        return false;
      } else {
        var errorElement = document.getElementById("password_error");
        errorElement.innerHTML = "";
        return true;
      }
    }