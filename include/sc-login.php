<?php
/*$servername = "localhost";
$username = "root";
$password = "root";
$database = "administrator"; */
$servername = "ap-cdbr-azure-southeast-a.cloudapp.net";
$username = "ba9b4578dda412";
$password = "94bd58cb";
$database = "back_db";
// Create connection
$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
//echo "Connected successfully";
?> 
