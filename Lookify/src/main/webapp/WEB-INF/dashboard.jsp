<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="style1.css">
    <script src="https://kit.fontawesome.com/7fcb098354.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Document</title>
</head>
<body>
    <div class="stokify-contenedor box">
	     <div class="a">
	        
	        <form action="/buscar" method="POST" class="row">
			<div class="col-10">
			<input type="text" name="artist"  class="form-control col-10" placeholder="Ingrese el nombre a buscar">
			</div>
			<input type="submit" value="buscar"  class="btn btn-primary col-2">
			</form>
            
        </div>
        <div class="b box ">
        	<div class="text-white">
            <a href="/new" class="text-white">Add new</a>
            </div class="text-white">
            <div>
             <a href="/topTen" class="text-white">Top Songs</a>
             </div>
        </div>
        <div class="c box text-white">
            <div class="playlist-title text-white">Playlist</div>
            <ul class="playlists text-white">
                <li class="playlist-li"><img class="playlistphoto" src="https://www.harrisonsrecords.cl/wp-content/uploads/2021/02/metallica-master-of-puppets.jpg" alt=""><a href="">Metal</a></li>
                <li class="playlist-li"><img class="playlistphoto" src="https://www.rockaxis.com/img/newsList/1812543.jpg" alt=""><a href="">Rock</a></li>
                <li class="playlist-li"><img class="playlistphoto" src="https://www.rockaxis.com/img/newsList/2656847.jpg" alt=""><a href="">Pop</a></li>
                <li class="playlist-li"><img class="playlistphoto" src="https://i.scdn.co/image/ab67616d0000b273853588a3fc815ab6c6464475" alt=""><a href="">Trap</a></li>
            </ul>
        </div>
       		 <div class="d box text-white">
            
                <table class="table text-white">
                <div class="container">
					  <thead>
					    <tr>
					      <th scope="col">name</th>
					      <th scope="col">rating</th>
					      <th scope="col">actions</th>
					    </tr>
					  </thead>
					  <tbody>
					  <c:forEach items="${canciones}" var="cancion">
					    <tr>
					      <td><a href="/song/${cancion.id}">${cancion.name}</a></td>
					      <td>${cancion.rating}</td>
					      <td><form action="/delete/${cancion.id}" method="POST">
							<input type="hidden" name="_method" value="delete">	
							<input type="submit" value="DELETE">			      
						      </form></td>
					    </tr>
					    </c:forEach>
					  </tbody>
					</table>
			</div>

            </div>
        </div>

    </div>
    
</body>
</html>