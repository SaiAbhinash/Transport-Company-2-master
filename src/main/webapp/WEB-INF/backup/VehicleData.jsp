<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>WELCOME TO VEHICLEE DATA PAGE!!</h3>
<table border="1">
	<tr>
		<th>ID</th>
		<th>vehicleNumber</th>
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
			<td>
				<a href="delete?eid=${ob.userid}">DELETE</a> | 
				<a href="edit?eid=${ob.userid}">EDIT</a>
			</td>
		</tr>
	</c:forEach>
</table>
<hr/>
<c:if test="${!page.isFirst()}">
	<a href="?page=0">FIRST</a> &nbsp;&nbsp;
</c:if>


<c:if test="${page.hasPrevious()}">
	<a href="?page=${page.getNumber()-1}">PREVIOUS</a> &nbsp;&nbsp;
</c:if>

<c:forEach var="i" begin="0" end="${page.getTotalPages()-1}">
<a href="?page=${i}">${i+1}</a> &nbsp;&nbsp;
</c:forEach>

<c:if test="${page.hasNext()}">
	<a href="?page=${page.getNumber()+1}">NEXT</a> &nbsp;&nbsp;
</c:if>

<c:if test="${!page.isLast()}">
	<a href="?page=${page.getTotalPages()-1}">LAST</a> &nbsp;&nbsp;
</c:if>


<hr/>
${message}
</body>
</html>