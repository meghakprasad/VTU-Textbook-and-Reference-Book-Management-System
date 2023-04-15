<?php
session_start();
include "../../dbconnect.php";
$sessname=$_SESSION["susn"];
?>
<html>
  <head>
    <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/3/w3.css">
  <link rel="stylesheet" href="books.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"/>
  <title>Books</title>
  <link rel="icon" type="image/x-icon" href="../../images/Book.png">

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
                    <li><a href="sdash.php">
                    <i class="fas fa-home"></i>
                    <span class="nav-item">Home</span>
                    </a></li>
                    <li><a href="profile.php">
                    <i class="fas fa-user"></i>
                    <span class="nav-item">Profile</span>
                    </a></li>
                    <li><a href="Donate/forms.php">
                    <i class="fas fa-donate"></i>
                    <span class="nav-item">Donate</span>
                    </a></li>
                    <li><a href="Comment/comment.php">
                    <i class="fas fa-comments"></i>
                    <span class="nav-item">Comments</span>
                    </a></li>
                    <li><a href="books.php">
                    <i class="fas fa-book"></i>
                    <span class="nav-item">Books Available</span>
                    </a></li>
                    <li><a href="../login/logout.php" class="logout">
                    <i class="fas fa-sign-out-alt"></i>
                    <span class="nav-item">Logout</span>
                    </a></li>
                </ul>
            </nav>
            <section class="main">
                <div class="main-top">
            
            <h1 text-align="center"style="color:white;"><b>Available Books</b> </h1>
  <hr/>
<div class=".form-wrappers">
      <table border="5px" style=" margin-left: auto;  
      margin-right: auto; text-align: center;color:white;"cellpadding="10px" background="">
        <tr>
          <th>Id</th>
          <th>Subject</th>
          <th>Type</th>
          <th>Sem</th>
          <th>Donator email_id</th>
        </tr>
          <?php

            $sql = "SELECT slno,email,phnumber,type,semester,subject FROM donating";
            $result = mysqli_query($conn, $sql);

            if (mysqli_num_rows($result) > 0) {
            // output data of each row
            while($row = mysqli_fetch_assoc($result)) {
              echo "<tr> <td>".$row['slno']."</td><td>".$row['subject']."</td><td>".$row['type']."</td><td>".$row['semester']."</td><td>".$row['email']."</td></tr>";
            }
          ?>

      </table>
</div>
<head>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="books.css">
</head><body>
<div id="form-main">
  <div id="form-div">

    <form class="form" id="form1"  action="bookverify.php" method="post">
      <p class="email">
        <input name="email" type="text" class="validate[required,custom[email]] feedback-input" id="email" placeholder="Email" required=""/>
      </p>
      <p class="bid">
        <input name="bid" class="validate[required,length[0,100]] feedback-input" placeholder="Book id" id="bid" required=""/>
      </p>
      
      <p class="text">
        <textarea name="text" class="validate[required,length[6,300]] feedback-input" id="comment" placeholder="Name of Book" required=""></textarea>
      </p>
      
      
      <div class="submit">
        <input type="submit" value="SEND" id="button-blue"/>
        <div class="ease"></div>
      </div>
    </form>
  </div>
</body>
    </div>
  </body>
</html>
<?php
} else {
  echo "0 results";
}

mysqli_close($conn);
?>