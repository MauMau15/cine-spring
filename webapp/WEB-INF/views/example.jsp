<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%-- 
	<h1>Lista de peliculas</h1>
	<ol>
		<c:forEach items="${ peliculas }" var="pelicula">
			<li>${ pelicula }</li>
		</c:forEach>
	</ol>
	--%>


<!-- 
	<div class="container my-5">
		<h1 class="display-4">Lista de peliculas</h1>
		<table class="table table-striped table-responsive-sm table-bordered">
			<thead>
				<tr>
					<th scope="col">ID</th>
					<th scope="col">Titulo</th>
					<th scope="col">Duracion</th>
					<th scope="col">Clasificacion</th>
					<th scope="col">Genero</th>
					<th scope="col">Imagen</th>
					<th scope="col">Fecha Estreno</th>
					<th scope="col">Status</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${ peliculas }" var="pelicula">
					<tr>
						<td scope="row">${ pelicula.id }</td>
						<td>${ pelicula.titulo }</td>
						<td>${ pelicula.duracion }</td>
						<td>${ pelicula.clasificacion }</td>
						<td>${ pelicula.genero }</td>
						<td><img src="${ urlPublic }/img/${ pelicula.imagen }"></td>
						<td><fmt:formatDate value="${ pelicula.fechaEstreno }"
								pattern="dd-MM-yyyy" /></td>
						<td><c:choose>
								<c:when test="${ pelicula.status == 'Activa' }">
									<span class="badge badge-success">ACTIVA</span>
								</c:when>
								<c:otherwise>
									<span class="badge badge-danger">INACTIVA</span>
								</c:otherwise>
							</c:choose></td>
					</tr>
				</c:forEach>

			</tbody>
			<tbody>

			</tbody>
		</table>
	</div>

 -->
</body>
</html>