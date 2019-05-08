<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>addPhysical</title>
    <%@ include file="../parts/header.jsp" %>
</head>
<body class="bg-dark">

<form:form action="/addPhysical/${id}" method="post" modelAttribute="physicalExamination">
<div align="center">
    <div class="form-group col-md-6 p-3 mb-2 bg-dark text-white">
        <div class="form-group col-md-6">
            <h1>Physical Examination</h1>
            <label>Weight</label>
            <form:input path="weight" type="text" class="form-control" placeholder="weight"/>
        </div>
        <div class="form-group col-md-6">
            <label>Growth</label>
            <form:input path="growth" type="text" class="form-control" placeholder="Growth"/>
        </div>

    </div>
    <button type="submit" class="btn btn-light">Save</button>
</div>
</form:form>
<%@ include file="../parts/footer.jsp" %>
</body>
</html>
