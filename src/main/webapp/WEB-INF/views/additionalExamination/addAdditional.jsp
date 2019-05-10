<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add AdditionalEx</title>
    <%@ include file="../parts/header.jsp" %>
</head>
<body class="bg-dark">
<%@ include file="../parts/navbar.jsp" %>
<form:form action="/addAdditional/${id}" method="post" modelAttribute="additionalExamination">
    <div align="center">
        <div class="form-group col-md-6 p-3 mb-2 bg-dark text-white">
            <h1>Additional Examination</h1>
            <div class="form-group col-md-6">
                <label>Data</label>
                <form:input path="data" type="text" class="form-control" placeholder="Data"/>
            </div>
            <div class="form-group col-md-6">
                <label>Type</label>
                <form:select path="type" type="text" class="form-control">
                    <form:option value="-" label="--select type--"/>
                    <form:options items="${types}"/>
                </form:select>
            </div>
        </div>
        <button type="submit" class="btn btn-light">Save</button>
    </div>
</form:form>
<%@ include file="../parts/footer.jsp" %>
</body>
</html>
