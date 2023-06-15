<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>결과</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <script src="/resources/js/music.js"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"/>
<link rel="stylesheet" type="text/css" href="/resources/css/main-sub.css" />
<link rel="stylesheet" type="text/css" href="/resources/css/common.css"/>
<title>서브페이지 리스트</title>
  
</head>
<body>

  <header class="header">
    <div class="header-con">
      <div class="logo">
        <a href="/"> <img src="/resources/img/intro/LOGO-gray.png"
          alt="logo">
        </a>
      </div>
      <div class="login">
        <a href="/resources/html/Login.html"> <img alt="login"
          src="/resources/img/intro/icon-login.png">
        </a>
      </div>
    </div>
  </header>

  <div class="container">
    <h3
      style="text-align: center; padding: 100px 0 30px; font-weight: bold;">선택된
      키워드를 포함한 플레이 리스트</h3>

    <br>
    <table
      class="table table-bordered table-striped table-dark table-hover">
      <caption>FAQ List of Articles</caption>
      <thead class="thead-light text-center">
        <tr>
          <th style="width: 10%;"></th>
          <th style="width: 90%;">recommended list</th>

        </tr>
      </thead>
      <tbody class="text-center">
    <c:forEach var="music" items="${musicList}" varStatus="status">
        <tr>
          <td>

            <div class="album-img album01">
               <img src="/resources/img/sub/${music.albumpath}.jpg" alt="${music.title}">
            </div>
          </td>
          <td class="text-left">
            <div class="panel-faq-container">
              <div class="panel-faq-title">
                <div class="m-title">${music.artist} - ${music.title} <script>convertAndDisplayPlaytime(${music.playtime});</script></div>
                <div class="m-time"><script>convertAndDisplayPlaytime${music.playtime};</script></div>
              </div>
              <div class="panel-faq-answer">
                <div class="youtube">
                  <iframe width="450px" height="250px"
                    src="https://www.youtube.com/embed/${music.link}"
                    title="YouTube video player" frameborder="0"
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                    allowfullscreen></iframe>
                </div>
                <div class="lyric">
                  <p>${music.lyrics.replaceAll("#", "<br>")}</p>
                </div>
              </div>
            </div>
          </td>

        </tr>
        
  </c:forEach>
      </tbody>
        <tr class="list-sum">
          <td colspan=4 class="text-right">총 ${count}건의 데이터가 검색되었습니다.</td>

        </tr>
    </table>
  </div>

  <footer class="footer">
    <p>Copyright ⓒ 2023 JustMusic. All rights reserved</p>
    <p>JustListen 사이트 내의 모든 서비스는 영리를 목적으로 하지 아니합니다.</p> 
  </footer>
  
    <script>
window.onload = () => {
  // panel-faq-container
  const panelFaqContainer = document.querySelectorAll(".panel-faq-container"); // NodeList 객체
  
  // panel-faq-answer
  let panelFaqAnswer = document.querySelectorAll(".panel-faq-answer");

  // btn-all-close
  const btnAllClose = document.querySelector("#btn-all-close");
  
//반복문 순회하면서 해당 FAQ제목 클릭시 콜백 처리
  for (let i = 0; i < panelFaqContainer.length; i++) {
    panelFaqContainer[i].addEventListener('click', function () { // 클릭시 처리할 일
      // 다른 FAQ 제목들의 active 클래스 제거
      for (let j = 0; j < panelFaqContainer.length; j++) {
        if (j !== i) {
          panelFaqAnswer[j].classList.remove('active');
        }
      }
      // 클릭한 FAQ 제목에 active 클래스 추가
      panelFaqAnswer[i].classList.add('active');
    });
  }
  
  btnAllClose.addEventListener('click', function() {
    // 버튼 클릭시 처리할 일  
    for(let i=0; i < panelFaqAnswer.length; i++) {
        panelFaqAnswer[i].classList.remove('active');
    };
  });
}

</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>
