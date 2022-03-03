<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core_1_1" %>
<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 3/2/2022
  Time: 10:30 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>All Student</h1>
<button><a href="/students?param=createGet">Create new student</a></button>
<button><a href="/students?param=sort">Sap xep</a></button>
<button><a href="/students?param=great">hoc sinh gioi</a></button>
<br>
<form action="/students?param=search" method="post">
   <lable><input type="text" name="search"></lable>
    <button type="submit">Search</button>
</form>
<table>
    <tr>
        <td>ID</td>
        <td>Name</td>
        <td>Age</td>
        <td>Address</td>
        <td>Avegare</td>
        <td colspan="2">Action</td>
    </tr>
<c:forEach items="${students}" var="student">
<tr>
    <td>${student.getId()}</td>
    <td>${student.getName()}</td>
    <td>${student.getAge()}</td>
    <td>${student.getAddress()}</td>
    <td>${student.getAvg()}</td>
    <td><button><a href="/students?param=editGet&id=${student.getId()}">Edit</a></button></td>
    <td><button><a href="/students?param=delete&id=${student.getId()}">Delete</a></button></td>

</tr>
</c:forEach>

</table>
</body>
</html>
