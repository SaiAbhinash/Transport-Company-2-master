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
      	<button type="button" class="btn" data-toggle="modal" data-target="#bookModal">
      	<i class='bx bx-plus-medical'></i>
      	</button>
      	<h3>Book</h3>
      </div>
      </div>
    </div>
    <div class="col-sm">
      <div class="card" style="width: 18rem; height: 18rem">
      <div class="card-element">
      	<button type="button" class="btn" data-toggle="modal" data-target="#cancelModal">
	      <i class="bi bi-tools"></i>
	     </button>
	      <h3>Cancel Booking</h3>
      </div>
      </div>
    </div>
    <div class="col-sm">
      <div class="card" style="width: 18rem; height: 18rem">
      <div class="card-element">
      <a href="allBookings"><i class="bi bi-view-stacked" id="view-bookings"></i></a>
      <h3>view Bookings</h3>
      </div>
      </div>
    </div>
  </div>
</div>

<div id="bookModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title">Book</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <div class="modal-body">
        <form action="BookingHandler" method="post">
        	<input type="hidden" id="custId" name="action" value="book">
        		
			  <div class="form-group" id="add-form">
			    <label for="user-id">User Id</label>
			    <input type="text" class="form-control" id="user-id" aria-describedby="emailHelp" name = "user_id" placeholder="User Id" required>
			  </div>
			  <div class="form-group">
			    <label for="origin">Origin</label>
			    <input type="text" name = "source" class="form-control" id="origin" placeholder="Origin" required>
			  </div>
			  <div class="form-group">
			    <label for="Destination">Destination</label>
			    <input type="text" name = "destination" class="form-control" id="destination" placeholder="Destination" required>
			  </div>
			  <div class="form-group">
			    <label for="date">Date</label>
			    <input type="date" name = "date" class="form-control" id="date" placeholder="Pick Date" required>
			  </div>
			  <div class="form-group">
			    <label for="vehicle_id">Vehicle Id</label>
			    <input type="text" name = "vehicle_id" class="form-control" id="vehicle-id" placeholder="Enter the vehicle Id" required>
			  </div>
			  <div class="form-group">
			    <label for="driver-id">Driver Id</label>
			    <input type="number" name = " driverId" class="form-control" id="driver-id" placeholder="Driver Id" required>
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

<div id="cancelModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
      <h4 class="modal-title">Cancel Booking</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <div class="modal-body">
        <form action="BookingHandler-delete" method="post">
            <input type="hidden" id="custId" name="action" value="cancel">
			  <div class="form-group" id="add-form">
			    <label for="booking-id">Booking Id</label>
			    <input type="number" class="form-control" id="booking-id" aria-describedby="emailHelp" name = "booking-id" placeholder="booking id" required>
			    <small id="emailHelp" class="form-text text-muted">Enter booking id </small>
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
  		$("#view-bookings").click(function(){
  			$('#dashboard').load('list-booking.jsp');
  		});
  	});
  </script>
</body>
</html>