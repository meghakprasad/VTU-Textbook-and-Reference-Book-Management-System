<?php
session_start();
?>
   <html>
    <head>
       <meta charset="UTF=8" />
        <title>Delete Data</title>
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
            <div class="form-wrapper">
<html>
    <head>
        
        <style>
  
.topnav {
  overflow: hidden;
  background-color:#8d2663;
  height: 70px;
  border: 3px solid #b40a70;
}





</style>    
</head>
<body>
<br>
<br>
<h1 style="color:black;text-align:center;">Books Available for Donation : </h1>
<br>
    <?php
   include "../../dbconnect.php";
$var=mysqli_query($conn,"select * from donating ");
echo "<table>";
echo "<tr>
<th>Id</th>
<th>NAME</th>
<th>MAIL ID</th>
<th>PHONE NUMBER</th>
<th>BOOK TYPE</th>
<th>SEMESTER</th>
<th>SUBJECT</th>
</tr>";
if(mysqli_num_rows($var)>0){
    while($arr=mysqli_fetch_row($var))
    { echo "<tr>
    <td>$arr[0]</td>
    <td>$arr[1]</td>
    <td>$arr[2]</td>
    <td>$arr[3]</td>
    <td>$arr[4]</td>
    <td>$arr[5]</td>
    <td>$arr[6]</td>
    </tr>";}
    echo "</table>";
    mysqli_free_result($var);
}    
?>
<form action="deleteusn.php" method="post">
    <br>
    
<input  id="dbutton" type="text" name="t1" placeholder="Enter the Slno of entry to delete" required>
    <input  style="width:75px;height:44px;cursor:pointer;border-radius:15px;
border: 3px   black;background-color:#083C6A;font-size:15px;"type="submit" value="Delete">
</form> 
<br>
<h1 style="color:black;text-align:center;">Books Requests : </h1>
<br>
<table border="5px" style=" margin-left: auto;  
      margin-right: auto; text-align: center;color:white;"cellpadding="10px" background="">
        <tr>
          <th>Student Id</th>
          <th>Requestor email_id</th>
          <th>Book name</th>
          <th>Book id</th>
        </tr>
          <?php

            $sql = "SELECT stu_id,stu_email,bookname,bookid FROM request";
            $result = mysqli_query($conn, $sql);

            if (mysqli_num_rows($result) > 0) {
            // output data of each row
            while($row = mysqli_fetch_assoc($result)) {
              echo "<tr> <td>".$row['stu_id']."</td><td>".$row['stu_email']."</td><td>".$row['bookname']."</td><td>".$row['bookid']."</td></tr>";
            }
        
          ?>
      </table>
</body>
</html>
<?php
} else {
  echo "0 results";
}

mysqli_close($conn);
?>