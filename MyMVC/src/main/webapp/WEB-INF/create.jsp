<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Create User</title>
</head>
<body>
    <h1>Create User</h1>
    <form:form action="${pageContext.request.contextPath}/users" method="post" modelAttribute="user">
        <div>
            <label for="userName">Username:</label>
            <form:input path="userName" id="userName"/>
        </div>
        <div>
            <label for="email">Email:</label>
            <form:input path="email" id="email"/>
        </div>
        <button type="submit">Save</button>
    </form:form>
</body>
</html>