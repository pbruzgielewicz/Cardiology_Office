<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Patient Description</title>
    <%@ include file="../parts/header.jsp" %>
</head>
<body class="bg-dark text-white">
<%@ include file="../parts/navbar.jsp" %>
<div align="center">
    <h6>Id</h6>
    <p>${patient.id}</p>
    <h6>First Name</h6>
    <p>${patient.firstName}</p>
    <h6>Last Name</h6>
    <p>${patient.lastName}</p>
    <h6>Pesel</h6>
    <p>${patient.pesel}</p>
    <h6>Adress</h6>
    <p>${patient.adress}</p>
    <h6>Present Ailments</h6>
    <p>${patient.presentAilments}</p>
    <h6>Previous Diseases</h6>
    <p>${patient.previousDiseases}</p>
    <h6>Current Medicines</h6>
    <p>${patient.currentMedicines}</p>
    <h6>Date of Birth</h6>
    <p>${patient.dateOfBirth}</p>
</div>
<div align="center">
    <div>
        <a class="btn btn-light btn-sm " href="/showPhysical/${patient.id}">Show PhysicalEx</a>
    </div>
    <p></p>
    <div>
        <a class="btn btn-light btn-sm" href="/showAdditional/${patient.id}">Show AdditionalEx</a>
    </div>

</div>


<%@ include file="../parts/footer.jsp" %>
</body>
</html>
