<%--
  Created by IntelliJ IDEA.
  User: meadalicious
  Date: 1/19/21
  Time: 3:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%! int pageNumber = 1; %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <%@include file="partials/navbar.jsp"%>

    <h1>Hello Jupiter!</h1>
    <%-- Testing! --%>
    <!-- 123! -->
    <p>The page number is: <%= pageNumber %></p>

    <form action="user-profile.jsp" method="get">
        <input type="hidden" id="username" name="username" value="Dude">
        <input type="hidden" id="user-id" name="user-id" value="1234">
        <button type="submit">Go there!</button>
    </form>

    <h3>Add a TO-DO</h3>
    <form action="todo.jsp" method="post">
        <input type="text" id="item" name="items">
        <button type="submit">Add to list</button>
    </form>

</body>
</html>
