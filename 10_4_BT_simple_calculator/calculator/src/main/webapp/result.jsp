<!-- result.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Result</title>
</head>
<body>
<h2>Result</h2>

<%-- Retrieve the result from the request attributes --%>
<% Double result = (Double) request.getAttribute("result");
%>
<p>Result is: </p> <%= result%>
<br><br>
<a href="index.jsp">Go back to the calculator</a>
</body>
</html>
