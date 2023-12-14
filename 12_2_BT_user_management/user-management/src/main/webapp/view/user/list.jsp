<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 12/12/2023
  Time: 5:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User Management Application</title>
</head>
<body>
    <table>
        <tr>
            <th>Username</th>
            <th>Password</th>
        </tr>
    <c:forEach var="user" items="${userList}">
        <tr>
            <td><c:out value="${user.getUsername()}"/></td>
            <td><c:out value="${user.getUserPassword()}"/></td>
            <td>
                <a href="/users?action=edit&id=${user.userId}">Edit</a>
            </td>
        </tr>
    </c:forEach>

    </table>

</body>
</html>
