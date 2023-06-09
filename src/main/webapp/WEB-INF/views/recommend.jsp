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
    <title>음악 선택</title>
</head>
<body>
    <h1>좋아하는 음악이 뭐니?</h1>
    <div>
        <form action="/music/recommend" method="post">
            <div>
                <label>장르 :</label>
                <input type="radio" name="genre" value="발라드">발라드
                <input type="radio" name="genre" value="Rock">락
                <input type="radio" name="genre" value="R&B">알앤비
            </div>


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



</body>
</html>
