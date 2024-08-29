<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<H3>WELCOME TO VEHICLE  REGISTER PAGE!!</H3>
<H4> You Can Apply For Vehicles Only after Admin Adds to the User</H4>
<form action="save" method="POST">
<pre>
userid   : <input type="text" name="userid"/>
vehicleid  : <input type="text" name="vehicleid"/>
source: <input type="text" name="source"/>
destination : <input type="text" name="destination"/>
driverId: <input type="text" name="driverId"/>
date : <input type="text" name="date"/>



		
   <input type="submit" value="Add Vehicle"/>
</pre>
</form>
${msg}
</body>
</html>