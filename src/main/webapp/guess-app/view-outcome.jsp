<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Result of guess</title>
</head>
<body>

<c:choose>
    <c:when test="${url.equals('/incorrect')}">
        <h1>You are incorrect</h1>
    </c:when>
    <c:otherwise>
        <h1>You are correct</h1>
    </c:otherwise>
</c:choose>

</body>
</html>
