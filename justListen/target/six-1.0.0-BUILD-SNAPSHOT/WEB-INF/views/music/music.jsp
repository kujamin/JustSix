<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="/six/music/do_select_one.do" method="POST">
		<label for="id">아이디</label> <input type="text" name="id" id="id">
		<input type="submit" value="전송">
	</form>
	musicId:${id}
	<br /> musictitle:${title}
	<br /> album:${album}
	<br />
	<br />
	<br />
	<br />
	<br /> Lyrics:${lyrics}

</body>
</html>