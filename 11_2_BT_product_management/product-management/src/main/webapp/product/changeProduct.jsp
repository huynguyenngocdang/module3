<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 12/12/2023
  Time: 12:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/products" method="post">
    <button type="submit"> Return to List</button>
</form>

<form action="/products?action=edit&productId=${requestScope["product"].getProductId()}" method="post">


<table>
    <tr>
        <td>Name:</td>
        <td><input type="text" name="productName" id="productName" value="${requestScope["product"].getProductName()}"></td>
    </tr>
    <tr>
        <td>Quantity:</td>
        <td><input type="number" name="productQuantity" id="productQuantity" value="${requestScope["product"].getProductQuantity()}"></td>
    </tr>
    <tr>
        <td>Price:</td>
        <td><input type="number" name="productPrice" id="productPrice" value="${requestScope["product"].getProductPrice()}"></td>
    </tr>
    <tr>
        <td>
            <button type="submit"> Submit Change </button>
        </td>
    </tr>
</table>
</form>
</body>
</html>
