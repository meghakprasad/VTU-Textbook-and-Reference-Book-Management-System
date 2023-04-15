<?php
session_start();
?>
   <html>
    <head>
       <meta charset="UTF=8" />
        <title>Dashboard</title>
        <link rel="icon" type="image/x-icon" href="../../images/dash2.png">
        <link rel="stylesheet" href="astyle.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"/>
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
                    <li><a href="adash.php">
                    <i class="fas fa-home"></i>
                    <span class="nav-item">Home</span>
                    </a></li>
                    <li><a href="stu.php">
                    <i class="fas fa-solid fa-user-graduate"></i>
                    <span class="nav-item">Students</span>
                    </a></li>
                    <li><a href="fac.php">
                    <i class="fas fa-solid fa-chalkboard-user"></i>
                    <span class="nav-item">Faculty</span>
                    </a></li>
                    <li><a href="delete.php">
                    <i class="fas fa-solid fa-trash"></i>
                    <span class="nav-item">Delete Data</span>
                    </a></li>
                    <li><a href="../adlogin/logout.php" class="logout">
                    <i class="fas fa-sign-out-alt"></i>
                    <span class="nav-item">Logout</span>
                    </a></li>
                </ul>
            </nav>
            <section class="main">
                <div class="main-top">
                    <h1 style="color:black">Hello Admin !!!</h1>
                </div>
                
                <head>
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css'>
  <link rel="stylesheet" href="cardstyle.css">
</head> 
<body>
  <div class="cards">
    <div class="card card-1">
      <div class="card__icon"><i class="fas fa-solid fa-user-graduate"></i></div>
      <h2 class="card__title">
                <?php
include "../../dbconnect.php";

$sql = "SELECT * from student";
  
if ($result = mysqli_query($conn, $sql)) {

// Return the number of rows in result set
$rowcount = mysqli_num_rows( $result );
  
// Display result
printf("Total no. of Students : %d\n", $rowcount);
}
?></h2>  
</div>
</body>
<head>
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css'>
  <link rel="stylesheet" href="cardstyle.css">
</head>
<body>
  <div class="cards">
    <div class="card card-1">
      <div class="card__icon"><i class="fas fa-solid fa-chalkboard-user"></i></div>
      <h2 class="card__title">
<?php
$sql1 = "SELECT * from faculty";
  
if ($result1 = mysqli_query($conn, $sql1)) {

// Return the number of rows in result set
$rowcount1 = mysqli_num_rows( $result1 );
  
// Display result
printf("Total no. of Faculty : %d\n", $rowcount1);
}
?>
</h2>  
    </div>
</body>
<head>
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css'>
  <link rel="stylesheet" href="cardstyle.css">
</head>
<body>
  <div class="cards">
    <div class="card card-1">
      <div class="card__icon"><i class="fas fa-donate"></i></div>
      <h2 class="card__title">
<?php

$sql2 = "SELECT * from donating";
  
if ($result2 = mysqli_query($conn, $sql2)) {

// Return the number of rows in result set
$rowcount2 = mysqli_num_rows( $result2 );
  
// Display result
printf("Total no. of Donations : %d\n", $rowcount2);
}else {
  echo "0 results";}

// Close the connection
mysqli_close($conn);

?>
</h2>  
    </div>
</body>

                 
                </div>
            </section>
        </div>
    </body>
</html>
