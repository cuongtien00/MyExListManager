<%--
  Created by IntelliJ IDEA.
  User: Phong Vu
  Date: 11/9/2021
  Time: 8:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit info of Ex</title>
    <style>
        .message{
            color: green;
        }
    </style>
</head>
<body>
<h1>Edit info of Ex</h1>
<p>
    <c:if test='${requestScope["message"]!=null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p>
    <a href="/customers">Back to Ex list</a>
</p>
<form method="post">
    <fieldset>
        <legend>Ex information</legend>
        <table>
            <tr>
                <td>Name:</td>
                <td><input type="text" name="name" id="name" value="${requestScope["customer"].getName()}"></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><input type="text" name="email" id="email" value="${requestScope["customer"].getEmail()}"></td>
            </tr>
            <tr>
                <td>Address</td>
                <td><input type="text" name="add" id="add" value="${requestScope["customer"].getAdd()}"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Update Ex"></td>
            </tr>
        </table>
    </fieldset>

</form>

</body>
</html>
