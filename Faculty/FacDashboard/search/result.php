<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Textbooks</title>
  <link rel="icon" type="image/x-icon" href="../../../images/book.png">
  <link rel="stylesheet" href="style.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"/>
</head>
<body>
<div class="container">
<nav>
                <ul>
                <li><a href="#" class="logo">
                    <img src="../../../images/icon.png" alt="TextBookify">
                    <span class="nav-item">TextBookify</span>
                    </a></li>
                    <br>
                    <li><a href="../fdash.php">
                    <i class="fas fa-home"></i>
                    <span class="nav-item">Home</span>
                    </a></li>
                    <li><a href="../profile.php">
                    <i class="fas fa-user"></i>
                    <span class="nav-item">Profile</span>
                    </a></li>
                   
                    <li><a href="../../faclogin/logout.php" class="logout">
                    <i class="fas fa-sign-out-alt"></i>
                    <span class="nav-item">Logout</span>
                    </a></li>
                </ul>
            </nav>  
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}


tr:hover {background-color: #17BAE3;}
</style>

<body style="background-color:powderblue;">
<div class="form-wrapper">

<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname="textbookify";

// Create connection
$conn = mysqli_connect($servername, $username, $password,$dbname);

// Check connection
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}

$search = $_GET['searchInput'];
$sql = "SELECT * FROM reference_textbook WHERE `Sub_code`  LIKE '%$search%'";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) 
{
  echo "<br><h1 align='center'>REFERENCE TEXTBOOKS</h1><br>";
  echo "<table align='center'>";
     echo "<tr>
  <th>Title</th>
  <th>Author Name</th>
  <th>Publisher Name</th>
  <th>Published Year</th>
</tr>";
  // output data of each row
  while($row = mysqli_fetch_assoc($result))
 {

  $sql1 = "SELECT * FROM publisher WHERE `Pub_id`  LIKE '".$row['Pub_id']."'";
  $result1 = mysqli_query($conn, $sql1);
  $row1 = mysqli_fetch_assoc($result1);
 
    echo "<tr><th>".$row['Title']."</th><th>".$row['Author_Name']."</th><th>".$row1['Pub_Name']."</th><th>".$row['Edition_Year']."</th></tr>";
  }
  echo "</table>";
} else {
  echo "0 results";
}




$sql = "SELECT * FROM prescribed_textbook WHERE `Sub_code`  LIKE '%$search%'";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
  echo "<br><h1 align='center'>PRESCRIBED TEXTBOOKS</h1><br>";
  echo "<table align='center'>";
     echo "<tr>
  <th>Title</th>
  <th>Author Name</th>
  <th>Publisher Name</th>
  <th>Published Year</th>
</tr>";
  // output data of each row
  while($row = mysqli_fetch_assoc($result))
 {

  $sql1 = "SELECT * FROM publisher WHERE `Pub_id`  LIKE '".$row['Pub_id']."'";
  $result1 = mysqli_query($conn, $sql1);
  $row1 = mysqli_fetch_assoc($result1);
 
    echo "<tr><th>".$row['Title']."</th><th>".$row['Author_Name']."</th><th>".$row1['Pub_Name']."</th><th>".$row['Edition_Year']."</th></tr>";
  }
  echo "</table>";
} else {
  echo "0 results";
}






mysqli_close($conn);
?>
</body>
</html>