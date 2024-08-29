<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
<link rel="stylesheet" href="/css/style.css">

</head>
<body>
  <div class="sidebar close">
    <div class="logo-details">
      <i class='bx bxs-truck'></i>
      <span class="logo_name">Menu</span>
    </div>
    <ul class="nav-links">
      <li>
        <a href="#">
          <i class='bx bx-grid-alt' ></i>
          <span class="link_name">Dashboard</span>
        </a>
        <ul class="sub-menu blank">
          <li><a class="link_name" href="#">Category</a></li>
        </ul>
      </li>
      <li>
        <div class="iocn-link">
          <a href="javascript:void(0);">
            <i class='bx bx-user' ></i>
            <span class="link_name user-db">Users DB</span>
          </a>
          <i class='bx bxs-chevron-down arrow' ></i>
        </div>
        <ul class="sub-menu">
          <li><a class="link_name" href="#">Category</a></li>
          <li><a href="#">Add</a></li>
          <li><a href="#">Update</a></li>
          <li><a href="#">Delete</a></li>
        </ul>
      </li>
      <li>
        <div class="iocn-link">
          <a href="javascript:void(0);">
            <i class='bx bxs-truck' ></i>
            <span class="link_name vehicle-db">Vehicles DB</span>
          </a>
          <i class='bx bxs-chevron-down arrow' ></i>
        </div>
        <ul class="sub-menu">
          <li><a class="link_name" href="#">use cases</a></li>
          <li><a href="#">Add</a></li>
          <li><a href="#">Update</a></li>
          <li><a href="#">Delete</a></li>
        </ul>
      </li>
      <li>
        <a href="javascript:void(0);">
          <i class='bx bxs-user-plus'></i>
          <span class="link_name manager-db">Managers DB</span>
        </a>
        <ul class="sub-menu blank">
          <li><a class="link_name" href="#">use case -1</a></li>
        </ul>
      </li>
      <li>
        <a href="javascript:void(0);">
          <i class='bx bx-book' ></i>
          <span class="link_name booking-db">Bookings</span>
        </a>
        <ul class="sub-menu blank">
          <li><a class="link_name" href="#">View</a></li>
        </ul>
      </li>
      <li>
        <a href="javascript:void(0);">
          <i class='bx bxs-user-rectangle' ></i>
          <span class="link_name owner-db">Driver DB</span>
        </a>
        <ul class="sub-menu blank">
          <li><a class="link_name" href="#">Explore</a></li>
        </ul>
      </li>
      <li>
        <a href="#">
          <i class='bx bx-conversation' ></i>
          <span class="link_name">Chat</span>
        </a>
        <ul class="sub-menu blank">
          <li><a class="link_name" href="#">History</a></li>
        </ul>
      </li>
    <div class="profile-details">
      <div class="profile-content">
        <!--<img src="image/profile.jpg" alt="profileImg">-->
      </div>
      <div class="name-job">
        <div class="profile_name">Hritik Singh</div>
        <div class="job">Virtusa</div>
      </div>
      <a href="../logout"><i class='bx bx-log-out' ></i></a>
    </div>
  </li>
</ul>
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