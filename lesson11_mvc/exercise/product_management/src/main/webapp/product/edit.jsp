<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 7/31/2023
  Time: 4:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<h1 align="center">EDIT PRODUCT</h1>
<c:if test='${requestScope["message"] != null}'>
    <div class="alert alert-success d-flex align-items-center" role="alert">
        <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Success:">
            <use xlink:href="#check-circle-fill"/>
        </svg>
        <div>
            <span class="message">${requestScope["message"]}</span>
        </div>
    </div>
</c:if>
<p>
    <a class="btn btn-outline-dark" href="/product" role="button">
        Back to product list
    </a>
</p>
<form method="post">
    <fieldset>
        <legend>PRODUCT INFORMATION</legend>
        <table>
            <tr>
                <td>Name:</td>
                <td>
                    <input name="name" type="text" id="name" value="${products.getName()}">
                </td>
            </tr>
            <tr>
                <td>Price:</td>
                <td>
                    <input name="price" type="text" id="price" value="${products.getPrice()}">
                </td>
            </tr>
            <tr>
                <td>Amount:</td>
                <td>
                    <input name="amount" type="text" id="amount" value="${products.getAmount()}">
                </td>
            </tr>
            <tr>
                <td>Image (link):</td>
                <td>
                    <input name="img" type="text" id="img" value="${products.getImg()}">
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <button type="submit" class="btn btn-dark">Update Product</button>
                </td>
            </tr>
        </table>
    </fieldset>
</form>

</body>
</html>
