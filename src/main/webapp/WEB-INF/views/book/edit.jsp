<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Edit the book</title>

    <style>
        .flex-container {
            display: flex;
            flex-direction: column;
        }
    </style>
</head>
<body>
<h1>Edit the book</h1>
<form:form method="post" modelAttribute="book">
    <div class="flex-container">
        <span>Title:<form:input path="title"/></span>
        <span>Rating: <form:input path="rating"/></span>
        <span>Description: <form:input path="description"/></span>
        <span>Publisher: <form:select path="publisher.id" items="${publishers}" itemLabel="name" itemValue="id"/></span>
        <span>Authors: <form:select path="authors" multiple="true" items="${authors}" itemLabel="name" itemValue="id"/></span>
        <span>Pages:<form:input path="pages"/></span><form:errors path="pages" cssClass="error"/>
        <span>Category:<form:select path="category.id" items="${categories}" itemLabel="name" itemValue="id"/></span><form:errors path="category" cssClass="error"/>
    </div>
    <form:hidden path="id"/>
    <input type="submit" value="Save changes">
</form:form>
</body>
</html>
