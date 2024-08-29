<%@ page import="com.training.transportcomany2.model.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Vehicles - </title>
<%@ include file="components/common_cs_js.jsp"%>
</head>
<body>
<%@ include file="components/navbar.jsp"%>

<%
 List<Vehicle> vehicles = (List<Vehicle>)request.getAttribute("vehicles");
%>

<div class="container-fluid mt-5">
  
  <div class="row mt-4">
       <form class="form-inline ml-5" action="searchvehicle">
          <div class="form-group">
            <label for="inputPassword2" class="text-color"><h4>Search Vehicle By Registration No.</h4></label>
            <input type="text" class="form-control ml-3" id="inputPassword2" name="registrationNumber" placeholder="Enter registration no..">
          </div>
          <button type="submit" class="btn text-color custom-bg ml-2">Search</button>
       </form>
    
  </div>
 
        
        <div class="table-responsive">
          <table class="table">
  <thead class="custom-bg text-white">
    <tr>
    <th scope="col">Vehicle Name</th>
      <th scope="col">Registration Number</th>    
      <th scope="col">Weight</th>
      <th scope="col">Tyres</th>
      <th scope="col">Branch</th>
      <th scope="col">Action</th>
      
    </tr>
  </thead>
  
 
  
  <tbody>
  
   <%
      for(Vehicle vehicle : vehicles)
      {
    	  
    	  
   %>
    <tr class="text-center">
    <td class="mid-align"><%=vehicle.getVehicle_id()%></td>
      <td class="mid-align"><%=vehicle.getVehicle_type() %></td>
      <td class="mid-align"><%=vehicle.getVehicle_number() %></td>
      <td class="mid-align"><%=vehicle.getVehicle_desription() %></td>
        <td class="mid-align"><a href="updatevehicle?vehicleId=<%=vehicle.getVehicle_id()%>"><button type="button"
                  class="btn custom-bg text-color">Update Vehicle</button></a>
              </td>
       
          
    </tr>
    <%
      }
   
      
    %>
  </tbody>
 
  
</table>
  
</div>
</div>
</body>
</html>