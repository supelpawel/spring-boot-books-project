<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
    <title>The book list</title>
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
<h1>The book list</h1>
<table>
    <tr>
        <th>No.</th>
        <th>Title</th>
        <th>Rating</th>
        <th>Description</th>
        <th>Publisher</th>
        <th>Category</th>
        <th>Authors</th>
        <th>Actions</th>
    </tr>
    <c:forEach items="${books}" var="book">
        <tr>
            <td>${book.id}</td>
            <td>${book.title}</td>
            <td>${book.rating}</td>
            <td>${book.description}</td>
            <td>${book.publisher.name}</td>
            <td>${book.category.name}</td>
            <td>
                <c:forEach items="${book.authors}" var="author">
                    ${author.firstName} ${author.lastName}
                </c:forEach>
            </td>
            <td><a href="edit?id=${book.id}">Edit</a></td>
            <td><a href="remove?id=${book.id}" onclick="return confirm('Are you sure?')">Remove</a></td>
        </tr>
    </c:forEach>
</table>
<a href="/book/add">Add a new book</a>
</body>
</html>
