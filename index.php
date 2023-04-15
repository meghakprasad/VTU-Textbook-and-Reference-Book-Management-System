<?php
    include 'dbconnect.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TEXTBOOKIFY</title>
    <link rel="icon" type="image/x-icon" href="images/icon.png">

    <!-- google fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;200;300;400;500&display=swap" rel="stylesheet">
    <!-- Font-awesome -->
    <script src="https://kit.fontawesome.com/d8cfbe84b9.js" crossorigin="anonymous"></script>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <!-- CSS -->
    <?php 
        require 'styles.php'
    ?>
</head>
<body>
 
    
    <header>
        <nav>
            <div>
                    <a href="#" class="nav-item nav-logo">TEXTBOOKIFY</a>
                    <!-- <a href="#" class="nav-item">Gallery</a> -->
            </div>
                
            <ul>
                <li><a href="#" class="nav-item">Home</a></li>
                <li><a href="#about" class="nav-item">About</a></li>
                <li><a href="#contact" class="nav-item">Contact</a></li>
                <li><a href="Admin/adlogin/login.php" class="nav-item">Admin Login</a></li>
                <li><a href="Student/login/login.php" class="nav-item">Student Login</a></li>
                <li><a href="Faculty/faclogin/login.php" class="nav-item">Faculty Login</a></li>
            
        </nav>
    </header>
    <!-- Login Modal -->
    <?php 
        
        $sql = "SELECT * from student";

        if ($result = mysqli_query($conn, $sql)) {
        
            // Return the number of rows in result set
            $rowcount5 = mysqli_num_rows($result);
        }
        $sql1 = "SELECT * from faculty";

    if ($result1 = mysqli_query($conn, $sql1)) {

        // Return the number of rows in result set
        $rowcount1 = mysqli_num_rows($result1);
    }
    $sql2 = "SELECT * from donating";
  
    if ($result2 = mysqli_query($conn, $sql2)) {
    
    // Return the number of rows in result set
    $rowcount2 = mysqli_num_rows( $result2 );
    }
    $sql3 = "SELECT * from request";

    if ($result3 = mysqli_query($conn, $sql3)) {

        // Return the number of rows in result set
        $rowcount3 = mysqli_num_rows($result3);
    }
        
        
    ?>
    
  
    <section id="home">
        <br>
        <br>
        <br>
        <div id="route-search-form">
           
            <h1>VTU Textbook and Reference Textbook Management System</h1>

            <br>
        
        </div>
    </section>
    <div id="block">
        <section id="info-num">
            <figure>
            <br>
                <img src="https://media.istockphoto.com/id/1268716253/vector/freshman-black-glyph-icon.jpg?s=612x612&w=0&k=20&c=_0e-sfr9RfJnNRyif6bVMLqc1rR3tBx5lVIjKfUPH2k="  width="100px" height="100px">
                <figcaption>
                    <br>
                    <span class="num counter" data-target="<?php echo $rowcount5 ?>"><?php echo $rowcount5 ?></span>
                    <span class="icon-name">No. of Students</span>
                </figcaption>
            </figure>
            <figure>
              
                <img src=" https://png.pngtree.com/png-vector/20191119/ourmid/pngtree-teacher-vector-illustration-with-black-and-white-design-teacher-icon-png-image_1996068.jpg"  width="150px" height="150px">
                <figcaption>
                    
                    <span class="num counter" data-target="<?php echo $rowcount1 ?>"><?php echo $rowcount1 ?></span>
                    <span class="icon-name">No. of Faculties</span>
                </figcaption>
            </figure>
            <figure>
                <br>
                <img src="https://cdn-icons-png.flaticon.com/512/29/29302.png"  width="100px" height="100px">
                <figcaption>
                    <br>
                    <span class="num counter" data-target="<?php echo $rowcount2 ?>"><?php echo $rowcount2 ?></span>
                    <span class="icon-name">Books Available</span>
                </figcaption>
            </figure>
            <figure>
                <br>
                <img src="https://media.istockphoto.com/id/1269455595/vector/fast-contract-or-instant-deal-silhouette-icon.jpg?s=612x612&w=0&k=20&c=iWWzNrO_PqyQu6P1mHIOoHXChNTqHsU5N1WVslOtNY4="  width="100px" height="100px">
                <figcaption>
                    <br>
                    <span class="num counter" data-target="<?php echo $rowcount3 ?>"><?php echo $rowcount3 ?></span>
                    <span class="icon-name">No. of Requests</span>
                </figcaption>
            </figure>
           
        </section>
        
        <section id="about">
            <div>
                <h1 style="color:white;">About Us</h1>
                <h4 style="color:white;">Wanna know were it all started?</h4>
                <p style="color:white;">
                The purpose of VTU Textbook and Reference Book Management System is to automate the existing manual system by the help of computerized equipment’s and full-edged computer software, fulfilling the requirements, so that their valuable data/information can be stored for a longer period with easy accessing and manipulation of the same. The required software and hardware are easily available and easy to work with. VTU Textbook and Reference Book Management System, as described can lead to error free secure, reliable and fast management system. Thus, it will help organization in better utilization of resources. The organization can maintain computerized records without redundant entries. That means that one need not be distracted by information that is not relevant, while being able to reach the information.
                </p>
            </div>
            <div class="row">
  <div class="column">
    <img src="https://img.freepik.com/premium-vector/group-young-girls-boys-students-holding-books_181870-5.jpg?w=2000"  style="width:200%">
  </div>
        </section>
      
	  
    <section id="contact" class="section-bg wow fadeInUp">
      <div class="container">

        <div class="a">
          <h1>Contact Us</h1>
          <p> For Any kind of information or any type of help you need, Then Contact Us Bellow.</p>
        </div>

        <div class="row contact-info">

          <div class="col-md-6">
            <div class="contact-phone">
            <i class="fa fa-phone" aria-hidden="true"></i>
              <h3>Phone Number :</h3>
              
              <p><a href="tel:+91 7019426569">+91 8951273254</a></p>
			    <p><a href="tel:+91 7019426569">+91 7048720569</a></p>
              <p><a href="tel:+91 9739187385">+91 9774187035</a></p>
             </div>
          </div>

          <div class="col-md-6">
            <div class="contact-email">
            <i class="fa fa-envelope" aria-hidden="true"></i>
              <h3>Email ID :</h3>
              <p><a href="https://www.gmail.com">punyak1209@gmail.com</a></p>
			  <p><a href="https://www.gmail.com">meghakprasad31@gmail.com</a></p>
              <p><a href="https://www.gmail.com">jbchetana@gmail.com </a></p>
            </div>
          </div>

        </div>
      </div>
    </section>
    
    </div>
    
  
     <!-- Option 1: Bootstrap Bundle with Popper -->
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
    <!-- External JS -->
    <script src="assets/scripts/main.js"></script>
</body>
</html>