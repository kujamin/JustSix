<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>결과</title>
  <script src="/resources/js/music.js"></script>
</head>
<body>
<h1>이게 너가 선택한 값이야</h1>
<div>
  <c:forEach var="music" items="${musicList}">
    <img src="/resources/img/${music.albumpath}.jpg" alt="${music.title}">
    <p>${music.artist} - ${music.title} - <script>convertAndDisplayPlaytime(${music.playtime});</script></p>
    <p>${music.lyrics.replaceAll("#", "<br>")}</p>
  </c:forEach>
</div>
</body>
</html>
