<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>결과</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <script src="/resources/js/music.js"></script>
</head>
<body>
<h2>총 ${count}건의 데이터가 검색되었습니다.</h2>
<div class="accordion accordion-flush" id="accordionFlushExample">
  <c:forEach var="music" items="${musicList}" varStatus="status">
    <div class="accordion-item">
      <h2 class="accordion-header" id="flush-heading${status.index + 1}">
        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse${status.index + 1}" aria-expanded="false" aria-controls="flush-collapse${status.index + 1}">
          <div class="d-flex align-items-center">
            <img src="/resources/img/${music.albumpath}.jpg" alt="${music.title}" class="img-thumbnail me-3" style="width: 50px; height: 50px;">
            <div>${music.artist} - ${music.title} - <script>convertAndDisplayPlaytime(${music.playtime});</script></div>
          </div>
        </button>
      </h2>
      <div id="flush-collapse${status.index + 1}" class="accordion-collapse collapse" aria-labelledby="flush-heading${status.index + 1}" data-bs-parent="#accordionFlushExample">
        <div class="accordion-body">
          <div><iframe width="560" height="315" src="${music.link}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></div>
          <p>${music.lyrics.replaceAll("#", "<br>")}</p>
        </div>
      </div>
    </div>
  </c:forEach>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>
