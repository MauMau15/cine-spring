<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet"
		href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
		integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
		crossorigin="anonymous">
<link rel="stylesheet" href="${ urlPublic }/css/style.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<spring:url value="/resources" var="urlPublic"></spring:url>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">

<title>Listado de Películas</title>
</head>
<body>

	<jsp:include page="../includes/menu.jsp"></jsp:include>
	
	<spring:url value="/" var="urlRoot"></spring:url>
	<div class="container py-5">
		<h1 class="display-5">Listado de Películas</h1>
		
		
		<c:if test="${ mensaje ne null }">
			<div class="alert alert-success">
				${ mensaje }
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
	    			<span aria-hidden="true">&times;</span>
	  			</button>
			</div>
		</c:if>
		
		<a href="${ urlRoot }peliculas/create" class="btn btn-success">Nueva</a>
		
		<div class="row py-3">
			<table class="table table-responsive-sm table-bordered">
				<thead class="thead-light">
					<tr scope="row">
						<th>Titulo</th>
						<th>Genero</th>
						<th>Clasificacion</th>
						<th>Duracion</th>
						<th>Fecha Estreno</th>
						<th>Estatus</th>
						<th>Opciones</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${ peliculas }" var="pelicula">
						<tr scope="row">
							<td>${ pelicula.titulo }</td>
							<td>${ pelicula.genero }</td>
							<td>${ pelicula.clasificacion }</td>
							<td>${ pelicula.duracion }</td>
							<td><fmt:formatDate value="${ pelicula.fechaEstreno }" pattern="dd-MM-yyyy"/></td>
							<c:choose>
								<c:when test="${ pelicula.status == 'Activa' }">
									<td><span class="badge badge-success">${ pelicula.status }</span></td>
								</c:when>
								<c:otherwise>
									<td><span class="badge badge-danger">${ pelicula.status }</span></td>
								</c:otherwise>
							</c:choose>
							<td class="d-flex flex-row">
								<a class="btn btn-success text-white"><i class="fas fa-edit"></i></a>
								<a class="btn btn-danger text-white"><i class="fas fa-trash-alt"></i></a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		
	</div>
	
	
	<jsp:include page="../includes/footer.jsp"></jsp:include>
	
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
	<script src="https://cloud.tinymce.com/stable/tinymce.min.js?apiKey=hjx04nu91iihftrwh987bmk5ovai25r428y2zh2z6gp926ia"></script>
	<script src="${ urlPublic }/js/tinyScript.js"></script>

</body>
</html>