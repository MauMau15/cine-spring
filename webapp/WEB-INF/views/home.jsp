<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Bienvenido a Cineapp</title>
	<link rel="stylesheet"
		href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
		integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
		crossorigin="anonymous">
	<spring:url value="/resources" var="urlPublic" />
	<link rel="stylesheet" href="${ urlPublic }/css/style.css" />
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
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

	<jsp:include page="includes/menu.jsp"></jsp:include>




	<div class="container-fluid pb-5">
		<div id="carouselExampleControls" class="carousel slide"
			data-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img class="d-block w-100" src="${ urlPublic }/img/slide1.jpg"
						alt="First slide">
				</div>
				<div class="carousel-item">
					<img class="d-block w-100" src="${ urlPublic }/img/slide2.jpg"
						alt="Second slide">
				</div>
				<div class="carousel-item">
					<img class="d-block w-100" src="${ urlPublic }/img/slide3.jpg"
						alt="Third slide">
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleControls"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleControls"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
	</div>
	
	<div class="container py-1">
		<div class="row page-header">
			<div class="col-lg-12">
				<h2 class="text text-center">
					<span class="badge badge-success">EN CARTELERA</span>
				</h2>
			</div>
		</div>
		<div class="my-5">
			<form action="#" method="post">
				<div class="row">
					<div class="col-2 col-md-1">
						<label for="fecha">Fecha: </label> 
					</div>
					<div class="col-4 col-md-3 col-lg-2">
						<select id="fecha" name="fecha" class="form-control">
							<option value="01-05-2017">01-05-2017</option>
							<option value="02-05-2017">02-05-2017</option>
							<option value="03-05-2017">03-05-2017</option>
							<option value="04-05-2017">04-05-2017</option>
						</select>
					</div>
					<div class="col-4 col-md-3 col-lg-2">
						<button type="submit" class="btn btn-primary btn-block">Filtrar</button>
					</div>
				</div>
			</form>
		</div>
	</div>

	<div class="container marketing pt-2 pb-3">
		<div class="row">
			<c:forEach items="${ peliculas }" var="pelicula">
				<div class="col-xs-12 col-sm-6 col-md-3">
					<img class="img-estreno rounded"
						src="${ urlPublic }/img/${ pelicula.imagen }"
						alt="${ pelicula.titulo }">
					<p class="my-1 lead">${ pelicula.titulo }</p>
					<p>
						<span class="badge badge-secondary">${ pelicula.clasificacion }</span> 
						<span class="badge badge-secondary">${ pelicula.duracion }</span> 
						<span class="badge badge-secondary">${ pelicula.genero }</span>
					</p>
					<p>
						<a class="btn btn-sm btn-primary" href="#" role="button">Consulta Horarios &raquo;</a>
					</p>
				</div>
			</c:forEach>
		</div>
	</div>
	
	
		<div class="page-header">
			<h2 class="text text-center">
				<span class="badge badge-success">Noticias y novedades</span>
			</h2>
		</div>

		<div class="container py-2">
			<div class="card mb-3">
				<div class="card-body">
					<div class="card-title">Julia Roberts protagonizará The Bookseller</div>
					<div class="card-text">
						<p class="badge badge-danger">Publicado: 16-06-2017</p>
						<p>
							La novela de Cynthia Swanson <span style="color: #0000ff;"><strong>The
									Bookseller</strong></span> ser&aacute; llevada al cine con <span
								style="color: #0000ff;">Julia Roberts (Los Pitufos: La
								aldea Escondida)</span> como protagonista.<br />
							<br />La historia est&aacute; ambientada en los sesenta y su
							protagonista es una mujer soltera, Kitty Miller, que lleva una
							librer&iacute;a. Sue&ntilde;a con una vida alternativa en la que
							ha encontrado el amor y est&aacute; casada y con hijos, pero la
							l&iacute;nea que separa realidad y ficci&oacute;n comienza a estar
							demasiado dispersa para que la distinga.<br />
							<br />Seg&uacute;n informa <span style="color: #ff0000;"><strong>Moviehole</strong></span>
							Roberts tambi&eacute;n producir&aacute; la pel&iacute;cula junto a
							Lisa Gillan y Marisa Yeres Hill.
						</p>
					</div>
				</div>
			</div>
			<div class="card">
				<div class="card-body">
					<div class="card-title">Bob Esponja: tercera película y temporada 12</div>
					<div class="card-text">
						<p class="badge badge-danger">Publicado: 15-06-2017</p>
						<p class="text-danger">
							Nickelodeon y productor de SpongeBob Square Pants confirman temporada 12 de 52 episodios y tercera pel&iacute;cula pr&oacute;ximamente. </span></strong>
						</p>
						<p class="lead">
							<strong>&iexcl;Calamardo est&aacute; enojado!Bob Esponja: tercera pel&iacute;cula y temporada 12</strong>
						</p>
						<p>
							Nickelodeon y productor de SpongeBob Square Pants confirman
							temporada 12 de 52 episodios y tercera pel&iacute;cula
							pr&oacute;ximamente. &iexcl;Calamardo est&aacute; enojado!.
						</p>
						<p>
							A lado de cierta Pi&ntilde;a (debajo del mar), Calamardo
							debe estar de muy mal humor, pues hay Bob Esponja para rato...
							&iexcl;y por partida doble!. Por un lado, Vincent Waller (The Ren
							&amp; Stimpy Show), artista, productor, escritor y supervisor
							creativo de SpongeBob Squarepants anunci&oacute; con un divertido
							dibujo desde su cuenta de Twitter que, antes de que se estrene
							siquiera la temporada 11 de la serie animada, se ha confirmado ya
							la n&uacute;mero 12, &iexcl;que constar&aacute; de 52 episodios
							(recuerden que cada emisi&oacute;n consta de 2 aventuras)!
						</p>
					</div>
				</div>
			</div>
		</div>



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