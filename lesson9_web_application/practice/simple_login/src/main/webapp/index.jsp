<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Simple Login</title>
</head>
<style>
    .login {
        height: 180px;
        width: 230px;
        margin: 0;
        padding: 10px;
        border: 1px #CCC solid;
    }

    .login input {
        padding: 5px;
        margin: 5px
    }
</style>
<body>
<form method="post" action="/login">
    <div class="login">
        <h2>Login</h2>
        <input type="text" name="userName" size="30" placeholder="User Name">
        <input type="text" name="password" size="30" placeholder="Password">
        <br/>
        <input type="submit" value="Sign in">
    </div>
</form>

</body>
</html>