<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>addPhysical</title>
    <%@ include file="../parts/header.jsp" %>
</head>
<body class="bg-dark">
<%@ include file="../parts/navbar.jsp" %>
<form:form action="/addPhysical/${id}" method="post" modelAttribute="physicalExamination">
    <div align="center">
        <div class="form-group col-md-6 p-3 mb-2 bg-dark text-white">
            <div class="form-group col-md-6">
                <h1>Physical Examination</h1>
                <label>Weight</label>
                <form:input path="weight" type="text" class="form-control" placeholder="Weight"/>
            </div>
            <div class="form-group col-md-6">
                <label>Growth</label>
                <form:input path="growth" type="text" class="form-control" placeholder="Growth"/>
            </div>
            <div class="form-group col-md-6">
                <label>Skin</label>
                <form:input path="skin" type="text" class="form-control" placeholder="Skin"/>
            </div>
            <div class="form-group col-md-6">
                <label>Lymph Nodes</label>
                <form:input path="lymphNodes" type="text" class="form-control" placeholder="Lymph-Nodes"/>
            </div>
            <div class="form-group col-md-6">
                <label>Neck</label>
                <form:input path="neck" type="text" class="form-control" placeholder="Neck"/>
            </div>
            <div class="form-group col-md-6">
                <label>Head</label>
                <form:input path="head" type="text" class="form-control" placeholder="Head"/>
            </div>
            <div class="form-group col-md-6">
                <label>Eyes</label>
                <form:input path="eyes" type="text" class="form-control" placeholder="Eyes"/>
            </div>
            <div class="form-group col-md-6">
                <label>Chest</label>
                <form:input path="chest" type="text" class="form-control" placeholder="Chest"/>
            </div>
            <div class="form-group col-md-6">
                <label>Abdominal Cavity</label>
                <form:input path="abdominalCavity" type="text" class="form-control" placeholder="Abdominal-Cavity"/>
            </div>
            <div class="form-group col-md-6">
                <label>Limbs</label>
                <form:input path="limbs" type="text" class="form-control" placeholder="Limbs"/>
            </div>
            <div class="form-group col-md-6">
                <label>Pulse</label>
                <form:input path="pulse" type="text" class="form-control" placeholder="Pulse"/>
            </div>
            <div class="form-group col-md-6">
                <label>Pressure</label>
                <form:input path="pressure" type="text" class="form-control" placeholder="Pressure"/>
            </div>
        </div>
        <button type="submit" class="btn btn-light">Save</button>
    </div>
</form:form>
<%@ include file="../parts/footer.jsp" %>
</body>
</html>
