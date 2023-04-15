<?php
 include "../../dbconnect.php";
 $usn=$_POST['usn'];
 $name=$_POST['name'];
 $dept=$_POST['dept'];
 $email=$_POST['email'];
 $sem=$_POST['sem'];
 $phone=$_POST['phone'];
 $pass=$_POST['password'];
 
$sql = "INSERT INTO student(stu_id,stu_name,dept_id,stu_email,stu_sem,stu_phone,password,stu_dept) 
VALUES ('$usn','$name','$dept','$email','$sem',$phone,'$pass',(select dept_name FROM department WHERE dept_id=$dept))";

if (mysqli_query($conn,$sql)) {
  echo "<script>alert('User Registered sucessfully');
  window.location.href = 'http://localhost/textbook_portal/Student/login/login.php';</script>";
  
} else {
  echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

mysqli_close($conn);
?>