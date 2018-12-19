<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
<spring:url value="/resources" var="urlPublic"></spring:url>
<spring:url value="/" var="urlRoot"></spring:url>
<link rel="stylesheet" href="${ urlPublic }/css/style.css">
<title>Banners</title>
</head>
<body>
	<jsp:include page="../includes/menu.jsp"></jsp:include>
		
		<div class="container py-5">
			
			<h1 class="display-5">Listado de Banners</h1>
			<a href="${ urlRoot }banners/create" class="btn btn-success">Nuevo</a>
			<c:if test="${ mensaje ne null }">
				<div class="alert alert-success mt-3">
					${ mensaje }
					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
	    				<span aria-hidden="true">&times;</span>
	  				</button>
				</div>
			</c:if>
			
			<div class="row py-3">
				<table class="table table-light table-bordered">
					<thead class="thead-light">
						<tr>
							<th class="text-center" scope="col">Nombre</th>
							<th class="text-center" scope="col">Fecha</th>
							<th class="text-center" scope="col">Estatus</th>
							<th class="text-center" scope="col">Opciones</th>
						</tr>
					</thead>
					<!-- here's where we consume our service -->
					<tbody>
						<c:forEach items="${ banners }" var="banner">
							<tr>
								<td class="text-center">${ banner.nombre }</td>
								<td class="text-center"><fmt:formatDate value="${ banner.fecha }" pattern="dd-MM-yyyy"/></td>
								<c:choose>
									<c:when test="${ banner.estatus eq 'Activo' }">
										<td class="text-center"><span class="badge badge-success">${ banner.estatus }</span></td>
									</c:when>
									<c:otherwise>
										<td class="text-center"><span class="badge badge-danger">${ banner.estatus }</span></td>
									</c:otherwise>
								</c:choose>
								<td class="d-flex flex-row text-white justify-content-around">
									<a class="btn btn-success"><i class="fas fa-edit"></i></a>
									<a class="btn btn-danger"><i class="fas fa-trash-alt"></i></a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			
		</div>
			
	<jsp:include page="../includes/footer.jsp"></jsp:include>
	
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>