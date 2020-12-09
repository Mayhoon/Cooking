<%--
  Created by IntelliJ IDEA.
  User: MX
  Date: 11/29/2020
  Time: 10:29 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cook Book</title>
</head>
<body>
<h1>A cook book</h1>

<%--${label}--%>
<%--<%--%>
<%--    String name = request.getAttribute("label").toString();--%>
<%--    out.println(name);--%>
<%--%>--%>

<%--Die action muss in web xml oder durch einen @WebServlet tag gemapped sein--%>
<%--Achtung: ein / vor dem servlet namen nur wenn der Wert --%>
<form action="demo" method="get">
    Enter a receipt number: <input type="text" name="receipt_number"><br>
    Enter the amount of money you want to spend: <input type="text" name="budget"><br>
    <input type="submit" value="Submit Query">
</form>
</body>
</html>
