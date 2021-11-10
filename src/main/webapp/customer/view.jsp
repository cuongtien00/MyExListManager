<%--
  Created by IntelliJ IDEA.
  User: Phong Vu
  Date: 11/9/2021
  Time: 8:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View customer</title>
</head>
<body>
<h1>View customer</h1>
<p>
    <a href="/customers">Back to customer list</a>
</p>
<table>
    <tr>
        <td>Name</td>
        <td>${requestScope["customer"].getId()}</td>
    </tr>
    <tr>
        <td>Email</td>
        <td>${requestScope["customer"].getEmail()}</td>
    </tr>
    <tr>
        <td>Address</td>
        <td>${requestScope["customer"].getAdd()}</td>
    </tr>
    <tr>
        <td></td>
        <td><a href="/customers?action=edit&id=${requestScope["customer"].getId()}"><input type="submit" value="Edit Ex"></a></td>
    </tr>
    <tr>
        <td></td>
        <td><a href="/customers?action=delete&id=${requestScope["customer"].getId()}"><input type="submit" value="Delete Ex"></a></td>
    </tr>
</table>
</body>
</html>
