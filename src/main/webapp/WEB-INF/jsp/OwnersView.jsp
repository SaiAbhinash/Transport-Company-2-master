<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-GB">
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
      <h3>Add Driver</h3>
      </div>
      </div>
    </div>
    <div class="col-sm">
      <div class="card" style="width: 18rem; height: 18rem">
      <div class="card-element">
      <button type="button" class="btn" data-toggle="modal" data-target="#editModal">
	      <i class="bi bi-tools"></i>
      </button>
      <h3>Edit Driver</h3>
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
	    <h3>view Driver</h3>
      </div>
      </div>
    </div>
    <div class="col-sm">
      <div class="card" style="width: 18rem; height: 18rem">
      <div class="card-element">
      <i class="bi bi-view-stacked"></i>
      <h3>View Driver</h3>
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
        <h4 class="modal-title">Add Driver</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <div class="modal-body">
        <form action="DriverHandler" method="post">
        	<input type="hidden" id="custId" name="action" value="add">
        		
			  <div class="form-group" id="add-form">
			    <label for="first-name">First Name</label>
			    <input type="text" class="form-control" id="vehicle-id" aria-describedby="emailHelp" name = "first-name" placeholder="First Name">
			  </div>
			  <div class="form-group">
			    <label for="last-name">Last Name</label>
			    <input type="text" name = "last-name" class="form-control" id="last-name" placeholder="Last Name">
			  </div>
			  <div class="form-group">
			    <label for="username">Username</label>
			    <input type="text" name = "username" class="form-control" id="username" placeholder="Username">
			  </div>
			  <div class="form-group">
			    <label for="password">Password</label>
			    <input type="password" name = "password" class="form-control" id="password" placeholder="Password">
			  </div>
			  <div class="form-group">
			    <label for="contact-number">Contact Number</label>
			    <input type="number" name = "contact-number" class="form-control" id="contact-number" placeholder="Contact Number">
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

<!-- Update Modal -->
<div id="editModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title">Add Owner</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <div class="modal-body">
        <div class="input-group input-group-sm mb-3">
  			<div class="input-group-prepend">
    			<span class="input-group-text" id="inputGroup-sizing-sm">First Name</span>
  			</div>
  			<input type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm">
		</div>
		
		<div class="input-group input-group-sm mb-3">
  			<div class="input-group-prepend">
    			<span class="input-group-text" id="inputGroup-sizing-sm">Last Name</span>
  			</div>
  			<input type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm">
		</div>
		
		<div class="input-group input-group-sm mb-3">
  			<div class="input-group-prepend">
    			<span class="input-group-text" id="inputGroup-sizing-sm">Username</span>
  			</div>
  			<input type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm">
		</div>
		
		<div class="input-group input-group-sm mb-3">
  			<div class="input-group-prepend">
    			<span class="input-group-text" id="inputGroup-sizing-sm">Password&nbsp;</span>
  			</div>
  			<input type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm">
		</div>
		
		<div class="input-group input-group-sm mb-3">
  			<div class="input-group-prepend">
    			<span class="input-group-text" id="inputGroup-sizing-sm">Contact&emsp;&nbsp;</span>
  			</div>
  			<input type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm">
		</div>
		
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
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
      <h4 class="modal-title">Delete Owner</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <div class="modal-body">
        <form action="DriverHandler" method="post">
            <input type="hidden" id="custId" name="action" value="delete">
			  <div class="form-group" id="add-form">
			    <label for="driver-id">Driver Id</label>
			    <input type="text" class="form-control" id="driver-id" aria-describedby="emailHelp" name = "user-id" placeholder="Driver id">
			    <small id="emailHelp" class="form-text text-muted">Enter id of the Driver </small>
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
      	<h4 class="modal-title">View Owner</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <div class="modal-body">
        <div class="input-group input-group-sm mb-3">
  			<div class="input-group-prepend">
    			<span class="input-group-text" id="inputGroup-sizing-sm">Owner Id&emsp;&emsp;&emsp;&emsp;</span>
  			</div>
  			<input type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm">
		</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>

</body>
</html>