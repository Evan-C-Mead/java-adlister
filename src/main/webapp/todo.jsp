<%--
  Created by IntelliJ IDEA.
  User: meadalicious
  Date: 1/19/21
  Time: 3:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>To Do List</title>
</head>
<body>

    <h2>Here is your to do list:</h2>
    <ul>
        <li>
            <%= request.getParameter("item")%>
        </li>
    </ul>

    <p><%= request.getMethod()%></p>

</body>
</html>