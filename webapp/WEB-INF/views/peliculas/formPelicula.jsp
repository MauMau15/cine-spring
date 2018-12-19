<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<spring:url value="/resources" var="urlPublic" />
<link rel="stylesheet"
		href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
		integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
		crossorigin="anonymous">
<link rel="stylesheet" href="${ urlPublic }/css/style.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Crear Pelicula</title>
</head>
<body>
	<jsp:include page="../includes/menu.jsp"></jsp:include>
	
	<div class="container py-5">
		<div class="page-header">
			<h2 class="text text-left">
				<span class="badge badge-success">Crear Película</span>
			</h2>
		</div>
		
		<spring:hasBindErrors name="pelicula">
			<div class="alert alert-warning alert-dismissible fade show" role="alert">
	  			<strong>Holy guacamole!</strong> You should check in on some of those fields below.
	  			<ul>
	  				<c:forEach var="error" items="${ errors.allErrors }">
	  					<li><spring:message message="${ error }"></spring:message></li>
	  				</c:forEach>
	  			</ul>
	  			<button type="button" class="close" data-dismiss="alert" aria-label="Close">
	    			<span aria-hidden="true">&times;</span>
	  			</button>
			</div>
		</spring:hasBindErrors>
		
		<spring:url value="/peliculas/save" var="urlFormPelicula"></spring:url>
		<form class="form mt-5" action="${ urlFormPelicula }" method="post" enctype="multipart/form-data">
			<div class="row">
				<div class="col-12 col-md-3">
					<div class="form-group">
						<label for="titulo">Título</label>
						<input type="text" name="titulo" id="titulo" class="form-control">
					</div>
				</div>
				<div class="col-12 col-md-3">
					<div class="form-group">
						<label for="duracion">Duración</label>
						<input type="text" name="duracion" id="duracion" class="form-control">
					</div>
				</div>
				<div class="col-12 col-md-3">
					<div class="form-group">
						<label for="clasificacion">Clasificación</label>
						<select name="clasificacion" id="clasificacion" class="form-control">
							<option value="A">Clasificación A</option>
							<option value="B">Clasificación B</option>
							<option value="C">Clasificación C</option>
							<option value="D">Clasificación D</option>
						</select>
					</div>
				</div>
				<div class="col-12 col-md-3">
					<div class="form-group">
						<label for="genero">Género</label>
						<select name="genero" id="genero" class="form-control">
							<option value="terror">Terror</option>
							<option value="comedia">Comedia</option>
							<option value="accion">Acción</option>
							<option value="aventura">Aventura</option>
							<option value="drama">Drama</option>
						</select>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-12 col-md-3">
					<div class="form-group">
						<label for="status">Estatus</label>
						<select name="status"  id="status" class="form-control">
							<option value="activa">Activa</option>
							<option value="inactiva">Inactiva</option>
						</select>
					</div>
				</div>
				<div class="col-12 col-md-3">
					<div class="form-group">
						<label for="fechaEstreno">Fecha de estreno</label>
						<input type="date" name="fechaEstreno" id="fechaEstreno" class="form-control">
					</div>
				</div>
				<div class="col-12 col-md-6">
					<div class="form-group">
						<label for="imagen">Imagen</label>
						<input type="file" name="archivoImagen" id="imagen" class="form-control-file">
						<small class="text-muted">Selecciona la imagen</small>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-12 col-md-3">
					<div class="form-group">
						<button type="submit" class="btn btn-danger btn-block">Guardar</button>
					</div>
				</div>
			</div>
		</form>
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