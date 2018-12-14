<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Crear Noticia</title>
<spring:url value="/resources" var="urlPublic" />
<link rel="stylesheet"
		href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
		integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
		crossorigin="anonymous">
<link rel="stylesheet" href="${ urlPublic }/css/style.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
	
	<jsp:include page="../includes/menu.jsp"></jsp:include>
	
	<div class="container py-5">
		<div class="page-header">
			<h2 class="text text-left">
				<span class="badge badge-success">Crear Noticia</span>
			</h2>
		</div>
		<form class="form mt-5">
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label for="tituloNoticia">Título</label>
						<input type="text" class="form-control" name="tituloNoticia" id="tituloNoticia">
					</div>
				</div>
				<div class="col-md-3">
					<div class="form-group">
						<label for="statusNoticia">Estatus</label>
						<select name="statusNoticia"  id="statusNoticia" class="form-control">
							<option value="activa">Activa</option>
							<option value="inactiva">Inactiva</option>
						</select>
					</div>
				</div>
			</div>
			<div class="row">
				<div clasS="col-12">
					<div class="form-group">
						<label for="contenidoNoticia">Contenido</label>
						<textarea class="form-control" id="contenidoNoticia" name="contenidoNoticia"></textarea>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">
					<button type="submit" class="btn btn-primary btn-block" name="enviar" id="enviar">Enviar</button>
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