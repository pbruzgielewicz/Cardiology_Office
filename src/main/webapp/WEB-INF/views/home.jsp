<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>HomePage</title>
    <%@ include file="parts/header.jsp" %>
</head>
<body>
<%@ include file="parts/navbar.jsp" %>


<table class="table table-bordered">
    <thead class="thead-dark">
    <tr>
        <th scope="col">Id</th>
        <th scope="col">Pesel</th>
        <th scope="col">First Name</th>
        <th scope="col">Last Name</th>
        <th scope="col">Action</th>
        <th scope="col">Add PhysicalEx</th>
        <th scope="col">Add AdditionalEx</th>
    </tr>
    </thead>
    <c:forEach items="${listOfPatients}" var="patient">
        <tbody>
        <tr>
            <th scope="row">${patient.id}</th>
            <td>${patient.pesel}</td>
            <td>${patient.firstName}</td>
            <td>${patient.lastName}</td>
            <td>
                <a class="btn btn-info btn-sm" href="edit/${patient.id}">Edit</a>
                <a class="btn btn-info btn-sm" href="show/${patient.id}">Show</a>
            </td>
            <td><a class="btn btn-info btn-sm" href="addPhysical/${patient.id}">AddPhysical</a></td>
            <td><a class="btn btn-info btn-sm" href="addAdditional/${patient.id}">AddAdditional</a> </td>
        </tr>
        </tbody>
    </c:forEach>
</table>

<%@ include file="parts/footer.jsp" %>
</body>
</html>
