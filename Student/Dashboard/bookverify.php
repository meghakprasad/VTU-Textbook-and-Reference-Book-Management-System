<?php
 include "../../dbconnect.php";
 session_start();
 $sessname=$_SESSION["susn"];
 $bid=$_POST['bid'];
 $email=$_POST['email'];
 $book=$_POST['text'];

 
$sql = "INSERT INTO request(stu_id,bookid,stu_email,bookname) VALUES ('$sessname','$bid','$email','$book')";
if (mysqli_query($conn,$sql)) {
  echo "<script>alert('Book requested,Contact the donater');
  window.location.href = 'http://localhost/textbook_portal/Student/Dashboard/books.php';</script>";
  
} else {
  echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

mysqli_close($conn);
?>