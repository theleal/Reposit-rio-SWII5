<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Books Store Application</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
        style="background-color:rgb(2, 97, 175)">
			<div>
				<a  class="navbar-brand" style="color: white"> Books Management </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/new"
					class="nav-link">Adicionar Livro</a></li>
			</ul>

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
			<h3 class="text-center">Lista de Livros</h3>
			<hr>
			<div class="container text-left">

				<a href="<%=request.getContextPath()%>/new" class="btn btn-info">Adicionar Novo Livro </a>
			</div>
			<br>
			<table  class="table table-hover">
				<thead>
					<tr>
                        <th>ID</th>
                        <th>Title</th>
                        <th>Author</th>
                        <th>Price</th>
                        <th>Actions</th>
					</tr>
				</thead>
				<tbody>

                    <c:forEach var="book" items="${listBook}">

						<tr>
                            <td><c:out value="${book.id}" /></td>
                            <td><c:out value="${book.title}" /></td>
                            <td><c:out value="${book.author}" /></td>
                            <td><c:out value="${book.price}" /></td>
							<td>
                                <a href="./edit?id=<c:out value='${book.id}' />">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp;
                                <a href="./delete?id=<c:out value='${book.id}' />">Delete</a>
                            </td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>
