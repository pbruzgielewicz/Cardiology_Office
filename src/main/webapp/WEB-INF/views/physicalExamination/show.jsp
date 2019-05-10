<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Physical Examinations</title>
    <%@ include file="../parts/header.jsp" %>
</head>
<body>
<%@ include file="../parts/navbar.jsp" %>
<table class="table table-bordered">
    <thead class="thead-dark">
    <tr>
        <th scope="col">Id</th>
        <th scope="col">Created</th>
        <th scope="col">Action</th>
    </tr>
    </thead>
    <c:forEach items="${listOfPhysicalExaminations}" var="examination">
        <tbody>
        <tr>
            <th scope="row">${examination.id}</th>
            <td>${examination.created}</td>
            <td>
                <a class="btn btn-info" href="/showDetails/${examination.id}">Details</a>
            </td>
        </tr>
        </tbody>
    </c:forEach>
</table>

<%@ include file="../parts/footer.jsp" %>
</body>
</html>