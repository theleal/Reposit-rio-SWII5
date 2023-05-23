<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Books Management </title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: rgb(2, 97, 175)">
			<div>
				<a  class="navbar-brand" style="color: white"> Books Management </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Lista de Livros</a></li>
			</ul>

			<ul class="navbar-nav">
            	<li><a href="<%=request.getContextPath()%>/creditosAlunos.jsp"
            		class="nav-link">Creditos da dupla</a></li>
            </ul>
		</nav>
	</header>
	<br>

	<div class="row">
		<div class="container">
			<h3 class="text-center" style="color: rgb(6, 104, 91)">ALUNOS</h3>
			<hr>
            <label style="color: rgb(0, 0, 0)">Luiz Gustavo Leal Cortez - CB3015386</label>
            </br>
			<label style="color: rgb(0, 0, 0)">Rodrigo Rebelo - CB3016871 </label>
            </br>
		</div>
	</div>
</body>
</html>