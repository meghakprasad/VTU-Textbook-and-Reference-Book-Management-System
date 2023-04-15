<?php
 include "../../dbconnect.php";
 $id=$_POST['id'];
 $name=$_POST['name'];
 $email=$_POST['email'];
 $dept=$_POST['dept'];
 $phone=$_POST['phone'];
 $pass=$_POST['password'];
 
$sql = "INSERT INTO faculty(fac_id,fac_name,fac_email,dept_id,fac_phone,password,fac_dept) 
VALUES ('$id','$name','$email','$dept',$phone,'$pass',(select dept_name FROM department WHERE dept_id=$dept))";
if (mysqli_query($conn,$sql)) {
  echo "<script>alert('User Registered sucessfully');
  window.location.href = 'http://localhost/textbook_portal/Faculty/faclogin/login.php';</script>";
  
} else {
  echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

mysqli_close($conn);
?>