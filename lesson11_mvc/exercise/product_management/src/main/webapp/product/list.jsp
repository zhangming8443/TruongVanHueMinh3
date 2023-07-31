<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 7/31/2023
  Time: 1:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <h1 align="center"> PRODUCT LIST</h1>
    <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col">Name</th>
            <th scope="col">Price</th>
            <th scope="col">Amount</th>
            <th scope="col">Image</th>
            <th scope="col">Edit</th>
            <th scope="col">Delete</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items='${requestScope["products"]}' var="product">
            <tr>
                <td>
                    <a style="text-decoration: none; color: black" href="product?action=view&id=${product.getId()}">
                            ${product.getName()}
                    </a>
                </td>
                <td>
                        ${product.getPrice()}
                </td>
                <td>
                        ${product.getAmount()}
                </td>
                <td>
                    <img width="100px" height="100px" src="${product.getImg()}">
                </td>
                <td>
                    <a class="btn btn-secondary" role="button" href="product?action=edit&id=${product.getId()}">
                        Edit
                    </a>
                </td>
                <td>
                    <a class="btn btn-danger" role="button" href="product?action=delete&id=${product.getId()}">
                        Delete
                    </a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <a class="btn btn-dark" href="/product?action=create" role="button">Create new product</a>
</div>
</body>
</html>
