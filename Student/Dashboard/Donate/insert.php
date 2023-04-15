<?php
include "../../../dbconnect.php";
$uname=$_POST['name'];
$uemail=$_POST['email'];
$uphnumber=$_POST['phnumber'];
$utype=$_POST['type'];
$usemester = $_POST['semester'];
$usubject = $_POST['subject'];
$sql = "INSERT INTO donating (name,email,phnumber,type,semester,subject) VALUES ('$uname','$uemail',$uphnumber,'$utype','$usemester','$usubject')";
if(mysqli_query($conn, $sql)) 
{
    echo "<script>alert('Donate request placed');
    window.location.href = 'http://localhost/textbook_portal/Student/Dashboard/sdash.php';</script>";

} 
else 
{
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}
  mysqli_close($conn);
  //working now 
  //okay sir
  // thank you 
  
  ?>
  


