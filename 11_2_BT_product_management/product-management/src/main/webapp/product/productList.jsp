<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 12/12/2023
  Time: 9:11 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Product List</title>
</head>
<body>
    <table>
        <thead>
        <tr>
            <th>Name</th>
            <th>Quantity</th>
            <th>Price</th>
        </tr>
        </thead>
        <tbody>
            <c:forEach items="${products}" var="product">
                <tr>
                    <td>${product.getProductName()} </td>
                    <td> ${product.getProductQuantity()} </td>
                    <td> ${product.getProductPrice()} </td>
                    <td>
                        <form action="/products?action=view&productId=${product.getProductId()}" method="post" >
                            <button type="submit"> View</button>
                        </form>
                    </td>
                    <td>
                        <form action="/products?action=showEdit&productId=${product.getProductId()}" method="post">
                            <button type="submit">Edit</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
