<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 8/1/2023
  Time: 8:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sort View</title>
</head>
<body>
<div align="center">
    <form method="post">

        <table border="1" cellpadding="5">
            <caption>
                <h2>
                    Sort View
                </h2>
            </caption>
            <tr>
                <th>User ID:</th>
                <th>User Name:</th>
                <th>User Email:</th>
                <th>User Country:</th>
            </tr>
            <c:forEach items="${userList}" var="user">
                <tr>
                    <td>
                            ${user.id}
                    </td>
                    <td>
                            ${user.name}
                    </td>
                    <td>
                            ${user.email}
                    </td>
                    <td>
                            ${user.country}
                    </td>
                </tr>
            </c:forEach>
        </table>
    </form>
</div>

</body>
</html>
