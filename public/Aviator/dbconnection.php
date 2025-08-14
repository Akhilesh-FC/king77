<?php

$servername = "localhost";
$username = "u609116592_king77";
$password = "u609116592_King77";
$dbname = "u609116592_king77";

// Create connection  
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>

