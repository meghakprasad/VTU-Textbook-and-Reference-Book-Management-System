<?php
session_start();
?>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Login</title>
  <link rel="stylesheet" href="alstyle.css">
  <link rel="icon" type="image/x-icon" href="../../images/licon.png">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <img src="https://cdn-icons-png.flaticon.com/512/3579/3579080.png" width=300px>
    
  </head>
  <body>
    <div class="container">
      <div class="form-container">
        <div class="signin">
          <form action="userloginverify.php" method="post" class="form-sign-in">
            <h1>Sign In</h1>
            <input type="text" name="id" placeholder="Admin Id" required=""/>
            <input type="password" name="password" placeholder="Password" required=""/>
            <button class="btn btn-form">SIGN IN</button>
             
          </form>
        </div>

        
      </div>
      <div class="overlay">
       
        <div class="overlay-panel overlay-signup">
          <h1>
            Hello, Admin!
          </h1>
          <span>
            Login to enter the Dashboard
          </span>
          
        </div>
      </div>
    </div>
  </body>

</html>

</body>
</html>
