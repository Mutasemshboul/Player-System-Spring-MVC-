<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fifa Player</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</head>
<body>

<table class="table table-dark table-striped">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Name</th>
      <th scope="col">Number</th>
      <th scope="col">Address</th>
      <th scope="col">Phone</th>
      <th scope="col">Services</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach var="player" items="${players}">
    <tr>
    
	    <td>${player.id}</td>
	    <td>${player.name}</td>
	    <td>${player.number}</td>
	    <td>${player.address}</td>
	    <td>${player.phone}</td>
          <td>
          
          <c:url  var="editPlayer" value="/fifa/showplayer">
          <c:param name="playerId" value="${player.id}"></c:param>
          </c:url>
          
           <c:url  var="removePlayer" value="/fifa/removePlayer">
          <c:param name="playerId" value="${player.id}"></c:param>
          </c:url>
	<a href="${editPlayer}" type="button" class="btn btn-primary">Edit</a>
	<a href="${removePlayer}" class="btn btn-danger">Delete</a>
		</td>

    
    
      
      
      

    </tr>
   </c:forEach>
   
  </tbody>
</table>
	<a href="add" type="button" class="btn btn-primary">Add player</a>


</body>
</html>