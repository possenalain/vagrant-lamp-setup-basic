<?php
$dbuser='root';
$dbpass='root';
$database="test";

?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Vagrant lamp stack basic setup</title>
</head>
<body>
<h1>Vagrant LAMP  </h1>

<?php

try{

  $conn=new PDO("mysql :host=localhost;dbname=$database",$dbuser,$dbpass);

  echo "<h2>POSTS</h2>";
  

}catch(PDOException $e){
  print "error". $e->getMessage(); "</br> ";
  // die();

}
?>

<?php
phpinfo();
?>
</body>
</html>

