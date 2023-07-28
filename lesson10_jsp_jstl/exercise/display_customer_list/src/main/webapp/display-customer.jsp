<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 7/28/2023
  Time: 11:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Customer List</title>
    <style>
        img {
            width: 10%;
            height: 10%;
        }
    </style>
</head>
<body>
<h1>Customer List</h1>
<table class="table">
    <thead>
    <tr>
        <th scope="col">Name</th>
        <th scope="col">Date</th>
        <th scope="col">Address</th>
        <th scope="col">Image</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="element" items="${customer}">

        <tr>
            <td>${element.name}</td>
            <td>${element.date}</td>
            <td>${element.address}</td>
            <td><img src="${element.img}"></td>
        </tr>
    </c:forEach>

    </tbody>
</table>

</body>
</html>
