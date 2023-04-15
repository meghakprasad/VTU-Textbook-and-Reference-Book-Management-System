<?php
include("developers.php");
?>
<!DOCTYPE html>
<html>
<head>
  
  <style>
    body{
    margin:0;
    padding: 0;    
    background-image:url('https://www.thebookbuyer.co.uk/wp-content/uploads/2020/03/shutterstock_621157613-The-Book-Buyer.jpg');
    background-repeat: no-repeat;
   background-size: cover;
   font-family: Georgia, 'Times New Roman', Times, serif;
   color: rgb(77, 74, 74);
   
}
#textbook {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 65%;
}

#textbook td, #textbook th {
  border: 2px solid #ddd;
  padding: 15px;
}



#textbook tr:hover {background-color: #ddd;}

#textbook th {
  padding-top: 20px;
  padding-bottom: 15px;
  text-align: left;
  background-color: #04AA6D;
  color: white;
}
    </style>
</head>
<body>
<div class="container">
 <div class="row">
   <div class="col-sm-8">
    <?php echo $deleteMsg??''; ?>
    <div>
        <br>
        <br>
       <h1>Books Available For Borrow : </h1>
       <br>
</div>

    <div class="table-responsive">
      <table class="table table-bordered">
      <table id="textbook">
       <thead><tr>

         <th>Full Name</th>
         <th>Email</th>
         <th>Mobile Number</th>
         <th>Book Type</th>
         <th>Semester</th>
    </thead>
    <tbody>
  <?php
      if(is_array($fetchData)){      
      $sn=1;
      foreach($fetchData as $data){
    ?>
      <tr>
      <td><?php echo $data['name']??''; ?></td>
      <td><?php echo $data['email']??''; ?></td>
      <td><?php echo $data['phnumber']??''; ?></td>
      <td><?php echo $data['type']??''; ?></td>
      <td><?php echo $data['semester']??''; ?></td>
     </tr>
     <?php
      $sn++;}}else{ ?>
      <tr>
        <td colspan="8">
    <?php echo $fetchData; ?>
  </td>
    <tr>
    <?php
    }?>
    </tbody>
     </table>
   </div>
</div>
</div>
</div>
</body>
</html>