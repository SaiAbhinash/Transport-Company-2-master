<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-GB">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
<link rel="stylesheet" href="style.css">
</head>
<body>
  <div class="sidebar close">
    <div class="logo-details">
      <i class='bx bxs-truck'></i>
      <span class="logo_name">Menu</span>
    </div>
    
  </div>
  <section class="home-section">
    <div class="home-content">
      <i class='bx bx-menu' ></i>
      <span class="text">Online Transport Company</span>
    </div>
    <div id="dashboard"></div>
  </section>
  <script>
  let arrow = document.querySelectorAll(".arrow");
  for (var i = 0; i < arrow.length; i++) {
    arrow[i].addEventListener("click", (e)=>{
   let arrowParent = e.target.parentElement.parentElement;//selecting main parent of arrow
   arrowParent.classList.toggle("showMenu");
    });
  }
  let sidebar = document.querySelector(".sidebar");
  let sidebarBtn = document.querySelector(".bx-menu");
  console.log(sidebarBtn);
  sidebarBtn.addEventListener("click", ()=>{
    sidebar.classList.toggle("close");
  });
  </script>
  
  <script>
  	$(document).ready(function(){
  		$(".user-db").click(function(){
  			$('#dashboard').load('UserView.jsp');
  		});
  	});
  </script>
  <script>
  	$(document).ready(function(){
  		$(".manager-db").click(function(){
  			$('#dashboard').load('ManagerView.jsp');
  		});
  	});
  </script>
  <script>
  	$(document).ready(function(){
  		$(".booking-db").click(function(){
  			$('#dashboard').load('BookingView.jsp');
  		});
  	});
  </script>
  <script>
  	$(document).ready(function(){
  		$(".vehicle-db").click(function(){
  			$('#dashboard').load('VehicleView.jsp');
  		});
  	});
  </script>
  <script>
  	$(document).ready(function(){
  		$(".booking-db").click(function(){
  			$('#dashboard').load('BookingView.jsp');
  		});
  	});
  </script>
  <script>
  	$(document).ready(function(){
  		$(".owner-db").click(function(){
  			$('#dashboard').load('OwnersView.jsp');
  		});
  	});
  </script>
</body>
</html>