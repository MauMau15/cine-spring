<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
		href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
		integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
		crossorigin="anonymous">
	<spring:url value="/resources" var="urlPublic" />
	<spring:url value="/" var="urlRoot" />
	<link rel="stylesheet" href="${ urlPublic }/css/style.css" />
<title>Detalle</title>
</head>
<body>

	<jsp:include page="includes/menu.jsp"></jsp:include>
	
	<div class="container py-5">
		<div class="mb-5">
			<h2 class="display-4">${ pelicula.titulo }</h2>	
		</div>
		<div class="row">
			<div class="col-md-4 mb-sma-3">
				<img class="rounded mx-auto d-block h-100" alt="${ pelicula.titulo }" src="${ urlPublic }/img/${ pelicula.imagen }">
			</div>
			<div class="col-md-8">
				<div class="card">
					<div class="card-header">
						<h3 class="card-title">Detalles</h3>
					</div>
					<div class="card-body">
						<p class="card-text mb-1">Titulo Original: </p>
						<p class="card-text mb-1">Actores: </p>
						<p class="card-text mb-1">Director: </p>
						<p class="card-text mb-1">Clasificacion: ${ pelicula.clasificacion }</p>
						<p class="card-text mb-1">Duracion: ${ pelicula.duracion } minutos</p>
						<p class="card-text mb-1">Genero: ${ pelicula.genero }</p>
						<p class="card-text">Fecha de estreno: ${ pelicula.fechaEstreno }</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="container py-5">
		<div class="mb-3">
			<div class="badge badge-success">${ fechaConsultada }</div>
		</div>
		<div class="row">
			<div class="table">
				
			</div>
		</div>
	</div>
	
	<jsp:include page="includes/footer.jsp"></jsp:include>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
</body>
</html>