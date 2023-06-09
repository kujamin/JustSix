<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: hbi
  Date: 2023-06-09
  Time: 오전 11:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>결과</title>
</head>
<body>
  <h1>이게 너가 선택한 값이야</h1>
  <div>
    <c:forEach var="music" items="${musicList}">
      <li>${music.title} - ${music.artist}</li>
      <li>${music.lyrics}</li>
<%--      <iframe width="560" height="315" src="${music.link}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>--%>
    </c:forEach>
  </div>
</body>
</html>
