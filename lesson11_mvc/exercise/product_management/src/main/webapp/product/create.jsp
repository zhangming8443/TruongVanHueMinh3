<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 7/31/2023
  Time: 3:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Create form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<h1 align="center">CREATE NEW PRODUCT</h1>
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
                    <input name="name" type="text" id="name">
                </td>
            </tr>
            <tr>
                <td>Price:</td>
                <td>
                    <input name="price" type="text" id="price">
                </td>
            </tr>
            <tr>
                <td>Amount:</td>
                <td>
                    <input name="amount" type="text" id="amount">
                </td>
            </tr>
            <tr>
                <td>Image (link):</td>
                <td>
                    <input name="img" type="text" id="img">
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <button type="submit" class="btn btn-dark">Create Product</button>
                </td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
