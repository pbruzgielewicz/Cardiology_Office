<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Physical Examination Det</title>
    <%@ include file="../parts/header.jsp" %>
</head>
<body class="bg-dark text-white">
<%@ include file="../parts/navbar.jsp" %>
<div align="center">
    <h6>Created date: </h6>
    <p>${details.created}</p>
    <h6>Weight: </h6>
    <p>${details.weight}</p>
    <h6>Growth: </h6>
    <p>${details.growth}</p>
    <h6>Skin: </h6>
    <p>${details.skin}</p>
    <h6>Lymph Nodes: </h6>
    <p>${details.lymphNodes}</p>
    <h6>Neck: </h6>
    <p>${details.neck}</p>
    <h6>Head: </h6>
    <p>${details.head}</p>
    <h6>Eyes: </h6>
    <p>${details.eyes}</p>
    <h6>Chest: </h6>
    <p>${details.chest}</p>
    <h6>Abdominal Cavity: </h6>
    <p>${details.abdominalCavity}</p>
    <h6>Limbs: </h6>
    <p>${details.limbs}</p>
    <h6>Pulse: </h6>
    <p>${details.pulse}</p>
    <h6>Pressure: </h6>
    <p>${details.pressure}</p>
</div>
<%@ include file="../parts/footer.jsp" %>
</body>
</html>
