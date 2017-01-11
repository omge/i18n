<%--
  Created by IntelliJ IDEA.
  User: wanggenshen_sx
  Date: 2016/12/23
  Time: 9:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
    <title>Show Page</title>
</head>
<body>
    <h2>Show All Employees</h2>
    <br>
    <table border="1" cellpadding="10" cellspacing="0">
        <tr>
            <th>ID</th>
            <th>LastName</th>
            <th>Email</th>
        </tr>

        <c:forEach items="${employees}" var="emp">
            <tr>
                <td>${emp.id}</td>
                <td>${emp.lastName}</td>
                <td>${emp.email}</td>
            </tr>

        </c:forEach>
    </table>
</body>
</html>
