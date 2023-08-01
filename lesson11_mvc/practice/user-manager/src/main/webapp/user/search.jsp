<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 8/1/2023
  Time: 2:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Search view</title>
</head>
<body>
<center>
    <h1>User Management</h1>
    <h2>
        <a href="users?action=users">List All Users</a>
    </h2>
</center>
<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">
            <caption>
                <h2>
                    Search View
                </h2>
            </caption>
            <tr>
                <th>User Name:</th>
                <td>
                    ${user.name}
                </td>
            </tr>
            <tr>
                <th>User Email:</th>
                <td>
                    ${user.email}
                    />
                </td>
            </tr>
            <tr>
                <th>Country:</th>
                <td>
                    ${user.country}
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
