
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Vehicle</title>
<%@ include file="components/common_cs_js.jsp"%>
</head>
<body>
  <%@ include file="components/navbar.jsp"%>
  
 <div class="container-fluid">
  <div class="row mt-2">
       <div class="col-md-4 offset-md-4 admin" >
            <div class="card">
                <%@ include file="components/message.jsp"%>
                <div class="card-body px-5">
                    <h3 class="text-center my-3">Add Vehicle here..!!</h3>
            <form action="VehicleHandler" method="post">
                 <input type="hidden" id="custId" name="action" value="add">
			  <div class="form-group" id="add-form">
			    <label for="vehicle-id">Vehicle Id</label>
			    <input type="number" class="form-control" id="vehicle-id" aria-describedby="emailHelp" name = "vehicle_id" placeholder="Vehicle id" required>
			    <small id="emailHelp" class="form-text text-muted">Enter any unique id</small>
			  </div>
			  <div class="form-group">
			    <label for="vehicle-type">Vehicle Type</label>
			    <input type="text" name = "vehicle_type" class="form-control" id="vehicle-type" placeholder="Vehicle Type" required>
			  </div>
			  <div class="form-group">
			    <label for="vehicle-description">Vehicle Description</label>
			    <input type="text" name = "vehicle_desription" class="form-control" id="vehicle-description" placeholder="Vehicle Description" required>
			  </div>
			  <div class="form-group">
			    <label for="vehicle-owner">Vehicle Owner Id</label>
			    <input type="number" name = "vehicle_customer_id" class="form-control" id="vehicle-owner" placeholder="Vehicle Owner Id" required>
			  </div>
			  <div class="form-group">
			    <label for="vehicle-number">Vehicle Number</label>
			    <input type="number" name = "vehicle_number" class="form-control" id="vehicle-number" placeholder="Vehicle Number" required>
			  </div>
           
                 
                 <div class="container text-center">
                      <button class="btn text-white custom-bg">Add Vehicle</button>
                 </div>
                 
            </form>
                </div>
            </div>
           
       </div>
  </div>
</div>
</body>
</html>