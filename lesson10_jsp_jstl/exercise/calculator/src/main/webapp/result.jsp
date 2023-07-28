<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 7/28/2023
  Time: 3:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Result</title>
</head>
<body>
<h1>
    <c:if test="${error != null}">Error</c:if>
    <c:if test="${error == null}">Result</c:if>
</h1>
<p>${firstOperand} ${operator} ${secondOperand}
    <c:if test="${error == null}">=</c:if>
    ${result}</p>
<p>${error}</p>

</body>
</html>
