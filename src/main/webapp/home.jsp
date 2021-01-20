<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% request.setAttribute("isLoggedIn", false); %>
<%! int pageNumber = 1; %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <%@include file="partials/navbar.jsp"%>

    <c:choose>
        <c:when test="${isLoggedIn}">
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
        </c:when>
    </c:choose>

</body>
</html>
