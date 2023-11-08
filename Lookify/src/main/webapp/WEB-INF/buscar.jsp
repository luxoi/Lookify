<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Busqueda</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<h1>Busqueda: ${artist}</h1>
		<table class="table table-striped">
			
			<thead>
				<tr>
					<th>Nombre</th>
					<th>Artista</th>
					<th>Rating</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${canciones}" var="cancion">
					<tr>
						<td>${cancion.name}</td>
						<td>${cancion.artist}</td>
						<td>${cancion.rating}</td>
					</tr>v
				</c:forEach>
				
			</tbody>
		</table>
	</div>
</body>
</html>