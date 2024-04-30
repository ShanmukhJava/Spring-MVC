<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>User List</title>
</head>
<body>
    <h1>User List</h1>
    <a href="${pageContext.request.contextPath}/users/new">Add User</a>
    <table>
        <tr>
            <th>ID</th>
            <th>Username</th>
            <th>Email</th>
            <th>Actions</th>
        </tr>
        <c:forEach items="${users}" var="user">
            <tr>
                <td>${user.id}</td>
                <td>${user.userName}</td>
                <td>${user.email}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/users/${user.id}">Show</a>
                    <a href="${pageContext.request.contextPath}/users/${user.id}/edit">Edit</a>
                    <a href="${pageContext.request.contextPath}/users/${user.id}/delete">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>