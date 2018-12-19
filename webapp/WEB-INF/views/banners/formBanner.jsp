<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
<spring:url value="/resources" var="urlPublic"></spring:url>
<spring:url value="/" var="urlRoot"></spring:url>
<link rel="stylesheet" href="${ urlPublic }/css/style.css">
<title>Agregar Banner</title>
</head>
<body>
<jsp:include page="../includes/menu.jsp"></jsp:include>
		
		<div class="container py-5 my-5">
		
		
		<spring:hasBindErrors name="banner">
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
			
			<form class="form" method="post" action="${ urlRoot }banners/save" enctype="multipart/form-data">
				
				<div class="row">
					<div class="col-12 col-md-6">
						<div class="form-group">
							<label for="nombre">Nombre</label>
							<input type="text" class="form-control" name="nombre" id="nombre">
						</div>
					</div>
					<div class="col-12 col-md-6">
						<div class="form-group">
							<label for="fecha">Fecha</label>
							<input type="date" class="form-control" name="fecha" id="fecha">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-12 col-md-6">
						<div class="form-group">
							<label for="estatus">Estatus</label>
							<select class="form-control" name="estatus" id="estatus">
								<option value="Activo">Activo</option>
								<option value="Inactivo">Inactivo</option>
							</select>
						</div>
					</div>
					<div class="col-12 col-md-6">
						<div class="form-group">
							<label for="imagen">Imagen</label>
							<input type="file" class="form-control-file" name="archivoImagen" id="imagen">
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
	
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>