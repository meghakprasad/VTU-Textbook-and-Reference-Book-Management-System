<?php
include "../../dbconnect.php";
session_start();
$sessname=$_SESSION["susn"];

$sql = "SELECT * FROM student where stu_id='$sessname' ";

$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
  // output data of each row
  while($row = mysqli_fetch_assoc($result)) {
    
  ?>
   <html>
    <head>
       <meta charset="UTF=8" />
        <title>Dashboard</title>
        <link rel="icon" type="image/x-icon" href="../../images/dash2.png">
        <link rel="stylesheet" href="sstyle.css" />
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
                    <li><a href="sdash.php">
                    <i class="fas fa-home"></i>
                    <span class="nav-item">Home</span>
                    </a></li>
                    <li><a href="profile.php">
                    <i class="fas fa-user"></i>
                    <span class="nav-item">Profile</span>
                    </a></li>
                    <li><a href="Donate/forms.php">
                    <i class="fas fa-donate"></i>
                    <span class="nav-item">Donate</span>
                    </a></li>
                    <li><a href="Comment/comment.php">
                    <i class="fas fa-comments"></i>
                    <span class="nav-item">Comments</span>
                    </a></li>
                    <li><a href="books.php">
                    <i class="fas fa-book"></i>
                    <span class="nav-item">Books Available</span>
                    </a></li>
                    <li><a href="../login/logout.php" class="logout">
                    <i class="fas fa-sign-out-alt"></i>
                    <span class="nav-item">Logout</span>
                    </a></li>
                </ul>
            </nav>
            <section class="main">
            <div class="main-top">
                
            </div>
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


</style>
<body>
  <div class="form-wrappers">
  <h1 style="color:white;">Edit Profile</h1>
                <br><form method="post">
    <label for="fname" style="color:white;">USN<hr></label>
    <input type="text" id="usn" name="usn" value='<?php echo $row["stu_id"];?>' placeholder="">
<br>
    <label for="lname" style="color:white;">Student Name<hr></label>
    <input type="text" id="name" name="name" value='<?php echo $row["stu_name"];?>' placeholder="">
    <br>
    <label for="lname" style="color:white;">Phone<hr></label>
    <input type="text" id="phone" name="phone" value='<?php echo $row['stu_phone'];?>' placeholder="">
    <br>
    <label for="lname" style="color:white;">Department<hr></label>
    <input type="text" id="dept" name="dept" value='<?php echo $row['stu_dept'];?>' placeholder="">
    <br>
    <label for="lname" style="color:white;">Sem<hr></label>
    <input type="text" id="sem" name="sem" value='<?php echo $row["stu_sem"];?>'placeholder="">
<br>
<label for="lname" style="color:white;">Email Id<hr></label>
    <input type="text" id="email" name="email" value='<?php echo $row['stu_email'];?>' placeholder="">
    <br>
    <input  style="width:80px;height:44px;cursor:pointer;border-radius:15px;
border: 3px   black;background-color: red;font-size:10px;"type="submit" name="Submit" value="Submit"></form>

<?php
if(isset($_POST['Submit'])){
 $usn=$_POST['usn'];
 $name=$_POST['name'];
 $dept=$_POST['dept'];
 $email=$_POST['email'];
 $sem=$_POST['sem'];
 $phone=$_POST['phone'];

$sql = "UPDATE student SET stu_id='$usn',stu_name='$name',stu_phone='$phone',stu_dept='$dept',stu_sem='$sem',stu_email='$email' WHERE stu_id='$usn'";

if (mysqli_query($conn, $sql)) {
  echo "Profile updated successfully";
} else {
  echo "Error updating profile: " . mysqli_error($conn);
}
}
?>
    </select>
  <br>
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