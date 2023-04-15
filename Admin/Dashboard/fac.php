<?php
session_start();
include "../../dbconnect.php";

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
                    <h1 style="color:black">Faculties Signed Up</h1><br>
                </div>
                <table border="5px" align="center" cellpadding="15px" background=""  style="color:white;">
  <tr>
    <th>FACULTY ID </th>
    <th> NAME </th>
    <th>DEPARTMENT</th>
    <th>EMAIL</th>
    <th>PASSWORD</th>
    <th>PHONE</th>
  </tr>
<?php


$sql = "SELECT * FROM faculty";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
// output data of each row
while($row = mysqli_fetch_assoc($result)) {
 
  echo "<tr> <td>".$row['fac_id']."</td><td>".$row['fac_name']."</td><td>".$row['fac_dept']."</td><td>".$row['fac_email']."</td><td>".$row['password']."</td><td>".$row['fac_phone']."</td></tr>";
  
  
}
?>
</table>

<form action="facdelete.php" method="post">
    <br>
    
<input  id="dbutton" type="text" name="t1" placeholder="Enter the name of entry to delete" required>
    <input  style="width:75px;height:44px;cursor:pointer;border-radius:15px;
border: 3px   black;background-color:#083C6A;font-size:15px;"type="submit" value="Delete">
</form>                   
                </div>
            </section>
        </div>
    </body>
</html>
<?php
} else {
  echo "0 results";
}

mysqli_close($conn);
?>