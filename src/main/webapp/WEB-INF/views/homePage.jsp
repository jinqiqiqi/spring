<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>home page</title>
</head>
<body>
<h3>Welcome to the spring mvc tutorials page</h3>
<ul>
    <li>Java 8 tutorials</li>
    <li>Spring Tutorials</li>
    <li>BigData tutorials</li>
</ul>
<c:url value="/logout" var="logoutUrl" />
<form action="${logoutUrl}" id="logout" method="post">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
</form>
<c:if test="${pageContext.request.userPrincipal.name != null}">
    <a href="javascript: document.getElementById('logout').submit()">Logout</a>
</c:if>
</body>
</html>
