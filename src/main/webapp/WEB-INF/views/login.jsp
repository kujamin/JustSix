<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2023-06-08
  Time: 오후 10:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>로그인</title>
</head>
<body>
    <form action="/member/login" method="post">
        <p>
            <label>이메일 : </label>
            <input type="email" name="email" placeholder="이메일">
        </p>
        <p>
            <label>비밀번호 : </label>
            <input type="password" name="password" placeholder="비밀번호">
        </p>
        <input type="submit" value="로그인">
    </form>
</body>
</html>
