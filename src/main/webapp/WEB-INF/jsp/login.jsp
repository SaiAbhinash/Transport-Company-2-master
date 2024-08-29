<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Login</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
    />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <link rel="icon" href="data," />

    <style>
      @import url("https://fonts.googleapis.com/css?family=Montserrat:400,800");

      * {
        box-sizing: border-box;
      }

      body {
        min-height: 100%;

        background-size: cover;
        background-repeat: no-repeat;
        background-position: center center;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        font-family: "Montserrat", sans-serif;
        height: 100vh;
        margin: -20px 0 50px;
      }

      h1 {
        font-weight: bold;
        margin: 0;
      }

      h2 {
        text-align: center;
      }

      p {
        font-size: 14px;
        font-weight: 100;
        line-height: 20px;
        letter-spacing: 0.5px;
        margin: 20px 0 30px;
      }

      span {
        font-size: 12px;
      }

      a {
        color: #333;
        font-size: 14px;
        text-decoration: none;
        margin: 15px 0;
      }
      pre {
        color: #333;
        font-family: "Montserrat", sans-serif;
        font-size: 14px;
        text-decoration: none;
        margin: 15px 0;
      }

      button {
        border-radius: 20px;
        border: 1px solid black;
        background-color: grey;
        color: #ffffff;
        font-size: 12px;
        font-weight: bold;
        padding: 12px 45px;
        letter-spacing: 1px;
        text-transform: uppercase;
        transition: transform 80ms ease-in;
      }

      button:active {
        transform: scale(0.95);
      }

      button:focus {
        outline: none;
      }

      button.ghost {
        background-color: transparent;
        border-color: #ffffff;
      }

      form {
        background-color: #ffffff;
        display: flex;
        align-items: center;
        justify-content: center;
        flex-direction: column;
        padding: 0 50px;
        height: 100%;
        text-align: center;
      }

      input {
        background-color: #eee;
        border-radius: 10px;
        padding: 12px 15px;
        margin: 8px 0;
        width: 100%;
      }

      .container {
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0 14px 28px rgba(0, 0, 0, 0.25),
          0 10px 10px rgba(0, 0, 0, 0.22);
        position: relative;
        overflow: hidden;
        width: 700px;
        max-width: 90%;
        min-height: 510px;
        margin-left: 780px;
      }

      .form-container {
        position: absolute;
        top: 0;
        height: 100%;
        transition: all 0.6s ease-in-out;
      }

      .sign-in-container {
        left: 0;
        width: 50%;
        z-index: 2;
      }

      .container.right-panel-active .sign-in-container {
        transform: translateX(100%);
      }

      .sign-up-container {
        left: 0;
        width: 50%;
        opacity: 0;
        z-index: 1;
      }

      .container.right-panel-active .sign-up-container {
        transform: translateX(100%);
        opacity: 1;
        z-index: 5;
        animation: show 0.6s;
      }

      .overlay-container {
        position: absolute;
        top: 0;
        left: 50%;
        width: 50%;
        height: 100%;
        overflow: hidden;
        transition: transform 0.6s ease-in-out;
        z-index: 100;
      }

      .container.right-panel-active .overlay-container {
        transform: translateX(-100%);
      }

      .overlay {
        background-color: #62afe2;
        background-image: linear-gradient(315deg, #2864a5 0%, #414141 74%);

        background-repeat: no-repeat;
        background-size: cover;
        background-position: 0 0;
        color: #ffffff;
        position: relative;
        left: -100%;
        height: 100%;
        width: 200%;
        transform: rotate(20deg);
        transition: transform 0.6s ease-in-out;
      }

      .container.right-panel-active .overlay {
        transform: rotate(20deg);
      }

      .overlay-panel {
        position: absolute;
        display: flex;
        align-items: center;
        justify-content: center;
        flex-direction: column;
        padding: 0 40px;
        text-align: center;
        top: 0;
        height: 100%;
        width: 50%;
        transform: rotate(20deg);
        transition: transform 0.6s ease-in-out;
      }

      .overlay-left {
        transform: rotate(-20%);
      }

      .container.right-panel-active .overlay-left {
        transform: rotate(20deg);
      }

      .overlay-right {
        right: 0;
        transform: rotate(20deg);
      }

      .container.right-panel-active .overlay-right {
        transform: rotate(20%);
      }

      .social-container {
        margin: 20px 0;
      }

      .social-container a {
        border: 1px solid #dddddd;
        border-radius: 50%;
        display: inline-flex;
        justify-content: center;
        align-items: center;
        margin: 0 5px;
        height: 40px;
        width: 40px;
      }

      footer {
        background-color: #222;
        color: #fff;
        font-size: 14px;
        bottom: 0;
        position: fixed;
        left: 0;
        right: 0;
        text-align: center;
        z-index: 999;
      }

      footer p {
        margin: 10px 0;
      }

      footer i {
        color: red;
      }

      footer a {
        color: #3c97bf;
        text-decoration: none;
      }
    </style>
  </head>
  <body>
    <div style="margin-top: 40px" class="container" id="container">
      <div class="form-container sign-up-container">
        <div id="su">
          <form action="/signUp" method="post">
            <h1>SIGNUP</h1>
            <input
              type="FirstName"
              placeholder="FirstName"
              required
              name="FirstName"
            />
            <input
              type="LastName"
              placeholder="LastName"
              required
              name="LastName"
            />
            <input type="uname" placeholder="UserName" required name="uname" />

            <input type="email" placeholder="Email" required name="email" />
            <input
              type="password"
              placeholder="Password"
              required
              pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
              required
              title="Must contain at least one number and one uppercase and lowercase letter, and at least 6 or more characters"
              name="password"
            />
            <input
              type="contactno"
              placeholder="ContactNo"
              required
              name="contactno"
            />
            <input type="hidden" value="ROLE_user" name="authority" />

            <button>Sign Up</button>
          </form>
        </div>
      </div>
      <div style="margin-top: -25px" class="form-container sign-in-container">
        <form action="/login" method="post">
          <h1>Log in</h1>

          <input type="text" placeholder="username" required name="username" />
          <input
            type="password"
            placeholder="Password"
            required
            title="Must contain at least one number and one uppercase and lowercase letter, and at least 6 or more characters"
            name="password"
          />

          <button>Login</button>
        </form>
      </div>

      <div class="overlay-container">
        <div class="overlay">
          <div class="overlay-panel overlay-left">
            <h1>Signup here</h1>
          </div>
          <div class="overlay-panel overlay-right">
            <h1>Clickhere</h1>

            <a href="#su">
              <button class="ghost" id="signUp">Sign Up</button></a
            >
          </div>
        </div>
      </div>
    </div>

    <script>
      const signUpButton = document.getElementById("signUp");
      const signInButton = document.getElementById("signIn");
      const container = document.getElementById("container");

      signUpButton.addEventListener("click", () => {
        container.classList.add("right-panel-active");
      });

      signInButton.addEventListener("click", () => {
        container.classList.remove("right-panel-active");
      });

      function myFunction(val) {
        $.ajax({
          url: "/checkUserNameAvailability",
          type: "POST",
          data: { userName: val },
          dataType: "text",
          success: function (data) {
            document.getElementById("p1").innerHTML = data;
            if (data === "User Name Already Exists") {
              alert(data);
            }
          },
          error: function () {
            alert("Error occured");
          },
          async: false,
        });
      }
    </script>
  </body>
</html>
