<?php
session_start();
?>
<html>
<head>
        <title>Customer </title>
        <style>
            body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
  background: #484848;
}
.topnav {
  overflow: hidden;
  background-color:#8d2663;
  height: 70px;
  border: 3px solid #b40a70;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 35px;
  font-weight: bold;
}
</style>

   
<?php

include "../../dbconnect.php";
$var=mysqli_query($conn,"select * from faculty ");


$fac_name=$_POST["t1"];
$Query2="select count(*) from faculty where fac_name='$fac_name'";
$Execute = mysqli_query($conn,$Query2);
$count = mysqli_fetch_row($Execute);
if($count[0]==1)
{
    $sql = "DELETE FROM faculty WHERE fac_name='$fac_name'";
    if ($conn->query($sql) == TRUE) {
        echo "<script>alert('Data Deleted Successfully');window.location.href = 'http://localhost/textbook_portal/Admin/Dashboard/fac.php';</script>";

    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
    
}
else{
    echo "<script>alert('Data not found');window.location.href = 'http://localhost/textbook_portal/Admin/Dashboard/fac.php';</script>";
}


mysqli_close($conn);
?>
 <form>
       <button type="submit" style="height: 50px;width: 150px;cursor:pointer;border-radius:15px;
border: 3px solid  grey;background-color: grey;color:grey;font-size:15px;" formaction="delete.php">back</button>
</form> 
</body>
</html>