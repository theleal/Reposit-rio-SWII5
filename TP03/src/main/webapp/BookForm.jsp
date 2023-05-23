


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
		<nav class="navbar navbar-expand-md navbar-dark" style="background-color: rgb(2, 97, 175)">
            <div>
                <a class="navbar-brand" style="color: white"> Books Management </a>
            </div>

            <ul class="navbar-nav">
                <li><a href="<%=request.getContextPath()%>/new " class="nav-link"> Adicionar Livro </a></li>
            </ul>

            <ul class="navbar-nav">
                <li><a href="<%=request.getContextPath()%>/list" class="nav-link">Lista de Livros</a></li>
            </ul>
            <ul class="navbar-nav">
                <li><a href="<%=request.getContextPath()%>/creditosAlunos.jsp" class="nav-link">Creditos da
                        dupla</a></li>
            </ul>
        </nav>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">

                    <c:if test="${book != null}">
                        <form action="update" method="post">
                    </c:if>

                    <c:if test="${book == null}">
                        <form action="insert" method="post">
                    </c:if>

                    <caption>
                        <h2 style="color:  rgb(2, 97, 175)">
                            <c:if test="${book != null}">
                                Editar Livro
                            </c:if>
                            <c:if test="${book == null}">
                                Adicionar Livro
                            </c:if>
                        </h2>
                    </caption>

                    <fieldset class="form-group">
                        <c:if test="${book != null}">
                            <input type="hidden" class="form-control" name="id" value="<c:out value='${book.id}' />" />
                        </c:if>
                    </fieldset>


					<fieldset class="form-group">
						<label>Title:</label>
                            <input type="text" class="form-control" name="title" size="45"
                                value="<c:out value='${book.title}' />" />
					</fieldset>

					<fieldset class="form-group">
						<label>Author:</label>
                            <input type="text" class="form-control"name="author" size="45" value="<c:out value='${book.author}' />" />
					</fieldset>

					<fieldset class="form-group">
                        <label>Price:</label>
                        <input type="text" class="form-control" name="price" size="5" value="<c:out value='${book.price}' />" />
					</fieldset>

					<button type="submit" class="btn btn-info">Salvar</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>