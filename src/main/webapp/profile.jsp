<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include></head>
<body>

   <jsp:include page="partials/profile-navbar.jsp" />

    <div class="container" align="center">
        <h1>${param.username}'s Profile</h1>
        <hr>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. A iste libero numquam, quas qui quia repudiandae. Alias cumque officiis voluptates.</p>
    </div>

</body>
</html>
