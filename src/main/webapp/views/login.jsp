<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: This MC
  Date: 14/12/2023
  Time: 8:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="<%=request.getContextPath()%>/resources/css/login.css" rel="stylesheet"/>
    <title>Login</title>
</head>
<body>
<form action="<%=request.getContextPath()%>/userController/login" method="post" modelMap="loginRequest">
    <label for="email">Email</label>
    <input type="text" id="email" name="email"/><br>
    <label for="password">Password</label>
    <input type="password" id="password" name="password"/><br>
    <c:if test="${not empty error}">
        <label style="color: red">${error}</label><br>
    </c:if>
    <input type="submit" value="Login"/>
</form>
</body>
</html>