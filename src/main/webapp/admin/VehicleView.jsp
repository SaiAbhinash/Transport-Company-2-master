<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/style.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>

<div class="container">
  <div class="row mt-2">
    <div class="col-sm">
      <div class="card" style="width: 18rem; height: 18rem">
      <div class="card-element">
      <button type="button" class="btn btn-default" data-toggle="modal" data-target="#addModal">
      	<i class='bx bx-plus-medical' ></i>
      </button>
      <h3>Add Vehicle</h3>
      </div>
      </div>
    </div>
    <div class="col-sm">
      <div class="card" style="width: 18rem; height: 18rem">
      <div class="card-element">
      <button type="button" class="btn" data-toggle="modal" data-target="#editModal">
	      <i class="bi bi-tools"></i>
      </button>
      <h3>Edit Vehicle</h3>
      </div>
      </div>
      
    </div>
    <div class="col-sm">
      <div class="card" style="width: 18rem; height: 18rem">
      <div class="card-element">
      <button type="button" class="btn" data-toggle="modal" data-target="#deleteModal">
      	<i class="bi bi-trash-fill"></i>
      	
      </button>
      <h3>Delete</h3>
      </div>
      </div>
    </div>
  </div>
  <div class="row mt-2">
    <div class="col-sm">
      <div class="card" style="width: 18rem; height: 18rem">
      <div class="card-element">
      	<button type="button" class="btn" data-toggle="modal" data-target="#viewModal">
	      	<i class="bi bi-search"></i>
	      	
	    </button>
	    <h3>view Vehicle</h3>
      </div>
      </div>
    </div>
    <div class="col-sm">
      <div class="card" style="width: 18rem; height: 18rem">
      <div class="card-element">
      <a href="allVehicles/"><i class="bi bi-view-stacked" id="view-vehicles"></i></a>
      <h3>view Vehicles</h3>
      </div>
      </div>
      
    </div>
    <div class="col-sm">
      <div class="card" style="width: 18rem; height: 18rem">
      <div class="card-element">
      	<i class="bi bi-app"></i>
      	<h3>Dummy</h3>
      </div>
      </div>
    </div>
  </div>
</div>


<!-- Modal -->
<div id="addModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title">Add Vehicle</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <div class="modal-body">
        <form action="VehicleHandler" method="post">
        	<input type="hidden" id="custId" name="action" value="update">
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
			  <button type="submit" class="btn btn-primary" id="submit-add">Submit</button>
			</form>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>
</div>
<!-- Update Modal -->
<div id="editModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title">Edit Vehicle</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <div class="modal-body">
        <form action="VehicleHandler-update" method="post">
        	<input type="hidden" id="custId" name="action" value="update">
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
			  <button type="submit" class="btn btn-primary" id="submit-add">Submit</button>
			</form>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>
</div>

<!-- delete Modal -->
<div id="deleteModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
      <h4 class="modal-title">Delete Vehicle</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <div class="modal-body">
        <form action="VehicleHandler-delete" method="post">
        	<input type="hidden" id="custId" name="action" value="delete">
			  <div class="form-group" id="add-form">
			    <label for="vehicle-id">Vehicle Id</label>
			    <input type="text" class="form-control" id="vehicle-id" aria-describedby="emailHelp" name = "vehicle-id" placeholder="Vehicle id" required>
			    <small id="emailHelp" class="form-text text-muted">Enter id of the Vehicle to remove it from the db</small>
			  </div>
			  <button type="submit" class="btn btn-primary" id="submit-add">Submit</button>
			</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<!-- view Vehicle Modal -->
<div id="viewModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
      	<h4 class="modal-title">View Vehicle</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <div class="modal-body">
            <form action="viewVehicle" method="get">
            <input type="hidden" id="custId" name="action" value="view">
			  <div class="form-group" id="add-form">
			    <label for="vehicle-id">Vehicle Id</label>
			    <input type="text" class="form-control" id="vehicle-id" aria-describedby="emailHelp" name = "vehicle-id" placeholder="Vehicle id" required>
			    <small id="emailHelp" class="form-text text-muted">Enter id of the Vehicle </small>
			  </div>
			  <button type="submit" class="btn btn-primary" id="submit-add">Submit</button>
			</form>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>
  <script>
  	$(document).ready(function(){
  		$("#view-vehicles").click(function(){
  			$('#dashboard').load('list-vehicles.jsp');
  		});
  	});
  </script>
</body>
</html>