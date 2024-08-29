
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Vehicle</title>
<%@ include file="components/common_cs_js.jsp"%>
</head>
<body>
	<%@ include file="components/navbar.jsp"%>

	<%
	Vehicle vehicle = (Vehicle) request.getAttribute("vehicle");
	%>

	<div class="container-fluid">
		<div class="row mt-2">
			<div class="col-md-4 offset-md-4 admin">
				<div class="card">
					<%@ include file="components/message.jsp"%>
					<div class="card-body px-5">
						<h3 class="text-center my-3">Update Vehicle here..!!</h3>
						<form action="/manager/VehicleHandler-update" method="post">

							<div class="form-group">
								<label for="name">Vehicle Id</label> <input type="text"
									class="form-control" id="vehicle_id" aria-describedby="emailHelp"
									name="id" value="<%=vehicle.getVehicle_id()%>" required readonly>
							</div>

							<div class="form-group">
								<label for="name">Vehicle Type</label> <input type="text"
									class="form-control" id="name" aria-describedby="emailHelp"
									name="vehicle_type" placeholder="Enter vehcile name.." value="<%=vehicle.getVehicle_type() %>" required>
							</div>

							<div class="form-group">
								<label for="description">Vehicle Desription</label> <input
									type="text" class="form-control" id="password"
									aria-describedby="emailHelp" name="vehicle_desription"
									placeholder="Enter registration no.." value="<%=vehicle.getVehicle_desription() %>" required>
							</div>

							<div class="form-group">
								<label for="v-ownerId">Vehicle Owner Id</label> <input type="number"
									class="form-control" id="password" aria-describedby="emailHelp"
									name="vehicle_customer_id" placeholder="Enter weight" value="<%=vehicle.getVehicle_customer_id() %>" required>
							</div>

							<div class="form-group">
								<label for="v-no">Vehicle Number</label> <input type="number"
									class="form-control" id="vehicle-no" aria-describedby="emailHelp"
									name="vehicle_number" placeholder="Enter  no. of tyre" value="<%=vehicle.getVehicle_number() %>" required>
							</div>


							<div class="container text-center">
								<button class="btn text-white custom-bg">Update Vehicle</button>
							</div>

						</form>
					</div>
				</div>

			</div>
		</div>
	</div>
</body>
</html>