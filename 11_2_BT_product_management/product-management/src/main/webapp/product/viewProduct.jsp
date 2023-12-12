<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 12/12/2023
  Time: 12:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>A product</title>
</head>
<body>
<form action="/products" method="post">
    <button type="submit"> Return to List</button>
</form>
    <table>
        <tr>
            <td>Name:</td>
            <td>${product.getProductName()}</td>
        </tr>
        <tr>
            <td>Quantity:</td>
            <td>${product.getProductQuantity()}</td>
        </tr>
        <tr>
            <td>Price:</td>
            <td>${product.getProductPrice()}</td>
        </tr>
    </table>
</body>
</html>
