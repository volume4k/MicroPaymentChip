<?php
session_start();
$servername="localhost";
$username="referencebot";
$password="Banane66";
$database="MPC";

//Create new connection
$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully";


?>
<br/>

<?php



$reference=rand(-1000000000000000,-99999999999999999999999999999999);
$hashedref=md5($reference);
echo $hashedref;
$_SESSION['hash']="$hashedref";
?>
<br/>
<?php
$sql = "INSERT INTO reference_number (id, referencenumber) VALUES ('', '$hashedref')";
if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
    $successfully="1";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
    $successfully="0";
}

?>
<script>setTimeout(function(){window.location.href='thankyou.php'},5000);</script>
<?php

?>
