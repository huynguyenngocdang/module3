<!-- index.jsp -->
<!DOCTYPE html>
<html>
<head>
    <title>Simple Calculator</title>
</head>
<body>
<h2>Simple Calculator</h2>
<form action="CalculationServlet" method="post">
    Enter first number: <input type="text" name="num1"><br>
    Enter second number: <input type="text" name="num2"><br>
    Select operation:
    <select name="operation">
        <option value="add">Addition</option>
        <option value="subtract">Subtraction</option>
        <option value="multiply">Multiplication</option>
        <option value="divide">Division</option>
    </select><br>
    <input type="submit" value="Calculate">
</form>
</body>
</html>
