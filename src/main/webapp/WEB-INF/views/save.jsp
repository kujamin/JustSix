<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2023-06-08
  Time: 오후 9:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>회원가입</title>
</head>
<body>
    <h1>회원가입</h1>
    <form action="/member/save" method="post">
        <p>
            <label>이메일 : </label>
            <input type="email" name="email" placeholder="이메일">
        </p>
        <p>
            <label>비밀번호 : </label>
            <input type="password" name="password" placeholder="비밀번호">
        </p>
        <p>
            <label>이름 :</label>
            <input type="text" name="name" placeholder="이름">
        </p>
        <input type="submit" value="회원가입">
    </form>
</body>
</html>
