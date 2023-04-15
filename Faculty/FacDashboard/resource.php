<?php
session_start();
?>
<html>
  <head>
    <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/3/w3.css">
  <link rel="stylesheet" href="fstyle.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"/>
  <title>Resources</title>
  <link rel="icon" type="image/x-icon" href="../../images/r2.png">
    <style>
      .b {
        background-color: #fcba03;
        border: none;
        color: black;
        padding: 10px 10px;
        text-align: center;
        text-decoration: none;
        display:block;
        font-size: 15px;
        margin: auto;
        cursor: pointer;
        
      }
      
      nav{
      font-size:large;
    }
    h1{
      text-align: center;
    }
    </style>
  </head>
  <body>
  <div class="container">
            <nav>
                <ul>
                <li><a href="#" class="logo">
                    <img src="../../images/icon.png" alt="TextBookify">
                    <span class="nav-item">TextBookify</span>
                    </a></li>
                    <br>
                    <li><a href="fdash.php">
                    <i class="fas fa-home"></i>
                    <span class="nav-item">Home</span>
                    </a></li>
                    <li><a href="profile.php">
                    <i class="fas fa-user"></i>
                    <span class="nav-item">Profile</span>
                    </a></li>
                    <li><a href="../faclogin/logout.php" class="logout">
                    <i class="fas fa-sign-out-alt"></i>
                    <span class="nav-item">Logout</span>
                    </a></li>
                </ul>
            </nav>
            <section class="main">
                <div class="main-top">
            <h1><b>Resources For Notes And Question Papers</h1>
            </div>
            <br><br>
    <a href="https://www.azdocuments.in/" class="b" target="_blank">AZ Documents</a><br>
    <a href="https://takeiteasyengineers.com/" class="b" target="_blank">T I E</a><br>
    <a href="https://www.vtupulse.com/" class="b" target="_blank">VTU Pulse</a><br>
    <a href="https://www.vturesource.com/" class="b" target="_blank">VTU Resource</a>
    </div>
  </body>
</html>