<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="com.training.transportcomany2.model.User"%>
<%@ page import="dao.UserController"%>
<%@ page import="com.training.transportcomany2.services.UserService"%>
<%@ page import="com.training.transportcomany2.repos.UserRepo"%>
<%@ page import="java.util.*"%>



<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- CSS only -->
<link rel="stylesheet" href="/css/style.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</head>
<body>
<table class="table">
	<thead>
	<tr>
		<th scope="col">Id</th>
		<th scope="col">First Name</th>
		<th scope="col">Last Name</th>
		<th scope="col">Username</th>
		<th scope="col">Phone Number</th>
	</tr>
	</thead>
	<tbody>
	<c:forEach items="${list}" var="user">
	<tr>
		<td>${user.getId()}</td>
		<td>${user.getFirstName()}</td>
		<td>${user.getLastName()}</td>
		<td>${user.getUname()}</td>
		<td>${user.getContactno()}</td>
	</tr>
	</c:forEach>
	</tbody>
</table>
<script>
  	$(document).ready(function(){
  		$("#view-users").click(function(){
  			$.get("/allUsers");
  		});
  	});
  </script>
</body>
</html>