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
<p>${patient.id}</p>
<p>${patient.firstName}</p>
<p>${patient.lastName}</p>
<p>${patient.pesel}</p>
<p>${patient.adress}</p>
<p>${patient.presentAilments}</p>
<p>${patient.previousDiseases}</p>
<p>${patient.currentMedicines}</p>
<p>${patient.dateOfBirth}</p>
</div>
<div align="center">
    <div>
        <a class="btn btn-info btn-sm" href="/showPhysical/${patient.id}">Show PhysicalEx</a>
    </div>
    <div>
    <a class="btn btn-info btn-sm" href="/showAdditional/${patient.id}">Show AdditionalEx</a>
    </div>

</div>
<%@ include file="../parts/footer.jsp" %>
</body>
</html>
