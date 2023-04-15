<?php
session_start();
?>

<?php
// remove all session variables
session_unset();

// destroy the session
session_destroy();

echo "<script>alert('Logout sucessfull');
  window.location.href = 'http://localhost/textbook_portal/';</script>";
?>
