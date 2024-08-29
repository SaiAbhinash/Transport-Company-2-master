<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
				<H3>WELCOME TO VEHICLE REGISTER PAGE!!</H3>
				<H4> You Can Apply For Vehicles Only after Admin Adds to the User</H4>

			</div>
			<div class="card-body">
				<form action="save" method="POST">

					<div class="row">
						<div class="col-2">USER ID</div>
						<div class="col-4">
							<input type="text" name="eid" class="form-control" />
						</div>
					</div>
					<div class="row">
						<div class="col-2">VEHICLE ID</div>
						<div class="col-4">
							<input type="text" name="vehicleid" class="form-control" />
						</div>
					</div>
					<div class="row">
						<div class="col-2">SOURCE</div>
						<div class="col-4">
							<input type="text" name="source" class="form-control" />
						</div>
					</div>
					<div class="row">
						<div class="col-2">DESTINATION</div>
						<div class="col-4">
							<input type="text" name="destination" class="form-control" />
						</div>
					</div>
					<div class="row">
						<div class="col-2">DRIVERID</div>
						<div class="col-4">
							<input type="text" name="driverId" class="form-control" />
						</div>
					</div>
					<div class="row">
						<div class="col-2">DATE</div>
						<div class="col-4">
							<input type="text" name="date"  class=" form-control" />
						</div>
					</div>





					<input type="submit" value="Add Vehicle" class="btn btn-success" />
				</form>
			</div>
		</div>

		${msg}
	</div>
</body>
</html>