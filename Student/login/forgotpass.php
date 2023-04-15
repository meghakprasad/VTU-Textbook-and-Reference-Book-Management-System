<?php
session_start();
?>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Login</title>
  <link rel="stylesheet" href="lstyle.css">
  <link rel="icon" type="image/x-icon" href="../../images/licon.png">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
<style>
  .container{
    background:url('https://images.unsplash.com/photo-1557683316-973673baf926?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Z3JhZGllbnQlMjBibHVlfGVufDB8fDB8fA%3D%3D&w=1000&q=80');
  }
  </style>
  </head>
  <body>
    <div class="container" background-image="../../images/m1.jfif">
      
        <div class="signin">
        <form action="" method="post" class="form-sign-in">
            <h1>Forgot Password</h1><br>
            <input type="text" name="email" placeholder="email" required=""/><br>
            <input type="password"  name="phone" placeholder="Phone number" required=""/>
            <button class="btn btn-form" name="Submit">Submit</button>
          

<?php
include "../../dbconnect.php";
if(isset($_POST['Submit'])){
$email = $_POST['email'];
$phone= $_POST['phone'];


$sql = "SELECT stu_email,stu_phone,password FROM student WHERE stu_email = '$email' and stu_phone = $phone ";
$result = mysqli_query($conn,$sql);

    if (mysqli_num_rows($result) > 0)
     {
            while($row = mysqli_fetch_assoc($result)) 
            {
            echo "Email: " . $row["stu_email"]. "<br>". "Password: " . $row["password"] . "<br>";
            }       
        }
   
    else {
    echo "0 results";
    }

    mysqli_close($conn);
  }
?>


          </form>
        </div>

      </div>
    </div>
  </body>

</html>

</body>
</html>
