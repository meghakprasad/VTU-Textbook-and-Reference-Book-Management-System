<?php
   
    include 'dbconnect.php';
    $sql = "SELECT * from student";

if ($result = mysqli_query($conn, $sql)) {

    // Return the number of rows in result set
    $rowcount5 = mysqli_num_rows($result);
}
   

    // Customer JSON
    $ctSql = "Select * from faculty";
    $resultctSql = mysqli_query($conn, $ctSql);
    $arr = array();
    if(mysqli_num_rows($resultctSql))
        while($row = mysqli_fetch_assoc($resultctSql))
            $arr[] = $row;
    $facultyJson = json_encode($arr);
    
    // Seats JSON
    $stSql = "Select * from donating";
    $resultstSql = mysqli_query($conn, $stSql);
    $arr = array();
    if(mysqli_num_rows($resultstSql))
        while($row = mysqli_fetch_assoc($resultstSql))
            $arr[] = $row;
    $booksJson = json_encode($arr);

    // Bus JSON
    $busSql = "Select * from request";
    $resultBusSql = mysqli_query($conn, $busSql);
    $arr = array();
    while($row = mysqli_fetch_assoc($resultBusSql))
        $arr[] = $row;
    $requestsJson = json_encode($arr);

       
   


?>