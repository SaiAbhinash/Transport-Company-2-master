<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
	<div class="container">

		<div class="card">
			<div class="card-header bg-primary text-white">
				<h3>WELCOME TO VEHICLE DATA PAGE!!</h3>

			</div>
			<div class="card-body">

				<table class="table table-hover">
					<tr class="bg-info text-white">
						<th>userid</th>
						<th>vehicleid</th>
						<th>source</th>
						<th>destination</th>
						<th>driverId</th>
						<th>date</th>
						
	
						

					</tr>
					<c:forEach items="${list}" var="ob">
						<tr>
							
							<td>${ob.userid}</td>
							<td>${ob.vehicleid}</td>
							<td>${ob.source}</td>
							<td>${ob.destination}</td>
							<td>${ob.driverId}</td>
							<td>${ob.date}</td>
							
							
							<td><a class="btn btn-danger" href="delete?eid=${ob.userid}">DELETE</a>
								| <a class="btn btn-success" href="edit?eid=${ob.userid}">EDIT</a>
							</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>

		<nav aria-label="Page navigation example">
			<ul class="pagination">
				<c:if test="${!page.isFirst()}">
					<li class="page-item"><a class="page-link" href="?page=0">FIRST</a></li>
				</c:if>

				<c:if test="${page.hasPrevious()}">
					<li class="page-item"><a class="page-link"
						href="?page=${page.getNumber()-1}">PREVIOUS</a></li>
				</c:if>


				<c:forEach var="i" begin="0" end="${page.getTotalPages()-1}">
					<li class="page-item"><a class="page-link" href="?page=${i}">${i+1}</a></li>
				</c:forEach>

				<c:if test="${page.hasNext()}">
					<li class="page-item"><a class="page-link"
						href="?page=${page.getNumber()+1}">NEXT</a></li>
				</c:if>

				<c:if test="${!page.isLast()}">

					<li class="page-item"><a class="page-link"
						href="?page=${page.getTotalPages()-1}">LAST</a></li>
				</c:if>
			</ul>
		</nav>
		${message}
	</div>
</body>
</html>