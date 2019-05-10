<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Additional Examination Det</title>
    <%@ include file="../parts/header.jsp" %>
</head>
<body class="bg-dark text-white">
<%@ include file="../parts/navbar.jsp" %>
<div align="center">
    <h5>${details.type}</h5>
    <h6>Created date: </h6>
    <p>${details.created}</p>
    <h6>Photo should be here.</h6>
    <p>${details.data}</p>
</div>
<%@ include file="../parts/footer.jsp" %>
</body>
</html>

