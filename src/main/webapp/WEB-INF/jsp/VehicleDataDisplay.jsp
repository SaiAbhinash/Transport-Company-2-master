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
				<h3>YOU CAN BOOK MANAGER ADDED VEHICLES HERE!!</h3>

			</div>
			<div class="card-body">

				<table class="table table-hover">
					<tr class="bg-info text-white">
						  <th >Vehicle ID</th>
					      <th >Vehicle Type</th>    
					      <th >Vehicle Description</th>
					      <th >Vehicle Customer Id</th>
					      <th >Vehicle Number</th>
					      
      
    					</tr>
			
	
						

					</tr>
					<c:forEach items="${list}" var="ob">
						<tr>
							
							<td>${ob. vehicle_id}</td>
							<td>${ob.vehicle_type}</td>
							<td>${ob.vehicle_desription}</td>
							<td>${ob.vehicle_customer_id}</td>
							<td>${ob.vehicle_number}</td>
							
							
							
							<td>
							
								| <a class="btn btn-success" href="edit?eid=${ob.vehicle_id}">BOOK VEHICLE</a>
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