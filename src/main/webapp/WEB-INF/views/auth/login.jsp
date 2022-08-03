<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Login page</title>
</head>
<body>
<c:if test="${empty param.error and param.error != null}">
    <p>Incorrect login data</p>
</c:if>

<h1>Login page</h1>
<form:form method="post">
    <div><label> Username : <input type="text" name="username"/> </label></div>
    <div><label> Password: <input type="password" name="password"/> </label></div>
    <div><input type="submit" value="Sign In"/></div>
    <c:out value="${param.param}"/>
</form:form>

</body>
</html>