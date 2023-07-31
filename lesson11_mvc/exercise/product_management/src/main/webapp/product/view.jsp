<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 7/31/2023
  Time: 4:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View product</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<h1 align="center">PRODUCT DETAILS</h1>
<p>
    <a class="btn btn-outline-dark" href="product" role="button">
        Back to product list
    </a>
</p>
<table>
    <tr>
        <td>Name:</td>
        <td>
            ${products.getName()}
        </td>
    </tr>
    <tr>
        <td>Price:</td>
        <td>
            ${products.getPrice()}
        </td>
    </tr>
    <tr>
        <td>Amount:</td>
        <td>
            ${products.getAmount()}
        </td>
    </tr>
    <tr>
        <td>Image:</td>
        <td>
            <img width="100px" height="100px" src="${products.getImg()}">
        </td>
    </tr>
</table>
</body>
</html>
