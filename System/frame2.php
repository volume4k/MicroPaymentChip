<?php

$servername="localhost";
$username="referencebot";
$password="Banane66";
$database="MPC";

//Create new connection
$conn = new mysqli($servername, $username, $password);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully";
?>
<br/>
<?php



$reference=rand(-1000000000000000,-99999999999999999999999999999999);
echo $reference;
$hashedref=md5($reference);
echo $hashedref;


?>
