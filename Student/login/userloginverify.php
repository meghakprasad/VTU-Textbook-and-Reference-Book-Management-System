<?php
include "../../dbconnect.php";

session_start();

$usn=$_POST['usn'];
$pass=$_POST['password'];

$sql = "SELECT stu_id,password FROM  student where stu_id='$usn' and password='$pass'";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
  // output data of each row
  $_SESSION["susn"] = $usn;
  $_SESSION["spass"] = $pass;

    echo "<script>alert('User Login sucessfull');window.location.href = 'http://localhost/textbook_portal/Student/Dashboard/sdash.php';</script>";

} else {
  echo "<script>alert('Incorrect User id or Password');window.location.href = 'http://localhost/textbook_portal/Student/login/login.php';</script>";
}

mysqli_close($conn);
?>