<?php
include "../../dbconnect.php";

session_start();

$id=$_POST['id'];
$pass=$_POST['password'];

$sql = "SELECT fac_id,password FROM  faculty where fac_id='$id' and password='$pass'";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
  // output data of each row
  $_SESSION["fid"] = $id;
  $_SESSION["fpass"] = $pass;

    echo "<script>alert('User Login sucessfull');window.location.href = 'http://localhost/textbook_portal/Faculty/FacDashboard/fdash.php';</script>";

} else {
  echo "<script>alert('Incorrect User id or Password');window.location.href = 'http://localhost/textbook_portal/Faculty/faclogin/login.php';</script>";
}

mysqli_close($conn);
?>