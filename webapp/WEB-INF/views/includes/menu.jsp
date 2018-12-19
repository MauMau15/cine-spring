<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<spring:url value="/" var="urlRoot"></spring:url>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<a class="navbar-brand" href="${ urlRoot }">My Cine Site</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarNav" aria-controls="navbarNav"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarNav">
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" href="${ urlRoot }peliculas/index">Peliculas</a></li>
			<li class="nav-item"><a class="nav-link" href="${ urlRoot }banners/index">Banners</a></li>
		</ul>
	</div>
</nav>