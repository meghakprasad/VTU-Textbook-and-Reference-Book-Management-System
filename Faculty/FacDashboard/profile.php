<?php
include "../../dbconnect.php";
session_start();
$sessname=$_SESSION["fid"];

$sql = "SELECT * FROM faculty where fac_id='$sessname' ";

$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
  // output data of each row
  while($row = mysqli_fetch_assoc($result)) {
    
  ?>
   <html>
    <head>
       <meta charset="UTF=8" />
        <title>Dashboard</title>
        <link rel="icon" type="image/x-icon" href="../../images/dash1.png">
        <link rel="stylesheet" href="fstyle.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"/>
    </head>
 
    <body>
        <div class="container">
            <nav>
                <ul>
                <li><a href="#" class="logo">
                    <img src="../../images/icon.png" alt="TextBookify">
                    <span class="nav-item">TextBookify</span>
                    </a></li>
                    <br>
                    <li><a href="fdash.php">
                    <i class="fas fa-home"></i>
                    <span class="nav-item">Home</span>
                    </a></li>
                    <li><a href="profile.php">
                    <i class="fas fa-user"></i>
                    <span class="nav-item">Profile</span>
                    </a></li>
                    <li><a href="../faclogin/logout.php" class="logout">
                    <i class="fas fa-sign-out-alt"></i>
                    <span class="nav-item">Logout</span>
                    </a></li>
                </ul>
            </nav>
            <section class="main">
            <div class="main-top">
                <h1>Profile</h1>
                <br>
            </div>
            <!DOCTYPE html>
<html>
<style>
input[type=text], select {
  width: 50%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 10%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.button {
        background-color: #b8520f;
        border: none;
        color: white;
        padding: 10px 10px;
        text-align: center;
        text-decoration: none;
        display:block;
        font-size: 10px;
        margin: 10px;
        cursor: pointer;
        justify-content: center;
        align-items: center;
        position:sticky;
      }
</style>
<body>


<div>
  <form action="" method="post">
    <label for="fname">Faculty Name<hr></label>
    <input type="text" id="name" name="name" value='<?php echo $row["fac_name"];?>' placeholder="">
<br>
<label for="fname">Faculty Id<hr></label>
    <input type="text" id="id" name="id" value='<?php echo $row["fac_id"];?>' placeholder="">
<br>
    <label for="lname">Email Id<hr></label>
    <input type="text" id="email" name="email" value='<?php echo $row["fac_email"];?>' placeholder="">
    <br>
    <label for="lname">Phone<hr></label>
    <input type="text" id="phone" name="phone" value='<?php echo $row['fac_phone'];?>' placeholder="">
    <br>
    <label for="lname">Department<hr></label>
    <input type="text" id="dept" name="dept" value='<?php echo $row["fac_dept"];?>'placeholder="">
    <br>
    <input  style="width:80px;height:44px;cursor:pointer;border-radius:15px;
border: 3px   black;background-color: red;font-size:10px;"type="Submit" name="Submit" value="Submit"></form>

<?php
if(isset($_POST['Submit'])){
 $fid=$_POST['id'];
 $name=$_POST['name'];
 $dept=$_POST['dept'];
 $email=$_POST['email'];
 $phone=$_POST['phone'];

$sql = "UPDATE faculty SET fac_id='$fid',fac_name='$name',fac_phone='$phone',fac_dept='$dept',fac_email='$email' WHERE fac_id='$fid'";

if (mysqli_query($conn, $sql)) {
  echo "Profile updated successfully";
} else {
  echo "Error updating profile: " . mysqli_error($conn);
}
}
?>
    </select>

  <!--<a href="editprofile.php" class="button">Edit</a><br>-->
  </form>
</div>

</body>
</html>



	</div>
            <br> 
        </section>  
        </div>
    </body>
</html>

<?php
}
} else {
  echo "0 results";
}

mysqli_close($conn);
?>