<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
    <title>All users</title>
</head>
<body>
<sec:authorize access="isAuthenticated()">
    You are logged as: <sec:authentication property="principal.username"/><br>
    Your role: <sec:authentication property="principal.authorities"/>
</sec:authorize>

<sec:authorize access="isAuthenticated()">
    <form action="/logout" method="post">
        <input class="fa fa-id-badge" type="submit" value="Log out">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    </form>
</sec:authorize>

<table>
    <tr>
        <th>Lp.</th>
        <th>Username</th>
        <th>Password</th>
        <th>Enabled</th>
        <th>Authors</th>
    </tr>
    <c:forEach items="${users}" var="user">
        <tr>
            <td>${user.id}</td>
            <td>${user.username}</td>
            <td>${user.password}</td>
            <td>${user.enabled}</td>
            <td>
                <c:forEach items="${user.roles}" var="role">
                    ${role.name}
                </c:forEach>
            </td>
            <td><a href="edit?id=${user.id}">Edit</a></td>
            <td><a href="remove?id=${user.id}" onclick="return confirm('Are you sure?')">Remove</a></td>
        </tr>
    </c:forEach>
</table>
<a href="/book/add">Add a new book</a>
</body>
</html>
