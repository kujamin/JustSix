<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h2>anno.jsp</h2>
  
  <form action="/six/user/do_select_one.do" method="POST">
    <label for="id">아이디</label>
    <input type="text" name="id" id="id">
    <input type="submit" value = "전송"> 
  </form>
  userId:${email}<br/>
  passwd:${passwd}<br/>
  userName:${name}
  
</body>
</html>