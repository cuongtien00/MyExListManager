<%--
  Created by IntelliJ IDEA.
  User: Phong Vu
  Date: 11/9/2021
  Time: 8:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete Ex</title>

</head>
<body>
<h2>Delete Ex</h2>
<p>
    <c:if test='${requestScope["customer"]!=null }'>
        <span class="message">${requestScope["message"]} </span>
    </c:if>
</p>
<p>
    <a href="/customers">Back to list Ex</a>
</p>
<fieldset>
    <legend>Ex information</legend>

        <form method="post">
            <table>
                <tr>
                    <td>Name</td>
                    <td>${requestScope["customer"].getName()}</td>
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
                    <td><input type="submit" value="Delete Ex"></td>
                </tr>
            </table>
        </form>

</fieldset>

</body>
</html>
