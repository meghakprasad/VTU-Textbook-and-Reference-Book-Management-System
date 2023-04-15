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
  <link rel="stylesheet" href="sstyle.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"/>
  <title>My Subjects</title>
  <link rel="icon" type="image/x-icon" href="../../images/dept.png">
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
      body{
        background-color: rgb(188, 208, 228);
      }
      nav{
      font-size:large;
    }
    h1{
      text-align: center;
    }
    table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    outline:rgb(255, 255, 255) solid 5px;
    width: auto;
    margin:5px ;
 
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
    background: rgb(0 77 133);
}
th{
  background-color:black;

}
    </style>
  </head>
  <body>
  <div class="container">
  <nav style="height: auto;">
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
                <h1 text-align="center"style="color:white;"><b>My Subjects</b> </h1>
  <hr/><br>
<div class=".form-wrappers">
      <table border="5px" style=" margin-left: auto;  
      margin-right: auto; text-align: center;color:white;"cellpadding="10px">
        <tr>
          <th>Subcode</th>
          <th>Subject</th>
          <th>Credits</th>
        </tr>
          <?php
             $sql = "SELECT stu_sem,dept_id FROM student where stu_id='$sessname'";
             $result = mysqli_query($conn, $sql);
             if (mysqli_num_rows($result) > 0)
     {
            while($row = mysqli_fetch_assoc($result)) 
            {
              $sem=$row["stu_sem"];
              $dept=$row["dept_id"];
            }       
        }

            $sql1 = "SELECT * FROM subjects where sem='$sem'and dept_id='$dept'";
            $result1 = mysqli_query($conn, $sql1);

            if (mysqli_num_rows($result1) > 0) {
            // output data of each row
            while($row = mysqli_fetch_assoc($result1)) {
              echo "<tr> <td>".$row['sub_code']."</td><td>".$row['sub_name']."</td><td>".$row['sub_credits']."</td></tr>";
            }
          ?>

      </table>
</div>
            </div>
            <br><br>

    </div>
  </body>
</html>
<?php
} else {
  echo "0 results";
}
             
mysqli_close($conn);
?>