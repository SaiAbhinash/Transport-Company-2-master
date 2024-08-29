<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

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
		<th scope="col">Vehicle Id</th>
		<th scope="col">Vehicle Number</th>
		<th scope="col">Vehicle Type</th>
		<th scope="col">Vehicle Description</th>
	</tr>
	</thead>
	<tbody>
	<c:forEach items="${list}" var="vehicle">
	<tr>
		<td>${vehicle.getVehicle_id()}></td>
		<td>${vehicle.getVehicle_number()}</td>
		<td>${vehicle.getVehicle_type()}></td>
		<td>${vehicle.getVehicle_desription()}></td>
	</tr>
	</c:forEach>
	</tbody>
</table>
</body>
</html>