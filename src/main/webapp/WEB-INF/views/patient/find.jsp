<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Find</title>
    <%@ include file="../parts/header.jsp" %>
</head>
<body>
<%@ include file="../parts/navbar.jsp" %>
<div class="container-fluid bg-dark text-white">
    <div class="row">
        <div class="col-md-4 col-sm-4 col-xs-12"></div>
        <div class="col-md-4 col-sm-4 col-xs-12">
            <form method="post">
                <label>Last name</label>
                <input type="text" name="lastName">
                <button type="submit">Find</button>
            </form>
        </div>
        <div class="col-md-4 col-sm-4 col-xs-12"></div>
    </div>
</div>

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
    <c:forEach items="${patients}" var="patient">
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
            <td><a class="btn btn-info btn-sm" href="addAdditional/${patient.id}">AddAdditional</a></td>
        </tr>
        </tbody>
    </c:forEach>
</table>

<%@ include file="../parts/footer.jsp" %>
</body>
</html>
