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