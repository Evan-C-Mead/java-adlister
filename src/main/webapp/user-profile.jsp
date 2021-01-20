<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Profile</title>
</head>
<body>

<%--    <h3>Welcome, <%= request.getParameter("username")%></h3>--%>
    <h3>Welcome, ${param.username}</h3>
<%--    <h3>Your user ID is: <%= request.getParameter("user-id")%></h3>--%>
    <h3>Your user ID is: ${param["user-id"]}</h3>

    <p><%= request.getMethod()%></p>

</body>
</html>