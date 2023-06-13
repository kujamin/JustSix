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
        <a href="/resources/html/index.html"> <img src="/resources/img/intro/LOGO-gray.png"
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
    <h1 style="text-align: center; margin:150px 0 50px 0;">키워드를 선택해주세요</h1>
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

                <h2>상황</h2>
      <section class="plan cf genre check_con">

        <input type="radio" name="situation" id="유산소" value="유산소"
          checked><label class="free-label four col check_Box box07"
          for="유산소">
          <p class="keyword">유산소</p>
        </label> <input type="radio" name="situation" id="무산소" value="무산소"><label
          class="free-label four col check_Box box08" for="무산소">
          <p class="keyword">무산소</p>
        </label> <input type="radio" name="situation" id="새벽두시" value="새벽두시"><label
          class="free-label four col check_Box box09" for="새벽두시">
          <p class="keyword">새벽두시</p>
        </label> <input type="radio" name="situation" id="노빠꾸낼없사불금" value="노빠꾸낼없사불금"
          checked><label class="free-label four col check_Box box10"
          for="노빠꾸낼없사불금">
          <p class="keyword">불타는 금요일</p>
        </label> <input type="radio" name="situation" id="퇴근할때"
          value="퇴근할때"><label
          class="free-label four col check_Box box11" for="퇴근할때">
          <p class="keyword">퇴근길</p>
        </label> <input type="radio" name="situation" id="드라이브" value="드라이브"><label
          class="free-label four col check_Box box12" for="드라이브">
          <p class="keyword">드라이브</p>
        </label> <input type="radio" name="situation" id="여행길" value="여행길"><label
          class="free-label four col check_Box box13" for="여행길">
          <p class="keyword">여행길</p>
        </label> <input type="radio" name="situation" id="포스트 아포칼립스"
          value="포스트 아포칼립스"><label
          class="free-label four col check_Box box14" for="포스트 아포칼립스">
          <p class="keyword">포스트 아포칼립스</p>
        </label>




      </section>


      <h2>기분</h2>
      <section class="plan cf genre check_con">

        <input type="radio" name="feel" id="고독" value="고독"><label
          class="free-label four col check_Box box15" for="고독">
          <p class="keyword">고독</p>
        </label> <input type="radio" name="feel" id="슬픔" value="슬픔"><label
          class="free-label four col check_Box box16" for="슬픔">
          <p class="keyword">슬픔</p> <input type="radio" name="feel"
          id="설렘" value="설렘"><label
          class="free-label four col check_Box box17" for="설렘">
            <p class="keyword">설렘</p>
        </label> <input type="radio" name="feel" id="분노" value="분노"><label
          class="free-label four col check_Box box18" for="분노">
            <p class="keyword">분노</p>
        </label>
        </label> <input type="radio" name="feel" id="행복" value="행복"><label
          class="free-label four col check_Box box19" for="행복">
          <p class="keyword">행복</p>
        </label>

      </section>
      
      
      
      <h2>날씨</h2>
      <section class="plan cf genre check_con">

        <input type="radio" name="weather" id="비올때" value="비올때"><label
          class="free-label four col check_Box box20" for="비올때">
          <p class="keyword">비오는 날</p>
        </label> <input type="radio" name="weather" id="눈올때" value="눈올때"><label
          class="free-label four col check_Box box21" for="눈올때">
          <p class="keyword">눈오는 날</p>
        </label> <input type="radio" name="weather" id="맑을때" value="맑을때"><label
          class="free-label four col check_Box box22" for="맑을때">
          <p class="keyword">맑은 날</p>
        </label> <input type="radio" name="weather" id="흐릴때" value="흐릴때"><label
          class="free-label four col check_Box box23" for="흐릴때">
          <p class="keyword">흐린 날</p>
        </label>

      </section>
      
      <h2>대중성</h2>
      <section class="plan cf genre check_con">
        <input type="radio" name="popular" id="히트곡" value="히트곡"><label
          class="free-label four col check_Box box24" for="히트곡">
          <p class="keyword">히트곡</p>
        </label> <input type="radio" name="popular" id="대중적인" value="대중적인"><label
          class="free-label four col check_Box box25" for="대중적인">
          <p class="keyword">대중적인</p>
        </label> <input type="radio" name="popular" id="컬르적" value="컬르적"><label
          class="free-label four col check_Box box26" for="컬르적">
          <p class="keyword">컬르적인</p>
        </label>


      </section>
      
      <h2>노래가사</h2>
      <section class="plan cf genre check_con">
        <input type="radio" name="liricstype" id="사랑 노래" value="사랑 노래"><label
          class="free-label four col check_Box box27" for="사랑 노래">
          <p class="keyword">사랑 노래</p>
        </label> <input type="radio" name="liricstype" id="이별 노래" value="이별 노래"><label
          class="free-label four col check_Box box28" for="이별 노래">
          <p class="keyword">이별 노래</p>
        </label> <input type="radio" name="liricstype" id="자신감 노래"
          value="자신감 노래"><label
          class="free-label four col check_Box box29" for="자신감 노래">
          <p class="keyword">자신감 노래</p>
        </label> <input type="radio" name="liricstype" id="사회 비판 노래" value="사회 비판 노래"><label
          class="free-label four col check_Box box30" for="사회 비판 노래">
          <p class="keyword">사회 비판 노래</p>
        </label>


      </section>
      
      
      
            <input type="submit" value="전송">
        </form>
    </div>
    
    
  <footer class="footer">
    <p>Copyright ⓒ 2023 JustMusic. All rights reserved</p>
    <p>JustListen 사이트 내의 모든 서비스는 영리를 목적으로 하지 아니합니다.</p> 
  </footer>
  


</body>
</html>
