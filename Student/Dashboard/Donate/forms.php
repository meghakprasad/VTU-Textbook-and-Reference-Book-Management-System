<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Book Donation Form</title>
  <link rel="icon" type="image/x-icon" href="../../../images/book.png">
  <link rel="stylesheet" href="style.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"/>
</head>
<body>
<div class="container">
<nav style="height:100vh;">
                <ul>
                <li><a href="#" class="logo">
                    <img src="../../../images/icon.png" alt="TextBookify">
                    <span class="nav-item">TextBookify</span>
                    </a></li>
                    <br>
                    <li><a href="../sdash.php">
                    <i class="fas fa-home"></i>
                    <span class="nav-item">Home</span>
                    </a></li>
                    <li><a href="../profile.php">
                    <i class="fas fa-user"></i>
                    <span class="nav-item">Profile</span>
                    </a></li>
                    <li><a href="forms.php">
                    <i class="fas fa-donate"></i>
                    <span class="nav-item">Donate</span>
                    </a></li>
                    <li><a href="../Comment/comment.php">
                    <i class="fas fa-comments"></i>
                    <span class="nav-item">Comments</span>
                    </a></li>
                    <li><a href="../books.php">
                    <i class="fas fa-book"></i>
                    <span class="nav-item">Books Available</span>
                    </a></li>
                    <li><a href="../../login/logout.php" class="logout">
                    <i class="fas fa-sign-out-alt"></i>
                    <span class="nav-item">Logout</span>
                    </a></li>
                </ul>
            </nav>        
        <div class="form-wrapper">
        <h1 id="title"> Book Donation Form</h1>
            <!--<p id="description"><b></p>-->
                <form action="insert.php" method="post">
                <div class="name">
                    <label for="name">Student Name</label>
                    <br>
                    
                    <input type="text" name="name" class="input-styling" id="uname" placeholder="Enter your name....." required> 
                </div>
                <br>
                <div class="email">
                    <label for="email">Email address</label>
                    <br>
                    <input type="text" name="email" class="input-styling" id="uemail" placeholder="Enter your email address....." required>
                </div>
                <br>
                <div class="phnumber">
                    <label for="phnumber">Phone number</label>
                    <br>        
                    
                    <input type="number"  name="phnumber" class="input-styling" id="uphnumber" placeholder="Enter your phone number....."  required>
                </div>
                <br>
                <div class="type">
                    <label for="type">Enter Book Type</label>
                    <br>   
                    <input type="text"  name="type" class="input-styling" id="utype" placeholder="Enter book type(Xerox, textbook, handwritten notes....)"  required>
                </div>
                <br>
                <div class="semester">
                    <label for="semester">Enter Your Semester</label>
                    <br>     
                    <input type="semester"  name="semester" class="input-styling" id="usemester" placeholder="Enter your semester....."  required>
                </div>
                <br>
                <div class="subject">
                    <label for="subject">Enter subject of book you're donating</label>
                    <br>     
                   
                    <input type="subject"  name="subject" class="input-styling" id="usubject" placeholder="Enter subject of book you wish to donate(enter only one subject each time)... "  required>
                </div>
                <br>
                <div class="submit">
                    <button type="submit" id="submit">Submit</button>
                </div>
                
            </form>
        </div>
</div>
</body>
</html>
