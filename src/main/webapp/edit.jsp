<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 3/2/2022
  Time: 12:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="/students?param=editPost" method="post">
        <lable>ID:
            <input type="text" name="id" value="${student.getId()}" hidden>
        </lable>
        <br>
        <lable>Name:
            <input type="text" name="name" value="${student.getName()}">
        </lable>
        <br>
        <lable>Age:
            <input type="text" name="age" value="${student.getAge()}">
        </lable>
        <br>
        <lable>Address:
            <input type="text" name="address" value="${student.getAddress()}">
        </lable>
        <br>
        <lable>Avg:
            <input type="text" name="avg" value="${student.getAvg()}">
        </lable>
        <br>
        <button type="submit">Login</button>
</form>

</body>
</html>
