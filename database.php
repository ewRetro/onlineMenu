<?php
// dbase connection 

$host 		= "localhost";
$username	= "root";
$password	= "";
$database	= "bar";

if(!$con = mysqli_connect($host, $username, $password, $database)){
	echo($mysqli_error($con));
} else {
	//echo ("<p>Database Connected</p>");
}

?>