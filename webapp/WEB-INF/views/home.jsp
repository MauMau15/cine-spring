<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bienvenido a Cineapp</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<spring:url value="/resources" var="urlPublic" />
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
		 			<td><fmt:formatDate value="${ pelicula.fechaEstreno }" pattern="dd-MM-yyyy"/></td>
		 		</tr>
	 		</c:forEach>
	 		
	 	</tbody>
	 	<tbody>
	 		
	 	</tbody>
	 </table>
	</div>
	
	 
	 
 	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>