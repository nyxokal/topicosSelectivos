<?php
	session_start();
	include '../includes/dbconnector.php';

	$bookieID = $_POST['bookToAdd'];
	echo $_SESSION['userOrder'];

	$userQuery = "SELECT * FROM books WHERE bookID='$bookieID'";
	$result = mysqli_query($conn, $userQuery);
	if(!$row = mysqli_fetch_assoc($result)){
		echo "not found" + $userQuery + $bookieID;
		#exit();
	}
	if($row){
		$bookID = $row['bookID'];
		if($_SESSION['userOrder'] != "Empty"){
			$booksToAdd = array($bookID, $booksToAdd);
			$_SESSION['userOrder'] = $booksToAdd;
			echo $_SESSION['userOrder'];
		}
		if($_SESSION['userOrder'] == "Empty"){
			$_SESSION['userOrder'] = $bookID;
			echo $_SESSION['userOrder'];
		}
	}
	#header("Location: ../genreList.php?a=");	
?> 