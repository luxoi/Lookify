<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isErrorPage="true" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous"/>
  </head>
  <body>
   <h1>New song</h1>
   	<form:form action="/save" method="POST" modelAttribute="song">
 		<div>
			<form:label path="name">Title</form:label> 		
 			<form:input path="name"/>
 			<form:errors path="name"></form:errors>
 		</div>
 		<div>
			<form:label path="artist">Artist</form:label> 		
 			<form:input path="artist"/>
 			<form:errors path="artist"></form:errors>
 		</div>
 		<div>
			<form:label path="rating">Rating</form:label> 		
 			<form:input path="rating"/>
 			<form:errors path="rating"></form:errors>
 		</div>
 		<input type="submit" value="Create new Song">
 	</form:form>
   
  </body>
</html>