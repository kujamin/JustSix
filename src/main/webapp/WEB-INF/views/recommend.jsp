<%--
  Created by IntelliJ IDEA.
  User: hbi
  Date: 2023-06-09
  Time: 오전 10:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

<link rel="stylesheet" type="text/css" href="/resources/css/main-sub.css" />
<link rel="stylesheet" type="text/css" href="/resources/css/common.css"/>
    <title>키워드 선택</title>
</head>
<body>

  <header class="header">
    <div class="header-con">
      <div class="logo">
        <a href="index.html"> <img src="/resources/img/intro/LOGO-gray.png"
          alt="logo">
        </a>
      </div>
      <div class="login">
        <a href="Login.html"> <img alt="login"
          src="/resources/img/intro/icon-login.png">
        </a>
      </div>
    </div>
  </header>
  
  
    <div class="container">
    <h1 style="text-align: center;">키워드를 선택해주세요</h1>
        <form action="/music/recommend" method="post" class="form cf">
       
            <h2>장르</h2>       
            <section class="plan cf genre check_con">

                
		            <input type="radio" name="genre" id="RB" value="RB" checked>
		            <label class="free-label four col check_Box box01" for="RB">
		              <p class="keyword">알앤비</p>
		            </label>
		            
		            <input type="radio" name="genre" id="락" value="락">
		            <label class="free-label four col check_Box box02" for="락">
                  <p class="keyword">록/메탈</p>
		            </label>
                
                <input type="radio" name="genre" id="랩힙합" value="랩힙합">
                <label class="free-label four col check_Box box03" for="랩힙합">
                  <p class="keyword">랩/힙합</p>
                </label>
                
                
                <input type="radio" name="genre" id="발라드" value="발라드">
                <label class="free-label four col check_Box box04" for="발라드">
                  <p class="keyword">발라드</p>
                </label> 
                
                
                <input type="radio" name="genre" id="인디" value="인디">
                <label class="free-label four col check_Box box05" for="인디">
                  <p class="keyword">인디음악</p>
                </label>

                <input type="radio" name="genre" id="팝" value="팝">
                <label class="free-label four col check_Box box06" for="팝">
                  <p class="keyword">팝</p>
                </label>

           
            </section>


            <div>
                <label>상황 :</label>
                <input type="radio" name="situation" value="새벽두시">새벽두시
                <input type="radio" name="situation" value="드라이브">드라이브
                <input type="radio" name="situation" value="포스트 아포칼립스">포스트 아포칼립스
            </div>

            <div>
                <label>기분 :</label>
                <input type="radio" name="feel" value="고독">고독
                <input type="radio" name="feel" value="슬픔">슬픔
                <input type="radio" name="feel" value="설렘">설렘
            </div>

            <div>
                <label>날씨 :</label>
                <input type="radio" name="weather" value="비올때">비올때
                <input type="radio" name="weather" value="눈올때">눈올때
                <input type="radio" name="weather" value="맑을때">맑을때
            </div>

            <input type="submit" value="전송">
        </form>
    </div>
  <footer class="footer">
    <p>Copyright ⓒ 2023 JustMusic. All rights reserved</p>
    <p>JustListen 사이트 내의 모든 서비스는 영리를 목적으로 하지 아니합니다.</p> 
  </footer>
  


</body>
</html>
