<?php
session_start();
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
                    <h1 style="color:white;">Student DashBoard</h1>
                </div>
                <div class="main-skills">
                <div class="card">
                   <form action="https://geethashishu.in/" target="_blank">
                   <i class="fa-solid fa-graduation-cap"></i>
                       <h3>College Website</h3>
                       <p>Vist your college Website</p>
                       <button>Go</button>
                       </form>
                       </div>
                   <div class="card">
                   <form action="resource.php">
                   <i class="fa-regular fa-folder-open"></i>
                       <h3>Resources</h3>
                       <p> Get online resources for notes & QP </p>
                       <button>View</button>
                       </form>
                       </div>

                       <div class="card">
                       <form action="https://vtu.ac.in/" target="_blank">
                    <i class="fas fa-globe"></i>
                       <h3>VTU Website</h3>
                       <p>View the official VTU Website</p>
                       <button>Go now</button>
                       </form>
                       </div>
                       <div class="card">
                       <form action="search/search.php">
                    <i class="fas fa-search"></i>
                       <h3>Search</h3>
                       <p>Search for Books by Sub-code</p>
                       <button>Search</button>
                       </form>
                       </div>

                       <div class="card">
                       <form action="mysub.php">
                    <i class="fas fa-book"></i>
                       <h3>My Subjects</h3>
                       <p>View your semester subjects</p>
                       <button>View</button>
                       </form>
                       </div>
                </div>
            </section>
        </div>
    </body>
</html>