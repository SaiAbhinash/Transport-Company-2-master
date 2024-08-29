<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-GB">
<head>
<meta charset="UTF-8">
<title>Add Vehicle</title>
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>

<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button>

<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Add Vehicle</h4>
      </div>
      <div class="modal-body">
        <div class="input-group input-group-sm mb-3">
  			<div class="input-group-prepend">
    			<span class="input-group-text" id="inputGroup-sizing-sm">Vehicle Id&emsp;&emsp;&emsp;&emsp;</span>
  			</div>
  			<input type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm">
		</div>
		
		<div class="input-group input-group-sm mb-3">
  			<div class="input-group-prepend">
    			<span class="input-group-text" id="inputGroup-sizing-sm">Vehicle Type&emsp;&emsp;&emsp;</span>
  			</div>
  			<input type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm">
		</div>
		
		<div class="input-group input-group-sm mb-3">
  			<div class="input-group-prepend">
    			<span class="input-group-text" id="inputGroup-sizing-sm">Vehicle Description</span>
  			</div>
  			<input type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm">
		</div>
		
		<div class="input-group input-group-sm mb-3">
  			<div class="input-group-prepend">
    			<span class="input-group-text" id="inputGroup-sizing-sm">Vehicle Owner Id&emsp;</span>
  			</div>
  			<input type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm">
		</div>
		
		<div class="input-group input-group-sm mb-3">
  			<div class="input-group-prepend">
    			<span class="input-group-text" id="inputGroup-sizing-sm">Vehicle Number&emsp;&nbsp;</span>
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