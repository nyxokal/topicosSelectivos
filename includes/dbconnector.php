<?php
	$conn = mysqli_connect("localhost", "root", "", "bookstoredb");

	if(!$conn) { 
	  $output = 'Unable to connect to the database server.';
	  include 'output.html.php'; 
	  exit();
	}
	if(!mysqli_set_charset($conn, 'utf8')){ 
	  $output = 'Unable to set database connection encoding.'; 
	  include 'output.html.php'; 
	  exit(); 
	} 
	if(!mysqli_select_db($conn, 'bookstoredb')){
	  $output = 'Unable to locate database.'; 
	  //include 'output.html.php'; 
	  exit();
	}
