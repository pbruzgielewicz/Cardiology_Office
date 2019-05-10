<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login page</title>
    <%@ include file="parts/header.jsp" %>

</head>
<body class="p-3 mb-2 bg-dark text-white">
<div align="center">
    <div class="form-group col-md-6 p-3 mb-2 bg-dark text-white">
        <form>
            <div class="form-group col-md-6">
                <label>Login</label></br>
                <input type="text">
            </div>
            <div class="form-group col-md-6">
                <label>Password</label></br>
                <input type="password">
            </div>
        </form>
    </div>
    <a href="/home" class="btn btn-light">Login</a>
</div>
<%@ include file="parts/footer.jsp" %>
</body>
</html>
