<?php
include "../../dbconnect.php";

session_start();

$id=$_POST['id'];
$pass=$_POST['password'];

$sql = "SELECT id,password FROM admin where id='$id' and password='$pass'";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
  // output data of each row
  $_SESSION["aid"] = $id;
  $_SESSION["apass"] = $pass;

    echo "<script>alert('User Login sucessfull');window.location.href = 'http://localhost/textbook_portal/Admin/Dashboard/adash.php';</script>";

} else {
  echo "<script>alert('Incorrect User id or Password');window.location.href = 'http://localhost/textbook_portal/Admin/adlogin/login.php';</script>";
}

mysqli_close($conn);
?>