<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Edit User</title>
</head>
<body>
    <h1>Edit User</h1>
    <form:form action="${pageContext.request.contextPath}/users/${user.id}" method="post" modelAttribute="user">
        <form:hidden path="id"/>
        <div>
            <label for="userName">Username:</label>
            <form:input path="userName" id="userName"/>
        </div>
        <div>
            <label for="email">Email:</label>
            <form:input path="email" id="email"/>
        </div>
        <button type="submit">Update</button>
    </form:form>
</body>
</html>