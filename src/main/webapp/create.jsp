<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 3/2/2022
  Time: 10:58 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Create new student</h1>
<form action="/students?param=createPost" method="post">
    <lable>ID:
        <input type="text" name="id">
    </lable>
    <br>
    <lable>Name:
        <input type="text" name="name">
    </lable>
    <br>
    <lable>Age:
        <input type="text" name="age">
    </lable>
    <br>
    <lable>Address:
        <input type="text" name="address">
    </lable>
    <br>
    <lable>Avg:
        <input type="text" name="avg">
    </lable>
    <br>
    <button type="submit">Login</button>
</form>
</body>
</html>
