<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Patient</title>
    <%@ include file="../parts/header.jsp" %>
</head>
<body class="p-3 mb-2 bg-dark text-white">
<%@ include file="../parts/navbar.jsp" %>

<form:form action="/patients/add" method="post" modelAttribute="patient">
<div align="center">
    <div class="form-group col-md-6 p-3 mb-2 bg-dark text-white">
        <div class="form-group col-md-6">
            <label>First name</label>
            <form:input path="firstName" type="text" class="form-control" placeholder="First name"/>
            <form:errors path="firstName">
                <span class="text-danger">First name is required!</span>
            </form:errors>
        </div>
        <div class="form-group col-md-6">
            <label>Last name</label>
            <form:input path="lastName" type="text" class="form-control" placeholder="Last name"/>
            <form:errors path="lastName">
                <span class="text-danger">Last name is required!</span>
            </form:errors>
        </div>
        <div class="form-group col-md-6">
            <label>PESEL</label>
            <form:input path="pesel" type="text" class="form-control"/>
            <form:errors path="pesel">
                <span class="text-danger">Wrong pesel, try again!</span>
            </form:errors>

        </div>
        <div class="form-group col-md-6">
            <label>Date of birth</label>
            <form:input path="dateOfBirth" type="text" class="form-control" placeholder="Date Of Birth"/>
        </div>
        <div class="form-group col-md-6">
            <label>Adress</label>
            <form:input path="adress" type="text" class="form-control"/>
        </div>
        <div class="form-group col-md-6">
            <label>Present Ailments</label>
            <form:textarea path="presentAilments" rows="3" type="text" class="form-control"
                           placeholder="Present Ailments"/>
        </div>
        <div class="form-group col-md-6">
            <label>Previous Diseases</label>
            <form:textarea path="previousDiseases" rows="3" type="text" class="form-control"
                           placeholder="Previous Diseases"/>
        </div>
        <div class="form-group col-md-6">
            <label>Current Medicines</label>
            <form:textarea path="currentMedicines" rows="3" type="text" class="form-control"
                           placeholder="Current Medicines"/>
        </div>

    </div>
    <button type="submit" class="btn btn-light">Save</button>

    </form:form>
</div>
<%@ include file="../parts/footer.jsp" %>
</body>
</html>
