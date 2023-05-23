<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>

<head>
    <title>Books Management</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<body>
    <header>
        <nav class="navbar navbar-expand-md navbar-dark" style="background-color: rgb(2, 97, 175)">
            <div>
                <a class="navbar-brand" style="color: white"> Books Management </a>
            </div>

            <ul class="navbar-nav">
                <li><a href="creditosAlunos.jsp" class="nav-link">Creditos da dupla</a></li>
            </ul>
        </nav>
    </header>
    </br>

    </br>
    <div class="container col-md-6">
        <div class="d-flex justify-content-center">
            <a class="btn btn-info" style="margin-right: 15px" href="<%=request.getContextPath()%>/new" role="button">Adicionar
                Livro</a>
            <a class="btn btn-info" href="<%=request.getContextPath()%>/list" role="button">Listar
                Livro</a>
        </div>
    </div>
</body>
</html>