<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>회원 리스트</title>
</head>
<body>
    <table>
        <tr>
            <th>ID</th>
            <th>이메일</th>
            <th>비밀번호</th>
            <th>이름</th>
            <th>조회</th>
            <th>삭제</th>
        </tr>
        <c:forEach var="member" items="${memberList}">
            <tr>
                <td>${membr.id}</td>
                <td>
                    <a href="/member?id=${member.id}">${member.email}</a>
                </td>
                <td>${member.password}</td>
                <td>${member.name}</td>
                <td>
                    <a href="/member?id=${member.id}">조회</a>
                </td>
                <td>
                    <button onclick="deleteMember('${member.id}')">삭제</button>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
<script>
    const deleteMember = (id) => {
        console.log(id);
        location.href = "/member/delete?id="+id;
    }
</script>
</html>
