<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Product Discount Calculator</title>
</head>
<body>
<h1>Product Discount Calculator </h1>
<form action="/display-discount" method="post">
    <input type="text" name="prdDescription" placeholder="Product Description">
    <br/>
    <input type="text" name="listPrice" placeholder="List Price">
    <br/>
    <input type="text" name="discountPercent" placeholder="Discount Percent">
    <br/>
    <input type="submit" id="submit" value="Calculate Discount">
</form>

</body>
</html>