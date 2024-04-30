<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Details</title>
</head>
<body>
    <h1>User Details</h1>
    <p>ID: ${user.id}</p>
    <p>Username: ${user.userName}</p>
    <p>Email: ${user.email}</p>
    <a href="${pageContext.request.contextPath}/users">Back to List</a>
</body>
</html>