<?php
session_start();
?>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Login</title>
  <link rel="stylesheet" href="lstyle.css">
  <link rel="icon" type="image/x-icon" href="../../images/licon.png">

</head>
<body>
<!-- partial:index.partial.html -->

<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <link rel="stylesheet" href="style.css" />
    <title>SignIn And SignUp</title>
  </head>
  <body>
  <img src="https://cdn-icons-png.flaticon.com/512/2940/2940652.png" width=300px>
    <div class="container">
      <div class="form-container">
        <div class="signin">
          <form action="userloginverify.php" method="post" class="form-sign-in">
            <h1>Sign In</h1>
            <input type="text" name="usn" placeholder="Usn" required=""/>
            <input type="password" name="password" placeholder="Password" required=""/>
            <a href="forgotpass.php">Forgot your password?</a>
            <button class="btn btn-form">SIGN IN</button>
          </form>
        </div>

        <div class="signup">
          <form action="userregister.php" method="post" class="form-sign-up">
            <h1>Sign Up</h1>
            <br>
            <input type="usn" name="usn" placeholder="Usn" pattern="{10}" required=""/>
            <input type="name"  name="name" placeholder="Name" pattern="^[a-zA-Z-' ]*$" required=""/>
            <input type="email"  name="email" placeholder="Email" pattern="^[_a-z0-9-]+(.[_a-z0-9-]+)*@[a-z0-9]+(\.[a-zA-Z0-9-]+)*(\.[a-z]{2,3})$" required=""/>
            <input type="sem" name="sem" placeholder="Sem(3-8)" required=""/>
            <div class="drop">
              <select class="custom-select" name="dept" required>
                <option value="">Select your Department</option>
                <option value="1">CSE</option>
                <option value="2">ISE</option>
                <option value="3">ECE</option>
              </select></div>
            <input type="phone" name="phone" placeholder="Phone" pattern="[6789][0-9]{9}" maxlength="10" required=""/>
            <input type="password" name="password" placeholder="Password" minlength="4" pattern="[a-zA-Z0-9:$@!%]{3,}"  maxlength="17" required=""/>
            <button class="btn btn-form">SIGN UP</button>
          </form>
        </div>
      </div>
      <div class="overlay">
        <div class="overlay-panel overlay-signin">
          <h1>
            Welcome Back!
          </h1>
          <span>
            To keep connected with us please login with your info
          </span>
          <button class="btn btn-overlay" onclick="togglePage()">
            Sign In
          </button>
        </div>
        <div class="overlay-panel overlay-signup">
          <h1>
            Hello, Students !
          </h1>
          <span>
            Enter your details
          </span>
          <button class="btn btn-overlay" onclick="togglePage()">
            Sign Up
          </button>
        </div>
      </div>
    </div>
  </body>
  <script>
    function togglePage() {
      document.querySelector(".overlay-signin").classList.toggle("show");
      document.querySelector(".overlay-signup").classList.toggle("hide");
      document.querySelector(".signup").classList.toggle("show");
      document.querySelector(".signin").classList.toggle("hide");
    }
  </script>
</html>

</body>
</html>
