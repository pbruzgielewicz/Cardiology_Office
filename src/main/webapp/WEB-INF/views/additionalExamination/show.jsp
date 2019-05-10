<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Additional Examinations</title>
    <%@ include file="../parts/header.jsp" %>
</head>

<%@ include file="../parts/navbar.jsp" %>
<table class="table table-bordered">
    <thead class="thead-dark">
    <tr>
        <th scope="col">Id</th>
        <th scope="col">Data</th>
        <th scope="col">Type</th>
        <th scope="col">Created</th>
        <th scope="col">Show more</th>
    </tr>
    </thead>
    <c:forEach items="${listOfAdditionalExaminations}" var="examination">
        <tbody>
        <tr>
            <th scope="row">${examination.id}</th>
            <td>${examination.data}</td>
            <td>${examination.type}</td>
            <td>${examination.created}</td>
            <td>
                <a class="btn btn-dark" href="/details/${examination.id}">Details</a>
            </td>
        </tr>
        </tbody>
    </c:forEach>
</table>

<%@ include file="../parts/footer.jsp" %>
</body>
</html>