<?php
$con=mysqli_connect("mysql-bloggin","root","password","blog_admin_db");
// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
 ?>
