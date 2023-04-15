<?php
session_start();
?>
   <html>
    <head>
       <meta charset="UTF=8" />
       <title>Comments</title>
  <link rel="icon" type="image/x-icon" href="../../../images/comments.png">
        <link rel="stylesheet" href="scstyle.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"/>
    </head>
 
    <body>
        <div class="container">
            <nav>
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
                    <li><a href="../Donate/forms.php">
                    <i class="fas fa-donate"></i>
                    <span class="nav-item">Donate</span>
                    </a></li>
                    <li><a href="comment.php">
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
            <section class="main">
                <div class="main-top">
                    <h1 style="color:white;"><b>Comments</b></h1>
                </div><div class="form-wrapper">
<?php
    include "../../../dbconnect.php";

    // make sure you have a post ID 1 in your "posts table"
    $post_id = 1;

    if (isset($_POST["post_comment"]))
    {
        $name = mysqli_real_escape_string($conn, $_POST["name"]);
        $email = mysqli_real_escape_string($conn, $_POST["email"]);
        $comment = mysqli_real_escape_string($conn, $_POST["comment"]);
        $post_id = mysqli_real_escape_string($conn, $_POST["post_id"]);
        $reply_of = 0;

        mysqli_query($conn, "INSERT INTO comments(name, email, comment, post_id, created_at, reply_of) VALUES ('" . $name . "', '" . $email . "', '" . $comment . "', '" . $post_id . "', NOW(), '" . $reply_of . "')");
        echo "<p>Comment has been posted.</p>";
    }

    if (isset($_POST["do_reply"]))
    {
        $name = mysqli_real_escape_string($conn, $_POST["name"]);
        $email = mysqli_real_escape_string($conn, $_POST["email"]);
        $comment = mysqli_real_escape_string($conn, $_POST["comment"]);
        $post_id = mysqli_real_escape_string($conn, $_POST["post_id"]);
        $reply_of = mysqli_real_escape_string($conn, $_POST["reply_of"]);

        $result = mysqli_query($conn, "SELECT * FROM comments WHERE id = " . $reply_of);
        if (mysqli_num_rows($result) > 0)
        {
            $row = mysqli_fetch_object($result);

            // sending email
            $headers = 'From: YourWebsite <no-reply@yourwebsite.com>' . "\r\n";
            $headers .= 'MIME-Version: 1.0' . "\r\n";
            $headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
            
            $subject = "Reply on your comment";

            $body = "<h1>Reply from:</h1>";
            $body .= "<p>Name: " . $name . "</p>";
            $body .= "<p>Email: " . $email . "</p>";
            $body .= "<p>Reply: " . $comment . "</p>";

            mail($row->email, $subject, $body, $headers);
        }

        mysqli_query($conn, "INSERT INTO comments(name, email, comment, post_id, created_at, reply_of) VALUES ('" . $name . "', '" . $email . "', '" . $comment . "', '" . $post_id . "', NOW(), '" . $reply_of . "')");
        echo "<p>Reply has been posted.</p>";
    }

    // get all comments of post
    $result = mysqli_query($conn, "SELECT * FROM comments WHERE post_id = " . $post_id);

    // save all records from database in an array
    $comments = array();
    while ($row = mysqli_fetch_object($result))
    {
        array_push($comments, $row);
    }

    // loop through each comment
    foreach ($comments as $comment_key => $comment)
    {
        // initialize replies array for each comment
        $replies = array();

        // check if it is a comment to post, not a reply to comment
        if ($comment->reply_of == 0)
        {
            // loop through all comments again
            foreach ($comments as $reply_key => $reply)
            {
                // check if comment is a reply
                if ($reply->reply_of == $comment->id)
                {
                    // add in replies array
                    array_push($replies, $reply);

                    // remove from comments array
                    unset($comments[$reply_key]);
                }
            }
        }

        // assign replies to comments object
        $comment->replies = $replies;
    }
?>

<form action="comment.php" method="post">

    <input type="hidden" name="post_id" value="<?php echo $post_id; ?>" required>

    <p>
        <label>Your name :</label><br>
        <input type="text" name="name" required>
    </p>

    <p>
        <label>Your email address :</label><br>
        <input type="email" name="email" required>
    </p>

    <p>
        <label>Comment :</label>
        <br><textarea name="comment" required></textarea>
    </p>

    <p>
        <input type="submit" value="Add Comment" name="post_comment" width="15" height="15" style="font-size:12px;">
    </p>
</form></div>
<br>
<br>
<div class="form-wrappers">
    
<ul class="comments">
    <div class="cwrap">
   
    <?php foreach ($comments as $comment): ?>
        <li style="list-style-type:none;">
            <p>
                <?php echo $comment->name; ?>
            </p>

            <p>
                <?php echo $comment->comment; ?>
            </p>

            <p>
                <?php echo date("F d, Y h:i a", strtotime($comment->created_at)); ?>
            </p>
     
            <ul class="comments reply">
            <div class="wrap">
                <?php foreach ($comment->replies as $reply): ?>
                    <li style="list-style-type:none;">
                        <p>
                            <?php echo $reply->name; ?>
                        </p>

                        <p>
                            <?php echo $reply->comment; ?>
                        </p>

                        <p>
                            <?php echo date("F d, Y h:i a", strtotime($reply->created_at)); ?>
                        </p>

                        <div onclick="showReplyForReplyForm(this);" data-name="<?php echo $reply->name; ?>" data-id="<?php echo $comment->id; ?>">
                        <div class="b"> Reply</div></div>
                    </li>
                <?php endforeach; ?></div>
            </ul>

            <div data-id="<?php echo $comment->id; ?>" onclick="showReplyForm(this);" class="b">Reply</div>

            <form action="comment.php" method="post" id="form-<?php echo $comment->id; ?>" style="display: none;">
                
                <input type="hidden" name="reply_of" value="<?php echo $comment->id; ?>" required>
                <input type="hidden" name="post_id" value="<?php echo $post_id; ?>" required>

                <p>
                    <label>Your name</label>
                    <input type="text" name="name" required>
                </p>


                <p>
                    <label>Comment</label>
                    <textarea name="comment" required></textarea>
                </p>

                <p>
                    <input type="submit" value="Reply" name="do_reply" class="b">
                </p>
            </form>
        </li>
    <?php endforeach; ?></div>
</ul>

<script>
function showReplyForm(self) {
    var commentId = self.getAttribute("data-id");
    if (document.getElementById("form-" + commentId).style.display == "") {
        document.getElementById("form-" + commentId).style.display = "none";
    } else {
        document.getElementById("form-" + commentId).style.display = "";
    }
}

function showReplyForReplyForm(self) {
    var commentId = self.getAttribute("data-id");
    var name = self.getAttribute("data-name");

    if (document.getElementById("form-" + commentId).style.display == "") {
        document.getElementById("form-" + commentId).style.display = "none";
    } else {
        document.getElementById("form-" + commentId).style.display = "";
    }

    document.querySelector("#form-" + commentId + " textarea[name=comment]").value = "@" + name;
    document.getElementById("form-" + commentId).scrollIntoView();
}

</script>
</div>
            </section>
        </div>
    </body>
</html>